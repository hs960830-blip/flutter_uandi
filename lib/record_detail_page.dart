import 'package:flutter/material.dart';

class RecordDetailPage extends StatefulWidget {
  const RecordDetailPage({super.key});

  @override
  State<RecordDetailPage> createState() => _RecordDetailPageState();
}

class _RecordDetailPageState extends State<RecordDetailPage> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // 기본 뒤로가기 버튼 숨김
        title: const Text(
          '상세페이지',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // 제목 가운데 정렬
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // 이전 화면으로 돌아가기
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('검색 기능은 준비 중이에요 🔍')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('장바구니 화면으로 이동 예정 🛒')),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset('assets/lp_mermaid.jpeg', fit: BoxFit.cover),
              ),
            ),

            const SizedBox(height: 16),

            // 음반명
            const Text(
              '인어공주 OST',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // 아티스트
            const SizedBox(height: 4),
            Text('인어공주', style: TextStyle(color: Colors.grey[600])),

            // 가격
            const SizedBox(height: 8),
            const Text(
              '₩32,000',
              style: TextStyle(fontSize: 18, color: Colors.indigo),
            ),

            // 상세 설명
            const SizedBox(height: 12),
            const Text(
              '바다의 모험과 재즈 감성이 어우러진 OST 컬렉션입니다. '
              '따뜻한 현악과 리드미컬한 퍼커션이 매력 포인트예요.',
              style: TextStyle(height: 1.5),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: const [
              BoxShadow(
                blurRadius: 12,
                offset: Offset(0, -2),
                color: Color(0x14000000),
              ),
            ],
            border: const Border(top: BorderSide(color: Colors.black12)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 1) 수량 (- 1 +)  +  우측 가격
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () => setState(() {
                      if (_count > 1) _count--;
                    }),
                  ),
                  Text(
                    '$_count',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: () => setState(() => _count++),
                  ),
                  const Spacer(),
                  const Text(
                    '₩32,000',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // 2) 버튼 2개: 장바구니 / 바로 구매하기
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('장바구니에 추가됨 (x$_count)')),
                        );
                      },
                      child: const Text('장바구니'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('바로 구매하기 (x$_count)')),
                        );
                      },
                      child: const Text('바로 구매하기'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
