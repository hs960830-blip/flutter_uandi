import 'package:flutter/material.dart';

class RecordCreate extends StatefulWidget {
  const RecordCreate({super.key});

  @override
  State<RecordCreate> createState() => _RecordCreateState();
}

class _RecordCreateState extends State<RecordCreate> {
  final TextEditingController _imageUrl = TextEditingController();

  @override
  void dispose() {
    _imageUrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('음반 등록'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
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
            const TextField(
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
            const TextField(
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
                    children: const [
                      Text(
                        '수량',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
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
                    children: const [
                      Text(
                        '금액 (₩)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
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
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '예: 앨범 상태, 수록곡, 특별한 정보 등',
              ),
            ),
            const SizedBox(height: 24),

            // 🔹 5) 등록 버튼
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('등록 완료! 🎉')),
                  );
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.check),
                label: const Text('등록하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
