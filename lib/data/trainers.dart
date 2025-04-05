import 'package:fibudx/models/trainer.dart';

const String baseUrl =
  "https://cloud.appwrite.io/v1/storage/buckets/67ed3956002d5e053c06/files/"; 

List<Trainer> trainers = [
  Trainer(
    name: "Lee Khan",
    imageUrl:
      "${baseUrl}67ed3f84001f4de4f9df/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "New York, USA",
    bio: "An experienced fitness coach specializing in strength training and nutrition.",
    education: "Certified Personal Trainer (CPT), B.S. in Sports Science",
    charge: 500000, // 50.0 * 10000
  ),
  Trainer(
    name: "Ben Carter",
    imageUrl:
      "${baseUrl}67ed3aae001f0279da08/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "London, UK",
    bio: "A passionate trainer focused on functional fitness and injury prevention.",
    education: "M.S. in Exercise Physiology, Certified Strength and Conditioning Specialist (CSCS)",
    charge: 600000, // 60.0 * 10000
  ),
  Trainer(
    name: "Chloe Davis",
    imageUrl:
      "${baseUrl}67ed56f4001310d2758f/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "Sydney, Australia",
    bio: "Specializes in yoga and mindfulness practices for holistic well-being.",
    education: "Certified Yoga Instructor, Diploma in Holistic Health",
    charge: 450000, // 45.0 * 10000
  ),
  Trainer(
    name: "David Lee",
    imageUrl:
      "${baseUrl}67ed57b2000dc205f40c/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "Toronto, Canada",
    bio: "Expert in high-intensity interval training (HIIT) and weight loss programs.",
    charge: 550000, // 55.0 * 10000
  ),
  Trainer(
    name: "Elena Rodriguez",
    imageUrl:
      "${baseUrl}67ed3a80002eba1e284a/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "Madrid, Spain",
    bio: "Focuses on dance-based fitness and group training sessions.",
    education: "Certified Zumba Instructor, B.A. in Dance and Movement Studies",
    charge: 480000, // 48.0 * 10000
  ),
  Trainer(
    name: "Farid Hassan",
    imageUrl:
      "${baseUrl}67ed3a75001a8fec3825/view?project=67ed38c8002d8d213fe7&mode=guestassets/trainer_farid.jpg",
    location: "Dubai, UAE",
    bio: "A seasoned trainer with expertise in bodybuilding and strength conditioning.",
    education: "Certified Bodybuilding Specialist, Diploma in Sports Nutrition",
    charge: 700000, // 70.0 * 10000
  ),
  Trainer(
    name: "Grace Kim",
    imageUrl:
      "${baseUrl}67ed3a6a00183156fa9d/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "Seoul, South Korea",
    bio: "Combines Pilates and core strengthening techniques for optimal fitness.",
    education: "Certified Pilates Instructor, B.S. in Physical Education",
    charge: 520000, // 52.0 * 10000
  ),
  Trainer(
    name: "Henry Moore",
    imageUrl:
      "${baseUrl}67ed3a5f000de52889bb/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "Berlin, Germany",
    bio: "Specialist in endurance training and marathon preparation.",
    education: "M.S. in Sports Science, Certified Running Coach",
    charge: 580000, // 58.0 * 10000
  ),
  Trainer(
    name: "Isabella Nguyen",
    imageUrl:
      "${baseUrl}67ed3a520035d2bacd51/view?project=67ed38c8002d8d213fe7&mode=guest",
    location: "Ho Chi Minh City, Vietnam",
    bio: "Focuses on flexibility and mobility training for all age groups.",
    education: "Certified Flexibility Coach, Diploma in Physical Therapy",
    charge: 490000, // 49.0 * 10000
  ),
];
