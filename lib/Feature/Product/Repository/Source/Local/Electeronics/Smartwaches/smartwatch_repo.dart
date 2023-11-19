import '../../../../../../../Cores/DummyData/colors_data.dart';
import '../../../../../../../Cores/DummyData/review_data.dart';
import '../../../../../../../Models/electeronic_model.dart';
import '../../../../../../../Models/product_model.dart';
import '../electeronic_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// create a provider to expose the object of smartphonewatchrepo
final smartwatchProvider = Provider((ref) => SmartwatchRepostiory());

class SmartwatchRepostiory implements ElecteronicRepository {
  @override
  List<ProductModel> getProductDetials() {
    final List<SmartwatchesModel> smartwachData = [
      SmartwatchesModel(
        id: "f947ccb0-058e-4d3e-914f-43fd65e9649e",
        name: "Smart Watch for everyOne",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 2.4,
        price: 200,
        isFavored: false,
        imageUrl: "assets/products/electeronics/smarwatches/watch1.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      SmartwatchesModel(
        id: "95880ded-3782-4b3a-8e1a-98583ddabb78",
        name: "Calling Support smartWatch",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 5.0,
        price: 100,
        isFavored: true,
        imageUrl: "assets/products/electeronics/smarwatches/watch2.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      SmartwatchesModel(
        id: "1169b120-4601-47b7-addb-401a840a41d6",
        name: "Outo Detector for Smartness",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 4.0,
        price: 300,
        isFavored: true,
        imageUrl: "assets/products/electeronics/smarwatches/watch3.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      SmartwatchesModel(
        id: "5bd653b1-10e6-4720-b2de-a63034b0f57c",
        name: "Pluggable Support",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 3.0,
        price: 400,
        isFavored: true,
        imageUrl: "assets/products/electeronics/smarwatches/watch4.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      SmartwatchesModel(
        id: "cc364bd9-ac33-4d5a-b0a9-b507aa8cc908",
        name: "Laptop Attachable Support",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 4.1,
        price: 400,
        isFavored: true,
        imageUrl: "assets/products/electeronics/smarwatches/watch5.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
    ];
    return smartwachData;
  }
}
