import 'dart:convert';

class UserAuthDataEntity {
    UserAuthDataEntity({
        this.kind,
        this.users,
    });

    String? kind;
    List<User>? users;

    factory UserAuthDataEntity.fromJson(String str) => UserAuthDataEntity.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserAuthDataEntity.fromMap(Map<String, dynamic> json) => UserAuthDataEntity(
        kind: json["kind"],
        users: json["users"] == null ? null : List<User>.from(json["users"].map((x) => User.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "users": users == null ? null : List<dynamic>.from(users!.map((x) => x.toMap())),
    };
}

class User {
    User({
        this.localId,
        this.email,
        this.passwordHash,
        this.emailVerified,
        this.passwordUpdatedAt,
        this.providerUserInfo,
        this.validSince,
        this.lastLoginAt,
        this.createdAt,
        this.lastRefreshAt,
    });

    String? localId;
    String? email;
    String? passwordHash;
    bool? emailVerified;
    int? passwordUpdatedAt;
    List<ProviderUserInfo>? providerUserInfo;
    String? validSince;
    String? lastLoginAt;
    String? createdAt;
    DateTime? lastRefreshAt;

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        localId: json["localId"],
        email: json["email"],
        passwordHash: json["passwordHash"],
        emailVerified: json["emailVerified"],
        passwordUpdatedAt: json["passwordUpdatedAt"],
        providerUserInfo: json["providerUserInfo"] == null ? null : List<ProviderUserInfo>.from(json["providerUserInfo"].map((x) => ProviderUserInfo.fromMap(x))),
        validSince: json["validSince"],
        lastLoginAt: json["lastLoginAt"],
        createdAt: json["createdAt"],
        lastRefreshAt: json["lastRefreshAt"] == null ? null : DateTime.parse(json["lastRefreshAt"]),
    );

    Map<String, dynamic> toMap() => {
        "localId": localId,
        "email": email,
        "passwordHash": passwordHash,
        "emailVerified": emailVerified,
        "passwordUpdatedAt": passwordUpdatedAt,
        "providerUserInfo": providerUserInfo == null ? null : List<dynamic>.from(providerUserInfo!.map((x) => x.toMap())),
        "validSince": validSince,
        "lastLoginAt": lastLoginAt,
        "createdAt": createdAt,
        "lastRefreshAt": lastRefreshAt == null ? null : lastRefreshAt!.toIso8601String(),
    };
}

class ProviderUserInfo {
    ProviderUserInfo({
        this.providerId,
        this.federatedId,
        this.email,
        this.rawId,
    });

    String? providerId;
    String? federatedId;
    String? email;
    String? rawId;

    factory ProviderUserInfo.fromJson(String str) => ProviderUserInfo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProviderUserInfo.fromMap(Map<String, dynamic> json) => ProviderUserInfo(
        providerId: json["providerId"],
        federatedId: json["federatedId"],
        email: json["email"],
        rawId: json["rawId"],
    );

    Map<String, dynamic> toMap() => {
        "providerId": providerId,
        "federatedId": federatedId,
        "email": email,
        "rawId": rawId,
    };
}