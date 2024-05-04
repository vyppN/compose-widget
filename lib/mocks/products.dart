import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/models/Product.dart';
import 'package:widget_compose/network/http/http_service.dart';
import 'package:widget_compose/port/product.dart';

final List<ProductToDisplay> clothes =[
  ProductToDisplay(id: 'prod-01', category: 'cloth', imageUrl: 'https://images.unsplash.com/photo-1588099768531-a72d4a198538?q=80&w=3139&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'Nike Air Force 1', price: 399),
  ProductToDisplay(id: 'prod-02', category: 'cloth', imageUrl: 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?q=80&w=2400&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'Cool Cat T-Shirt', price: 199),
  ProductToDisplay(id: 'prod-03', category: 'cloth', imageUrl: 'https://images.unsplash.com/photo-1617019114583-affb34d1b3cd?q=80&w=3774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'Nice Dress', price: 299),
];

final List<ProductToDisplay> cars =[
  ProductToDisplay(id: 'car-01', category: 'car', imageUrl: 'https://images.unsplash.com/photo-1502877338535-766e1452684a?q=80&w=3872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'BMW M4', price: 69900),
  ProductToDisplay(id: 'car-02', category: 'car', imageUrl: 'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'Ford Mustang', price: 39990),
  ProductToDisplay(id: 'car-03', category: 'car', imageUrl: 'https://images.unsplash.com/photo-1493238792000-8113da705763?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', name: 'Audi R8', price: 129900),
];