import 'package:flutter/material.dart';

class RecordCreate extends StatefulWidget {
  const RecordCreate({super.key});

  @override
  State<RecordCreate> createState() => _RecordCreateState();
}

class _RecordCreateState extends State<RecordCreate> {
  final TextEditingController _imageUrl = TextEditingController();
  final TextEditingController _title = TextEditingController(); // 음반명
  final TextEditingController _artist = TextEditingController(); // 아티스트
  final TextEditingController _stock = TextEditingController(); // 수량
  final TextEditingController _price = TextEditingController(); // 금액
  final TextEditingController _description = TextEditingController(); // 상세 설명

  @override
  void dispose() {
    _imageUrl.dispose();
    _title.dispose();
    _artist.dispose();
    _stock.dispose();
    _price.dispose();
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('음반 등록'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 0) 이미지 등록 박스
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    final ctrl = TextEditingController(text: _imageUrl.text);
                    return AlertDialog(
                      title: const Text('이미지 URL 입력'),
                      content: TextField(
                        controller: ctrl,
                        decoration: const InputDecoration(
                          hintText: 'https:// ...',
                        ),
                        onSubmitted: (_) =>
                            Navigator.pop(context, ctrl.text.trim()),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('취소'),
                        ),
                        FilledButton(
                          onPressed: () =>
                              Navigator.pop(context, ctrl.text.trim()),
                          child: const Text('확인'),
                        ),
                      ],
                    );
                  },
                ).then((url) {
                  if (url != null && url.isNotEmpty) {
                    setState(() => _imageUrl.text = url);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: _imageUrl.text.isEmpty
                      ? Container(
                          alignment: Alignment.center,
                          color: Colors.grey[300],
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.image_outlined, size: 40),
                              SizedBox(height: 8),
                              Text('이미지 등록 (탭)'),
                            ],
                          ),
                        )
                      : Image.network(
                          _imageUrl.text,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            alignment: Alignment.center,
                            color: Colors.grey[300],
                            child: const Text('이미지를 불러올 수 없습니다'),
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 🔹 1) 음반명
            const Text(
              '음반명',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _title,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '예: The Beatles - Abbey Road',
              ),
            ),
            const SizedBox(height: 16),

            // 🔹 2) 아티스트
            const Text(
              '아티스트',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _artist,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '예: The Beatles',
              ),
            ),
            const SizedBox(height: 16),

            // 🔹 3) 수량 & 금액 (한 줄)
            Row(
              children: [
                // 왼쪽: 수량
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '수량',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: _stock,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '예: 1',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                // 오른쪽: 금액
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '금액 (₩)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: _price,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '예: 20000',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // 🔹 4) 상세 설명
            const Text(
              '상세 설명',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _description,
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '예: 앨범 상태, 수록곡, 특별한 정보 등',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Row(
            children: [
              // 취소
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('취소'),
                ),
              ),
              const SizedBox(width: 12),
              // 등록하기
              Expanded(
                child: FilledButton.icon(
                  onPressed: () {
                    final title = _title.text.trim();
                    final artist = _artist.text.trim();
                    final stock = int.tryParse(_stock.text.trim()) ?? 0;
                    final price = int.tryParse(_price.text.trim()) ?? 0;
                    final desc = _description.text.trim();
                    final image = _imageUrl.text.trim();

                    // 🔹 입력값 검사 (비어있을 때 안내)
                    if (title.isEmpty || artist.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('음반명과 아티스트를 입력해주세요')),
                      );
                      return;
                    }

                    // ✅ 등록한 데이터를 Map 형태로 정리
                    final newRecord = {
                      'title': title,
                      'artist': artist,
                      'stock': stock,
                      'price': price,
                      'desc': desc,
                      'image': image,
                    };

                    // ✅ 등록 완료 메시지 + 데이터 반환
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('등록 완료! 🎉')));
                    Navigator.pop(context, newRecord); // <-- 🔹 여기!
                  },
                  icon: const Icon(Icons.check),
                  label: const Text('등록하기'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
