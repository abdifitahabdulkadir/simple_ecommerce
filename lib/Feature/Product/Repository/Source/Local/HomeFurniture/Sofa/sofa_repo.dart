import 'package:simple_ecommerce/Models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../../Cores/DummyData/colors_data.dart';
import '../../../../../../../Cores/DummyData/review_data.dart';
import '../../../../../../../Models/home_furniture.dart';

import '../homefurniture_rep.dart';

// creating the provider for sofa repository
final sofaProvider = Provider<SofaRepository>((ref) => SofaRepository());

class SofaRepository implements HomeFurnitureRepository {
  @override
  List<ProductModel> getProductDetials() {
    // dummy data . in the future could be from database.
    List<SofaModel> sofaData = [
      SofaModel(
        id: "18b24579-8fcb-403a-9b43-13f890f62ef5",
        name: "Luxurios SOFA",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 3.0,
        price: 400,
        isFavored: true,
        imageUrl: "assets/products/homefurniture/sofa/sofa1.png",
        category: ProductCategory.homefurniture,
        review: reviews,
      ),
      SofaModel(
        id: "ebf91ec1-7aee-48e2-8787-7b36755043ac",
        name: "Guest Sofa For Luxiors",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 4.0,
        price: 200,
        isFavored: true,
        imageUrl: "assets/products/homefurniture/sofa/sofa2.png",
        category: ProductCategory.homefurniture,
        review: reviews,
      ),
      SofaModel(
        id: "2636fb70-abdd-4683-8282-6fb9d9a87279",
        name: "Guest Sofa High Officials",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 4.0,
        price: 300,
        isFavored: false,
        imageUrl: "assets/products/homefurniture/sofa/sofa3.png",
        category: ProductCategory.homefurniture,
        review: reviews,
      ),
      SofaModel(
        id: "8739884c-f338-4875-a591-aa35768a30d6",
        name: "Guest Sofa High Officials",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 4.3,
        price: 700,
        isFavored: true,
        imageUrl: "assets/products/homefurniture/sofa/sofa4.png",
        category: ProductCategory.homefurniture,
        review: reviews,
      ),
      SofaModel(
        id: "e5d38a76-8a42-4364-a2c2-c8c4f94de3b3",
        name: "Guest Sofa High Officials",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 2.3,
        price: 700,
        isFavored: false,
        imageUrl: "assets/products/homefurniture/sofa/sofa5.png",
        category: ProductCategory.homefurniture,
        review: reviews,
      ),
    ];
    return sofaData;
  }
}
