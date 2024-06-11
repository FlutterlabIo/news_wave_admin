import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:news_wave_admin/features/ad_space/model/ad_space_model.dart';
import 'package:news_wave_admin/features/ad_space/model/ad_space_model.dart';
import 'package:news_wave_admin/features/ad_space/model/ad_space_model.dart';
import 'package:news_wave_admin/features/ad_space/model/ad_space_model.dart';
import 'package:news_wave_admin/features/ad_space/model/ad_space_model.dart';
import 'package:news_wave_admin/features/breaking_news/models/breaking_news_model.dart';
import 'package:news_wave_admin/features/breaking_news/models/breaking_news_model.dart';
import 'package:news_wave_admin/features/breaking_news/models/breaking_news_model.dart';
import 'package:news_wave_admin/features/breaking_news/models/breaking_news_model.dart';
import 'package:news_wave_admin/features/breaking_news/models/breaking_news_model.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/featured/model/featured_model.dart';
import 'package:news_wave_admin/features/featured/model/featured_model.dart';
import 'package:news_wave_admin/features/featured/model/featured_model.dart';
import 'package:news_wave_admin/features/featured/model/featured_model.dart';
import 'package:news_wave_admin/features/featured/model/featured_model.dart';
import 'package:news_wave_admin/features/live_streaming/models/live_stream_model.dart';
import 'package:news_wave_admin/features/live_streaming/models/live_stream_model.dart';
import 'package:news_wave_admin/features/live_streaming/models/live_stream_model.dart';
import 'package:news_wave_admin/features/live_streaming/models/live_stream_model.dart';
import 'package:news_wave_admin/features/live_streaming/models/live_stream_model.dart';
import 'package:news_wave_admin/features/news/model/recomended_news_model.dart';
import 'package:news_wave_admin/features/sub_category/model/sub_category_model.dart';

import '../../features/Location/model/location_model.dart';
const String LOCATION_COLLECTION_REF = 'locations';
class DatabaseLocationService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<LocationModel> _locationRef;

  DatabaseLocationService() {
    _locationRef = _firestore.collection(
      LOCATION_COLLECTION_REF,
    ).withConverter<LocationModel>(
      fromFirestore: (snapshots, _) => LocationModel.fromJson(snapshots.data()!),
      toFirestore: (location, _) => location.toJson(),
    );
  }

  Stream<QuerySnapshot<LocationModel>> getLocations() {
    return _locationRef.snapshots();
  }

  Future<void> addLocation(LocationModel locationModel) async {
    await _locationRef.add(locationModel);
  }
}

const String News_COLLECTION_REF = 'news';

class DatabaseNewsService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<RecomendedNewsModel> _NewsRef;

  DatabaseNewsService() {
    _NewsRef = _firestore.collection(
      News_COLLECTION_REF,
    ).withConverter<RecomendedNewsModel>(
      fromFirestore: (snapshots, _) => RecomendedNewsModel.fromJson(snapshots.data()!),
      toFirestore: (news, _) => news.toJson(),
    );
  }

  Stream<QuerySnapshot<RecomendedNewsModel>> getNews() {
    return _NewsRef.snapshots();
  }

  Future<void> addNews(RecomendedNewsModel newsModel) async {
    await _NewsRef.add(newsModel);
  }
}

const String ADSPACE_COLLECTION_REF = 'adspace';

class DatabaseAdSpaceService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<AdSpaceModel> _NewsRef;

  DatabaseAdSpaceService() {
    _NewsRef = _firestore.collection(
      ADSPACE_COLLECTION_REF,
    ).withConverter<AdSpaceModel>(
      fromFirestore: (snapshots, _) => AdSpaceModel.fromJson(snapshots.data()!),
      toFirestore: (news, _) => news.toJson(),
    );
  }

  Stream<QuerySnapshot<AdSpaceModel>> getNews() {
    return _NewsRef.snapshots();
  }

  Future<void> addNews(AdSpaceModel newsModel) async {
    await _NewsRef.add(newsModel);
  }
}

const String BreakingNews_COLLECTION_REF = 'breakingnews';

class DatabaseBreakingNewsService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<BreakingNewsModel> _NewsRef;

  DatabaseBreakingNewsService() {
    _NewsRef = _firestore.collection(
      BreakingNews_COLLECTION_REF,
    ).withConverter<BreakingNewsModel>(
      fromFirestore: (snapshots, _) => BreakingNewsModel.fromJson(snapshots.data()!),
      toFirestore: (news, _) => news.toJson(),
    );
  }

  Stream<QuerySnapshot<BreakingNewsModel>> getNews() {
    return _NewsRef.snapshots();
  }

  Future<void> addNews(BreakingNewsModel newsModel) async {
    await _NewsRef.add(newsModel);
  }
}

const String LIVESTREAM_COLLECTION_REF = 'livestream';

class DatabaseLiveStreamService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<LiveStreamModel> _NewsRef;

  DatabaseLiveStreamService() {
    _NewsRef = _firestore.collection(
      LIVESTREAM_COLLECTION_REF,
    ).withConverter<LiveStreamModel>(
      fromFirestore: (snapshots, _) => LiveStreamModel.fromJson(snapshots.data()!),
      toFirestore: (news, _) => news.toJson(),
    );
  }

  Stream<QuerySnapshot<LiveStreamModel>> getNews() {
    return _NewsRef.snapshots();
  }

  Future<void> addNews(LiveStreamModel newsModel) async {
    await _NewsRef.add(newsModel);
  }
}






const String Category_COLLECTION_REF = 'categories';
class DatabaseCategoryService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<CategoryModel> _categoryRef;

  DatabaseCategoryService() {
    _categoryRef = _firestore.collection(
      Category_COLLECTION_REF,
    ).withConverter<CategoryModel>(
      fromFirestore: (snapshots, _) => CategoryModel.fromJson(snapshots.data()!),
      toFirestore: (location, _) => location.toJson(),
    );
  }

  Stream<QuerySnapshot<CategoryModel>> getCategory() {
    return _categoryRef.snapshots();
  }

  Future<void> addCategory(CategoryModel locationModel) async {
    await _categoryRef.add(locationModel);
  }
}
const String SubCategory_COLLECTION_REF = 'subcategories';

class DatabaseSubCategoryService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<SubCategoryModel> _subcategoryRef;

  DatabaseSubCategoryService() {
    _subcategoryRef = _firestore.collection(
      SubCategory_COLLECTION_REF,
    ).withConverter<SubCategoryModel>(
      fromFirestore: (snapshots, _) => SubCategoryModel.fromJson(snapshots.data()!),
      toFirestore: (location, _) => location.toJson(),
    );
  }

  Stream<QuerySnapshot<SubCategoryModel>> getCategory() {
    return _subcategoryRef.snapshots();
  }

  Future<void> addSubCategory(SubCategoryModel locationModel) async {
    await _subcategoryRef.add(locationModel);
  }
}

const String FEATURED_COLLECTION_REF = 'featured';

class DatabaseFeaturedService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference<FeaturedModel> _subcategoryRef;

  DatabaseFeaturedService() {
    _subcategoryRef = _firestore.collection(
      FEATURED_COLLECTION_REF,
    ).withConverter<FeaturedModel>(
      fromFirestore: (snapshots, _) => FeaturedModel.fromJson(snapshots.data()!),
      toFirestore: (location, _) => location.toJson(),
    );
  }

  Stream<QuerySnapshot<FeaturedModel>> getCategory() {
    return _subcategoryRef.snapshots();
  }

  Future<void> addSubCategory(FeaturedModel locationModel) async {
    await _subcategoryRef.add(locationModel);
  }
}





class DatabaseSettingsService{
  void updateAppName() async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    String newName = "New Document Name";
    QuerySnapshot querySnapshot = await _firestore.collection('appSettings').limit(1).get();
    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot firstDoc = querySnapshot.docs.first;
      await _firestore.collection('appSettings').doc(firstDoc.id).update({'appName': newName});
      if (kDebugMode) {
        print("Document updated successfully.");
      }
    } else {
      if (kDebugMode) {
        print("No documents found in the collection.");
      }
    }
  }
  void updateAppLanguage() async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    String language = "English 2";
    QuerySnapshot querySnapshot = await _firestore.collection('appSettings').limit(1).get();
    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot firstDoc = querySnapshot.docs.first;
      await _firestore.collection('appSettings').doc(firstDoc.id).update({'language': language});
      if (kDebugMode) {
        print("Document updated successfully.");
      }
    } else {
      if (kDebugMode) {
        print("No documents found in the collection.");
      }
    }
  }
  void updateAppFontSize() async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await _firestore.collection('appSettings').limit(1).get();
    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot firstDoc = querySnapshot.docs.first;
      await _firestore.collection('appSettings').doc(firstDoc.id).update({'fontSize': 12});
      if (kDebugMode) {
        print("Document updated successfully.");
      }
    } else {
      if (kDebugMode) {
        print("No documents found in the collection.");
      }
    }
  }
  void updateAppFontColor() async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await _firestore.collection('appSettings').limit(1).get();
    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot firstDoc = querySnapshot.docs.first;
      await _firestore.collection('appSettings').doc(firstDoc.id).update({'fontColor': 'Red'});
      if (kDebugMode) {
        print("Document updated successfully.");
      }
    } else {
      if (kDebugMode) {
        print("No documents found in the collection.");
      }
    }
  }
}