import '../../../../../../../Cores/DummyData/colors_data.dart';
import '../../../../../../../Cores/DummyData/review_data.dart';
import '../../../../../../../Models/electeronic_model.dart';
import '../../../../../../../Models/product_model.dart';
import '../electeronic_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// creating provider for televedisonPrepository to expose it;s object
final televisionProvider = Provider((ref) => TelevsionRepository());

class TelevsionRepository implements ElecteronicRepository {
  @override
  List<ProductModel> getProductDetials() {
    List<TelevisionModel> televsionData = [
      TelevisionModel(
        id: "783b5ac4-514c-4cd7-b71d-531ec1e336f1",
        name: "Large Screen Support TV",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 3.0,
        price: 400,
        isFavored: true,
        imageUrl: "assets/products/electeronics/televesions/tvone.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      TelevisionModel(
        id: "2bebfa7a-7095-42ae-b3f1-3acf11d692e2",
        name: "TV for multiple Devices",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 3.0,
        price: 400,
        isFavored: true,
        imageUrl: "assets/products/electeronics/televesions/tvtwo.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
    ];
    return televsionData;
  }
}
