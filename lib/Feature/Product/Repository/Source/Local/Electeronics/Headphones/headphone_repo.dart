import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../Cores/DummyData/colors_data.dart';
import '../../../../../../../Cores/DummyData/review_data.dart';
import '../../../../../../../Models/electeronic_model.dart';
import '../../../../../../../Models/product_model.dart';
import '../electeronic_repo.dart';

// creating a provdier for HeadponeRepository to avoid creating
// object of this class and simply use this provider to expose the
// object of headphonerepository
final headponeProvider = Provider((ref) => HeadPhoneRepository());

class HeadPhoneRepository implements ElecteronicRepository {
  @override
  List<ProductModel> getProductDetials() {
    final List<HeadhponesModel> headponeData = [
      HeadhponesModel(
        id: "a66087ab-8de9-4f90-bb95-679eb07e7546",
        name: "Sumsung Earpods",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 2.4,
        price: 300,
        isFavored: true,
        imageUrl:
            "assets/products/electeronics/headphones/earphones/earpods1.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      HeadhponesModel(
        id: "1ec68075-d658-4b17-abdd-cd826028e770",
        name: "Sumsung 21G Model",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 5.0,
        price: 100,
        isFavored: false,
        imageUrl:
            "assets/products/electeronics/headphones/earphones/headphone1.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      HeadhponesModel(
        id: "ef2915d9-516c-4147-813f-9f668aab6ab2",
        name: "Venia Model",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 4.0,
        price: 300,
        isFavored: true,
        imageUrl:
            "assets/products/electeronics/headphones/earphones/headphone2.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      HeadhponesModel(
        id: "02b94a37-cf29-4f6e-a49c-ca40877f069d",
        name: "Vanila Earphone Model",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 3.0,
        price: 300,
        isFavored: true,
        imageUrl:
            "assets/products/electeronics/headphones/earphones/headphone3.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      HeadhponesModel(
        id: "1657ae75-acd0-4cd9-84ce-329b2ddd1d82",
        name: "WireLess Headset",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 2.4,
        price: 300,
        isFavored: false,
        imageUrl: "assets/products/electeronics/headphones/headset/hp1.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      HeadhponesModel(
        id: "895802d2-faa1-4385-b9cc-e09a1fa68b75",
        name: "Gaming Headset Wirelesss",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 5.0,
        price: 100,
        isFavored: false,
        imageUrl: "assets/products/electeronics/headphones/headset/hp2.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      HeadhponesModel(
        id: "b8f9c2fd-de81-4261-8749-d20c5031ed4c",
        name: "Sumsung Meeting Headset",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 4.0,
        price: 300,
        isFavored: false,
        imageUrl: "assets/products/electeronics/headphones/headset/hp3.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
      HeadhponesModel(
        id: "393b516c-7f2c-4745-84e5-d3ca71e57612",
        name: "Google Headset For podcasts",
        specification:
            "Introducing our latest collection of premium running shoes, designed to elevate your athletic performance and provide unmatched comfort. These shoes feature a lightweight and breathable mesh upper, promoting optimal airflow to keep your feet cool during intense workouts. The cushioned midsole with responsive technology ensures excellent shock absorption and energy return, enhancing your stride and reducing fatigue. The outsole is crafted from durable rubber with a strategic tread pattern, offering superior traction on various surfaces. With a sleek and modern design, these shoes not only deliver exceptional functionality but also make a stylish statement. Whether you're hitting the gym or pounding the pavement, our running shoes are your perfect companion for achieving peak performance in every step.",
        description:
            "Step into style and comfort with our latest sneakers. Crafted with a breathable knit upper for all-day freshness, these shoes offer a perfect blend of fashion and function. The lightweight design ensures effortless movement, while the cushioned insole provides unmatched comfort. A durable rubber outsole delivers reliable traction, making them ideal for various activities. Whether you're heading to the gym or strolling through the city, these sneakers are a versatile choice. Elevate your footwear game with this modern pair that effortlessly complements your active lifestyle.",
        color: productColors,
        ratingValue: 3.0,
        price: 300,
        isFavored: true,
        imageUrl: "assets/products/electeronics/headphones/headset/hp4.png",
        category: ProductCategory.electeronics,
        review: reviews,
      ),
    ];
    return headponeData;
  }
}
