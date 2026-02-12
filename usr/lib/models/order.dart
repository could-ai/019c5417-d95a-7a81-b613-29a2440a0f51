class Order {
  final String id;
  final String customerName; // derived from phone usually
  final String last4Digits;
  final String locationName;
  final String timeAgo;
  final double distanceKm;
  final int estimatedMinutes;
  final bool isPriority;

  Order({
    required this.id,
    required this.customerName,
    required this.last4Digits,
    required this.locationName,
    required this.timeAgo,
    required this.distanceKm,
    required this.estimatedMinutes,
    this.isPriority = false,
  });
}

// Mock Data
List<Order> mockOrders = [
  Order(
    id: '1',
    customerName: 'زبون 4587',
    last4Digits: '4587',
    locationName: 'مسقط – الخوير',
    timeAgo: 'منذ 5 دقائق',
    distanceKm: 2.5,
    estimatedMinutes: 6,
    isPriority: true,
  ),
  Order(
    id: '2',
    customerName: 'زبون 9921',
    last4Digits: '9921',
    locationName: 'السيب - المعبيلة',
    timeAgo: 'منذ 15 دقيقة',
    distanceKm: 12.0,
    estimatedMinutes: 20,
  ),
  Order(
    id: '3',
    customerName: 'زبون 1102',
    last4Digits: '1102',
    locationName: 'بوشر',
    timeAgo: 'منذ 30 دقيقة',
    distanceKm: 5.5,
    estimatedMinutes: 12,
  ),
];
