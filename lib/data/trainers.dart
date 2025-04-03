import 'package:fibudx/models/trainer.dart';

const String baseUrl =
    "https://cloud.appwrite.io/v1/storage/buckets/67ed3956002d5e053c06/files/"; // Base URL for assets

List<Trainer> trainers = [
  Trainer(
    name: "Lee Khan",
    imageUrl:
        "${baseUrl}67ed3f84001f4de4f9df/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "New York, USA",
    bio: "An experienced fitness coach specializing in strength training and nutrition.",
    education: "Certified Personal Trainer (CPT), B.S. in Sports Science",
  ),
  Trainer(
    name: "Ben Carter",
    imageUrl:
        "${baseUrl}67ed3aae001f0279da08/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "London, UK",
    bio: "A passionate trainer focused on functional fitness and injury prevention.",
    education: "M.S. in Exercise Physiology, Certified Strength and Conditioning Specialist (CSCS)",
  ),
  Trainer(
    name: "Chloe Davis",
    imageUrl:
        "${baseUrl}67ed56f4001310d2758f/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "Sydney, Australia",
    bio: "Specializes in yoga and mindfulness practices for holistic well-being.",
    education: "Certified Yoga Instructor, Diploma in Holistic Health",
  ),
  Trainer(
    name: "David Lee",
    imageUrl:
        "${baseUrl}67ed57b2000dc205f40c/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "Toronto, Canada",
    bio: "Expert in high-intensity interval training (HIIT) and weight loss programs.",
    education: "B.S. in Kinesiology, Certified HIIT Specialist",
  ),
  Trainer(
    name: "Elena Rodriguez",
    imageUrl:
        "${baseUrl}67ed3a80002eba1e284a/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "Madrid, Spain",
    bio: "Focuses on dance-based fitness and group training sessions.",
    education: "Certified Zumba Instructor, B.A. in Dance and Movement Studies",
  ),
  Trainer(
    name: "Farid Hassan",
    imageUrl:
        "${baseUrl}67ed3a75001a8fec3825/view?project=67ed38c8002d8d213fe7&mode=adminassets/trainer_farid.jpg",
    location: "Dubai, UAE",
    bio: "A seasoned trainer with expertise in bodybuilding and strength conditioning.",
    education: "Certified Bodybuilding Specialist, Diploma in Sports Nutrition",
  ),
  Trainer(
    name: "Grace Kim",
    imageUrl:
        "${baseUrl}67ed3a6a00183156fa9d/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "Seoul, South Korea",
    bio: "Combines Pilates and core strengthening techniques for optimal fitness.",
    education: "Certified Pilates Instructor, B.S. in Physical Education",
  ),
  Trainer(
    name: "Henry Moore",
    imageUrl:
        "${baseUrl}67ed3a5f000de52889bb/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "Berlin, Germany",
    bio: "Specialist in endurance training and marathon preparation.",
    education: "M.S. in Sports Science, Certified Running Coach",
  ),
  Trainer(
    name: "Isabella Nguyen",
    imageUrl:
        "${baseUrl}67ed3a520035d2bacd51/view?project=67ed38c8002d8d213fe7&mode=admin",
    location: "Ho Chi Minh City, Vietnam",
    bio: "Focuses on flexibility and mobility training for all age groups.",
    education: "Certified Flexibility Coach, Diploma in Physical Therapy",
  ),
];
