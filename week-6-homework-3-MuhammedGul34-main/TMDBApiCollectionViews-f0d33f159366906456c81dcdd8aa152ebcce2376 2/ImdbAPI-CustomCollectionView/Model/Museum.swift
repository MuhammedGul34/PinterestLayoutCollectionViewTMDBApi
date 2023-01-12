//
//  Museum.swift
//  ImdbAPI-CustomCollectionView
//
//  Created by Muhammed Gül on 12.01.2023.
//


import Foundation




// MARK: - Welcome
struct Museums: Codable {
    let pagination: Pagination?
    let data: [Datum]?
    let info: Info?
    let config: Config?
}

// MARK: - Config
struct Config: Codable {
    let iiifURL: String?
    let websiteURL: String?

    enum CodingKeys: String, CodingKey {
        case iiifURL = "iiif_url"
        case websiteURL = "website_url"
    }
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int?
    let apiModel: APIModel?
    let apiLink: String?
    let isBoosted: Bool?
    let title: String?
    let altTitles: JSONNull?
    let thumbnail: Thumbnail?
    let mainReferenceNumber: String?
    let hasNotBeenViewedMuch: Bool?
    let boostRank: JSONNull?
    let dateStart, dateEnd: Int?
    let dateDisplay, dateQualifierTitle: String?
    let dateQualifierID: JSONNull?
    let artistDisplay: String?
    let placeOfOrigin: PlaceOfOrigin?
    let dimensions: String?
    let mediumDisplay: String?
    let inscriptions: String?
    let creditLine: String?
    let catalogueDisplay, publicationHistory, exhibitionHistory, provenanceText: String?
    let publishingVerificationLevel: PublishingVerificationLevel?
    let internalDepartmentID: Int?
    let fiscalYear: Int?
    let fiscalYearDeaccession: JSONNull?
    let isPublicDomain, isZoomable: Bool?
    let maxZoomWindowSize: Int?
    let copyrightNotice: String?
    let hasMultimediaResources, hasEducationalResources, hasAdvancedImaging: Bool?
    let colorfulness: Double?
    let color: Color?
    let latitude, longitude: Double?
    let latlon: String?
    let isOnView: Bool?
    let onLoanDisplay: String?
    let galleryTitle, galleryID: JSONNull?
    let artworkTypeTitle: ArtworkTypeTitle?
    let artworkTypeID: Int?
    let departmentTitle, departmentID: String?
    let artistID: Int?
    let artistTitle: String?
    let altArtistIDS: [JSONAny]?
    let artistIDS: [Int]?
    let artistTitles, categoryIDS, categoryTitles, termTitles: [String]?
    let styleID, styleTitle: String?
    let altStyleIDS: [JSONAny]?
    let styleIDS, styleTitles: [String]?
    let classificationID, classificationTitle: String?
    let altClassificationIDS, classificationIDS, classificationTitles: [String]?
    let subjectID: String?
    let altSubjectIDS, subjectIDS, subjectTitles: [String]?
    let materialID: String?
    let altMaterialIDS, materialIDS, materialTitles: [String]?
    let techniqueID: String?
    let altTechniqueIDS, techniqueIDS, techniqueTitles, themeTitles: [String]?
    let imageID: String
    let altImageIDS, documentIDS, soundIDS: [String]?
    let videoIDS, textIDS: [JSONAny]?
    let sectionIDS: [Int]?
    let sectionTitles: [String]?
    let siteIDS: [JSONAny]?
    let suggestAutocompleteBoosted: String?
    let suggestAutocompleteAll: [SuggestAutocompleteAll]?
    let sourceUpdatedAt, updatedAt, timestamp: Date?

    enum CodingKeys: String, CodingKey {
        case id
        case apiModel = "api_model"
        case apiLink = "api_link"
        case isBoosted = "is_boosted"
        case title
        case altTitles = "alt_titles"
        case thumbnail
        case mainReferenceNumber = "main_reference_number"
        case hasNotBeenViewedMuch = "has_not_been_viewed_much"
        case boostRank = "boost_rank"
        case dateStart = "date_start"
        case dateEnd = "date_end"
        case dateDisplay = "date_display"
        case dateQualifierTitle = "date_qualifier_title"
        case dateQualifierID = "date_qualifier_id"
        case artistDisplay = "artist_display"
        case placeOfOrigin = "place_of_origin"
        case dimensions
        case mediumDisplay = "medium_display"
        case inscriptions
        case creditLine = "credit_line"
        case catalogueDisplay = "catalogue_display"
        case publicationHistory = "publication_history"
        case exhibitionHistory = "exhibition_history"
        case provenanceText = "provenance_text"
        case publishingVerificationLevel = "publishing_verification_level"
        case internalDepartmentID = "internal_department_id"
        case fiscalYear = "fiscal_year"
        case fiscalYearDeaccession = "fiscal_year_deaccession"
        case isPublicDomain = "is_public_domain"
        case isZoomable = "is_zoomable"
        case maxZoomWindowSize = "max_zoom_window_size"
        case copyrightNotice = "copyright_notice"
        case hasMultimediaResources = "has_multimedia_resources"
        case hasEducationalResources = "has_educational_resources"
        case hasAdvancedImaging = "has_advanced_imaging"
        case colorfulness, color, latitude, longitude, latlon
        case isOnView = "is_on_view"
        case onLoanDisplay = "on_loan_display"
        case galleryTitle = "gallery_title"
        case galleryID = "gallery_id"
        case artworkTypeTitle = "artwork_type_title"
        case artworkTypeID = "artwork_type_id"
        case departmentTitle = "department_title"
        case departmentID = "department_id"
        case artistID = "artist_id"
        case artistTitle = "artist_title"
        case altArtistIDS = "alt_artist_ids"
        case artistIDS = "artist_ids"
        case artistTitles = "artist_titles"
        case categoryIDS = "category_ids"
        case categoryTitles = "category_titles"
        case termTitles = "term_titles"
        case styleID = "style_id"
        case styleTitle = "style_title"
        case altStyleIDS = "alt_style_ids"
        case styleIDS = "style_ids"
        case styleTitles = "style_titles"
        case classificationID = "classification_id"
        case classificationTitle = "classification_title"
        case altClassificationIDS = "alt_classification_ids"
        case classificationIDS = "classification_ids"
        case classificationTitles = "classification_titles"
        case subjectID = "subject_id"
        case altSubjectIDS = "alt_subject_ids"
        case subjectIDS = "subject_ids"
        case subjectTitles = "subject_titles"
        case materialID = "material_id"
        case altMaterialIDS = "alt_material_ids"
        case materialIDS = "material_ids"
        case materialTitles = "material_titles"
        case techniqueID = "technique_id"
        case altTechniqueIDS = "alt_technique_ids"
        case techniqueIDS = "technique_ids"
        case techniqueTitles = "technique_titles"
        case themeTitles = "theme_titles"
        case imageID = "image_id"
        case altImageIDS = "alt_image_ids"
        case documentIDS = "document_ids"
        case soundIDS = "sound_ids"
        case videoIDS = "video_ids"
        case textIDS = "text_ids"
        case sectionIDS = "section_ids"
        case sectionTitles = "section_titles"
        case siteIDS = "site_ids"
        case suggestAutocompleteBoosted = "suggest_autocomplete_boosted"
        case suggestAutocompleteAll = "suggest_autocomplete_all"
        case sourceUpdatedAt = "source_updated_at"
        case updatedAt = "updated_at"
        case timestamp
    }
}

enum APIModel: String, Codable {
    case artworks = "artworks"
}

enum ArtworkTypeTitle: String, Codable {
    case drawingAndWatercolor = "Drawing and Watercolor"
    case painting = "Painting"
    case sculpture = "Sculpture"
}

// MARK: - Color
struct Color: Codable {
    let h, l, s: Int?
    let percentage: Double?
    let population: Int?
}

enum PlaceOfOrigin: String, Codable {
    case france = "France"
    case italy = "Italy"
    case switzerland = "Switzerland"
}

enum PublishingVerificationLevel: String, Codable {
    case webBasic = "Web Basic"
    case webCataloged = "Web Cataloged"
}

// MARK: - SuggestAutocompleteAll
struct SuggestAutocompleteAll: Codable {
    let input: [String]?
    let contexts: Contexts?
    let weight: Int?
}

// MARK: - Contexts
struct Contexts: Codable {
    let groupings: [Grouping]?
}

enum Grouping: String, Codable {
    case accession = "accession"
    case title = "title"
}

// MARK: - Thumbnail
struct Thumbnail: Codable {
    let lqip: String?
    let width, height: Int
    let altText: String?

    enum CodingKeys: String, CodingKey {
        case lqip, width, height
        case altText = "alt_text"
    }
}

// MARK: - Info
struct Info: Codable {
    let licenseText: String?
    let licenseLinks: [String]?
    let version: String?

    enum CodingKeys: String, CodingKey {
        case licenseText = "license_text"
        case licenseLinks = "license_links"
        case version
    }
}

// MARK: - Pagination
struct Pagination: Codable {
    let total, limit, offset, totalPages: Int?
    let currentPage: Int?
    let nextURL: String?

    enum CodingKeys: String, CodingKey {
        case total, limit, offset
        case totalPages = "total_pages"
        case currentPage = "current_page"
        case nextURL = "next_url"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}


//// MARK: - Museums
//struct Museums: Codable {
//    let pagination: Pagination
//    let data: [Datum]
//    let info: Info
//    let config: Config
//}
//
//// MARK: - Config
//struct Config: Codable {
//    let iiifURL: String
//    let websiteURL: String
//
//    enum CodingKeys: String, CodingKey {
//        case iiifURL = "iiif_url"
//        case websiteURL = "website_url"
//    }
//}
//
//// MARK: - Datum
//struct Datum: Codable {
//
//
//
//
//    let title: String
//    let altTitles: JSONNull?
//    let thumbnail: Thumbnail
//    let mainReferenceNumber: String
//    let hasNotBeenViewedMuch: Bool
//    let boostRank: JSONNull?
//    let dateStart, dateEnd: Int
//    let dateDisplay, dateQualifierTitle: String
//    let dateQualifierID: JSONNull?
//    let artistDisplay: String
//    let placeOfOrigin: PlaceOfOrigin
//    let dimensions: String?
//    let mediumDisplay: String
//    let inscriptions: String?
//    let creditLine: String
//    let catalogueDisplay, publicationHistory, exhibitionHistory, provenanceText: String?
//    let publishingVerificationLevel: PublishingVerificationLevel
//    let internalDepartmentID: Int
//    let fiscalYear: Int?
//    let fiscalYearDeaccession: JSONNull?
//    let isPublicDomain, isZoomable: Bool
//    let maxZoomWindowSize: Int
//    let copyrightNotice: String?
//    let hasMultimediaResources, hasEducationalResources, hasAdvancedImaging: Bool
//    let colorfulness: Double
//    let color: Color?
//    let latitude, longitude: Double?
//    let latlon: String?
//    let isOnView: Bool
//    let onLoanDisplay: String
//    let galleryTitle, galleryID: JSONNull?
//    let artworkTypeTitle: ArtworkTypeTitle
//    let artworkTypeID: Int
//    let departmentTitle, departmentID: String
//    let artistID: Int
//    let artistTitle: String
//    let altArtistIDS: [JSONAny]
//    let artistIDS: [Int]
//    let artistTitles, categoryIDS, categoryTitles, termTitles: [String]
//    let styleID, styleTitle: String?
//    let altStyleIDS: [JSONAny]
//    let styleIDS, styleTitles: [String]
//    let classificationID, classificationTitle: String
//    let altClassificationIDS, classificationIDS, classificationTitles: [String]
//    let subjectID: String?
//    let altSubjectIDS, subjectIDS, subjectTitles: [String]
//    let materialID: String?
//    let altMaterialIDS, materialIDS, materialTitles: [String]
//    let techniqueID: String?
//    let altTechniqueIDS, techniqueIDS, techniqueTitles, themeTitles: [String]
//    let imageID: String
//    let altImageIDS, documentIDS, soundIDS: [String]
//    let videoIDS, textIDS: [JSONAny]
//    let sectionIDS: [Int]
//    let sectionTitles: [String]
//    let siteIDS: [JSONAny]
//    let suggestAutocompleteBoosted: String?
//    let suggestAutocompleteAll: [SuggestAutocompleteAll]
//    let sourceUpdatedAt, updatedAt, timestamp: Date
//
//    enum CodingKeys: String, CodingKey {
//
//
//        case title
//        case altTitles = "alt_titles"
//        case thumbnail
//        case mainReferenceNumber = "main_reference_number"
//        case hasNotBeenViewedMuch = "has_not_been_viewed_much"
//        case boostRank = "boost_rank"
//        case dateStart = "date_start"
//        case dateEnd = "date_end"
//        case dateDisplay = "date_display"
//        case dateQualifierTitle = "date_qualifier_title"
//        case dateQualifierID = "date_qualifier_id"
//        case artistDisplay = "artist_display"
//        case placeOfOrigin = "place_of_origin"
//        case dimensions
//        case mediumDisplay = "medium_display"
//        case inscriptions
//        case creditLine = "credit_line"
//        case catalogueDisplay = "catalogue_display"
//        case publicationHistory = "publication_history"
//        case exhibitionHistory = "exhibition_history"
//        case provenanceText = "provenance_text"
//        case publishingVerificationLevel = "publishing_verification_level"
//        case internalDepartmentID = "internal_department_id"
//        case fiscalYear = "fiscal_year"
//        case fiscalYearDeaccession = "fiscal_year_deaccession"
//        case isPublicDomain = "is_public_domain"
//        case isZoomable = "is_zoomable"
//        case maxZoomWindowSize = "max_zoom_window_size"
//        case copyrightNotice = "copyright_notice"
//        case hasMultimediaResources = "has_multimedia_resources"
//        case hasEducationalResources = "has_educational_resources"
//        case hasAdvancedImaging = "has_advanced_imaging"
//        case colorfulness, color, latitude, longitude, latlon
//        case isOnView = "is_on_view"
//        case onLoanDisplay = "on_loan_display"
//        case galleryTitle = "gallery_title"
//        case galleryID = "gallery_id"
//        case artworkTypeTitle = "artwork_type_title"
//        case artworkTypeID = "artwork_type_id"
//        case departmentTitle = "department_title"
//        case departmentID = "department_id"
//        case artistID = "artist_id"
//        case artistTitle = "artist_title"
//        case altArtistIDS = "alt_artist_ids"
//        case artistIDS = "artist_ids"
//        case artistTitles = "artist_titles"
//        case categoryIDS = "category_ids"
//        case categoryTitles = "category_titles"
//        case termTitles = "term_titles"
//        case styleID = "style_id"
//        case styleTitle = "style_title"
//        case altStyleIDS = "alt_style_ids"
//        case styleIDS = "style_ids"
//        case styleTitles = "style_titles"
//        case classificationID = "classification_id"
//        case classificationTitle = "classification_title"
//        case altClassificationIDS = "alt_classification_ids"
//        case classificationIDS = "classification_ids"
//        case classificationTitles = "classification_titles"
//        case subjectID = "subject_id"
//        case altSubjectIDS = "alt_subject_ids"
//        case subjectIDS = "subject_ids"
//        case subjectTitles = "subject_titles"
//        case materialID = "material_id"
//        case altMaterialIDS = "alt_material_ids"
//        case materialIDS = "material_ids"
//        case materialTitles = "material_titles"
//        case techniqueID = "technique_id"
//        case altTechniqueIDS = "alt_technique_ids"
//        case techniqueIDS = "technique_ids"
//        case techniqueTitles = "technique_titles"
//        case themeTitles = "theme_titles"
//        case imageID = "image_id"
//        case altImageIDS = "alt_image_ids"
//        case documentIDS = "document_ids"
//        case soundIDS = "sound_ids"
//        case videoIDS = "video_ids"
//        case textIDS = "text_ids"
//        case sectionIDS = "section_ids"
//        case sectionTitles = "section_titles"
//        case siteIDS = "site_ids"
//        case suggestAutocompleteBoosted = "suggest_autocomplete_boosted"
//        case suggestAutocompleteAll = "suggest_autocomplete_all"
//        case sourceUpdatedAt = "source_updated_at"
//        case updatedAt = "updated_at"
//        case timestamp
//    }
//}
//
//enum APIModel: String, Codable {
//    case artworks = "artworks"
//}
//
//enum ArtworkTypeTitle: String, Codable {
//    case drawingAndWatercolor = "Drawing and Watercolor"
//    case painting = "Painting"
//    case sculpture = "Sculpture"
//}
//
//// MARK: - Color
//struct Color: Codable {
//    let h, l, s: Int
//    let percentage: Double
//    let population: Int
//}
//
//enum PlaceOfOrigin: String, Codable {
//    case france = "France"
//    case italy = "Italy"
//    case switzerland = "Switzerland"
//}
//
//enum PublishingVerificationLevel: String, Codable {
//    case webBasic = "Web Basic"
//    case webCataloged = "Web Cataloged"
//}
//
//// MARK: - SuggestAutocompleteAll
//struct SuggestAutocompleteAll: Codable {
//    let input: [String]
//    let contexts: Contexts
//    let weight: Int?
//}
//
//// MARK: - Contexts
//struct Contexts: Codable {
//    let groupings: [Grouping]
//}
//
//enum Grouping: String, Codable {
//    case accession = "accession"
//    case title = "title"
//}
//
//// MARK: - Thumbnail
//struct Thumbnail: Codable {
//    let width, height: Int
//
//    enum CodingKeys: String, CodingKey {
//        case  width, height
//
//    }
//}
//
//// MARK: - Info
//struct Info: Codable {
//    let licenseText: String
//    let licenseLinks: [String]
//    let version: String
//
//    enum CodingKeys: String, CodingKey {
//        case licenseText = "license_text"
//        case licenseLinks = "license_links"
//        case version
//    }
//}
//
//// MARK: - Pagination
//struct Pagination: Codable {
//    let total, limit, offset, totalPages: Int
//    let currentPage: Int
//
//
//    enum CodingKeys: String, CodingKey {
//        case total, limit, offset
//        case totalPages = "total_pages"
//        case currentPage = "current_page"
//
//    }
//}
//
//// MARK: - Encode/decode helpers
//
//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}
//
//class JSONCodingKey: CodingKey {
//    let key: String
//
//    required init?(intValue: Int) {
//        return nil
//    }
//
//    required init?(stringValue: String) {
//        key = stringValue
//    }
//
//    var intValue: Int? {
//        return nil
//    }
//
//    var stringValue: String {
//        return key
//    }
//}
//
//class JSONAny: Codable {
//
//    let value: Any
//
//    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
//        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
//        return DecodingError.typeMismatch(JSONAny.self, context)
//    }
//
//    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
//        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
//        return EncodingError.invalidValue(value, context)
//    }
//
//    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if container.decodeNil() {
//            return JSONNull()
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if let value = try? container.decodeNil() {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer() {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
//        if let value = try? container.decode(Bool.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Double.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(String.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decodeNil(forKey: key) {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
//        var arr: [Any] = []
//        while !container.isAtEnd {
//            let value = try decode(from: &container)
//            arr.append(value)
//        }
//        return arr
//    }
//
//    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
//        var dict = [String: Any]()
//        for key in container.allKeys {
//            let value = try decode(from: &container, forKey: key)
//            dict[key.stringValue] = value
//        }
//        return dict
//    }
//
//    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
//        for value in array {
//            if let value = value as? Bool {
//                try container.encode(value)
//            } else if let value = value as? Int64 {
//                try container.encode(value)
//            } else if let value = value as? Double {
//                try container.encode(value)
//            } else if let value = value as? String {
//                try container.encode(value)
//            } else if value is JSONNull {
//                try container.encodeNil()
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer()
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
//        for (key, value) in dictionary {
//            let key = JSONCodingKey(stringValue: key)!
//            if let value = value as? Bool {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Int64 {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Double {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? String {
//                try container.encode(value, forKey: key)
//            } else if value is JSONNull {
//                try container.encodeNil(forKey: key)
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer(forKey: key)
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
//        if let value = value as? Bool {
//            try container.encode(value)
//        } else if let value = value as? Int64 {
//            try container.encode(value)
//        } else if let value = value as? Double {
//            try container.encode(value)
//        } else if let value = value as? String {
//            try container.encode(value)
//        } else if value is JSONNull {
//            try container.encodeNil()
//        } else {
//            throw encodingError(forValue: value, codingPath: container.codingPath)
//        }
//    }
//
//    public required init(from decoder: Decoder) throws {
//        if var arrayContainer = try? decoder.unkeyedContainer() {
//            self.value = try JSONAny.decodeArray(from: &arrayContainer)
//        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
//            self.value = try JSONAny.decodeDictionary(from: &container)
//        } else {
//            let container = try decoder.singleValueContainer()
//            self.value = try JSONAny.decode(from: container)
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        if let arr = self.value as? [Any] {
//            var container = encoder.unkeyedContainer()
//            try JSONAny.encode(to: &container, array: arr)
//        } else if let dict = self.value as? [String: Any] {
//            var container = encoder.container(keyedBy: JSONCodingKey.self)
//            try JSONAny.encode(to: &container, dictionary: dict)
//        } else {
//            var container = encoder.singleValueContainer()
//            try JSONAny.encode(to: &container, value: self.value)
//        }
//    }
//}
