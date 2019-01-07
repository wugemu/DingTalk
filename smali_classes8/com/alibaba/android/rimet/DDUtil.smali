.class public Lcom/langzu/baozha/ddutil/DDUtil;
.super Ljava/lang/Object;
.source "DDUtil.java"


# static fields
.field public static amapLocation:Lcom/amap/api/location/AMapLocation;

.field public static configImgUrl:Ljava/lang/String;

.field public static mybssid:Ljava/lang/String;

.field public static myssid:Ljava/lang/String;


# instance fields
.field public jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .locals 8
    .param p0, "arr"    # [B

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    array-length v3, p0

    mul-int/2addr v3, v1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v0, "str":Ljava/lang/StringBuilder;
    nop

    .line 312
    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 313
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "h":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 315
    .local v4, "l":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    :cond_0
    if-le v4, v1, :cond_1

    .line 318
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 319
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_2

    .line 321
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    .end local v3    # "h":Ljava/lang/String;
    .end local v4    # "l":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encryptionMD5([B)Ljava/lang/String;
    .locals 4
    .param p0, "byteStr"    # [B

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v1, ""

    .line 265
    .local v1, "md5Str":Ljava/lang/String;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    move-object v0, v2

    .line 266
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 267
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 268
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 269
    .local v2, "byteArray":[B
    invoke-static {v2}, Lcom/langzu/baozha/ddutil/DDUtil;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 272
    .end local v2    # "byteArray":[B
    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 273
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v1
.end method

.method public static encryptionSHA1([B)Ljava/lang/String;
    .locals 7
    .param p0, "byteStr"    # [B

    .line 279
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 281
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 283
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    move-object v3, v1

    .line 290
    .local v3, "c":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 293
    goto :goto_1

    .line 291
    :catch_1
    move-exception v4

    .line 292
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 297
    .local v1, "hexString":Ljava/lang/String;
    :try_start_2
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 299
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 301
    .local v5, "publicKey":[B
    invoke-static {v5}, Lcom/langzu/baozha/ddutil/DDUtil;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v6

    .line 306
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "publicKey":[B
    :goto_2
    goto :goto_3

    .line 304
    :catch_2
    move-exception v4

    .line 305
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 305
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    goto :goto_3

    .line 302
    :catch_3
    move-exception v4

    .line 303
    .local v4, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 303
    .end local v4    # "e1":Ljava/security/NoSuchAlgorithmException;
    goto :goto_2

    .line 307
    :goto_3
    return-object v1
.end method

.method public static encryptionSHA256([B)Ljava/lang/String;
    .locals 7
    .param p0, "byteStr"    # [B

    .line 331
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 333
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 335
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    move-object v3, v1

    .line 342
    .local v3, "c":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 345
    goto :goto_1

    .line 343
    :catch_1
    move-exception v4

    .line 344
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 349
    .local v1, "hexString":Ljava/lang/String;
    :try_start_2
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 351
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 353
    .local v5, "publicKey":[B
    invoke-static {v5}, Lcom/langzu/baozha/ddutil/DDUtil;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v6

    .line 358
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "publicKey":[B
    :goto_2
    goto :goto_3

    .line 356
    :catch_2
    move-exception v4

    .line 357
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 357
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    goto :goto_3

    .line 354
    :catch_3
    move-exception v4

    .line 355
    .local v4, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 355
    .end local v4    # "e1":Ljava/security/NoSuchAlgorithmException;
    goto :goto_2

    .line 359
    :goto_3
    return-object v1
.end method

.method public static getAMapLocationFromStr(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 28
    .param p0, "dataString"    # Ljava/lang/String;

    .line 190
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const-string v1, "provider"

    invoke-static {v0, v1}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "provider":Ljava/lang/String;
    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const-string v2, "errorCode"

    invoke-static {v0, v2}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "errorCode":Ljava/lang/String;
    const-string v3, "address"

    invoke-static {v0, v3}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "address":Ljava/lang/String;
    const-string v4, "longitude"

    invoke-static {v0, v4}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "lon":Ljava/lang/String;
    const-string v5, "latitude"

    invoke-static {v0, v5}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "lat":Ljava/lang/String;
    const-string v6, "locationType"

    invoke-static {v0, v6}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "locationType":Ljava/lang/String;
    const-string v7, "accuracy"

    invoke-static {v0, v7}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "accuracy":Ljava/lang/String;
    const-string v8, "country"

    invoke-static {v0, v8}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, "country":Ljava/lang/String;
    const-string v9, "province"

    invoke-static {v0, v9}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "province":Ljava/lang/String;
    const-string v10, "city"

    invoke-static {v0, v10}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "city":Ljava/lang/String;
    const-string v11, "district"

    invoke-static {v0, v11}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, "district":Ljava/lang/String;
    const-string v12, "street"

    invoke-static {v0, v12}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, "street":Ljava/lang/String;
    const-string v13, "streetNum"

    invoke-static {v0, v13}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, "streetNum":Ljava/lang/String;
    const-string v14, "cityCode"

    invoke-static {v0, v14}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 206
    .local v14, "cityCode":Ljava/lang/String;
    const-string v15, "adCode"

    invoke-static {v0, v15}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 207
    .local v15, "adCode":Ljava/lang/String;
    move-object/from16 v16, v4

    const-string v4, "aoiName"

    .line 207
    .end local v4    # "lon":Ljava/lang/String;
    .local v16, "lon":Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "aoiName":Ljava/lang/String;
    move-object/from16 v17, v5

    const-string v5, "buildingId"

    .line 208
    .end local v5    # "lat":Ljava/lang/String;
    .local v17, "lat":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "buildingId":Ljava/lang/String;
    move-object/from16 v18, v5

    const-string v5, "floor"

    .line 209
    .end local v5    # "buildingId":Ljava/lang/String;
    .local v18, "buildingId":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "floor":Ljava/lang/String;
    move-object/from16 v19, v5

    const-string v5, "gpsAccuracyStatus"

    .line 210
    .end local v5    # "floor":Ljava/lang/String;
    .local v19, "floor":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "gpsAccuracyStatus":Ljava/lang/String;
    move-object/from16 v20, v5

    const-string v5, "time"

    .line 211
    .end local v5    # "gpsAccuracyStatus":Ljava/lang/String;
    .local v20, "gpsAccuracyStatus":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "time":Ljava/lang/String;
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "amapLocation":Lcom/amap/api/location/AMapLocation;
    move-object/from16 v21, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 214
    .end local v1    # "provider":Ljava/lang/String;
    .local v21, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 215
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 218
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    .line 219
    invoke-virtual {v0, v8}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v9}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v10}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v11}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v12}, Lcom/amap/api/location/AMapLocation;->setStreet(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, v13}, Lcom/amap/api/location/AMapLocation;->setNumber(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v14}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v15}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setAoiName(Ljava/lang/String;)V

    .line 228
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setBuildingId(Ljava/lang/String;)V

    .line 229
    .end local v18    # "buildingId":Ljava/lang/String;
    .local v1, "buildingId":Ljava/lang/String;
    move-object/from16 v22, v1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    .line 230
    .end local v19    # "floor":Ljava/lang/String;
    .local v1, "floor":Ljava/lang/String;
    .local v22, "buildingId":Ljava/lang/String;
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move-object/from16 v1, v20

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 230
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v20    # "gpsAccuracyStatus":Ljava/lang/String;
    .local v1, "gpsAccuracyStatus":Ljava/lang/String;
    .local v23, "floor":Ljava/lang/String;
    .local v24, "errorCode":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    .line 231
    move-object/from16 v25, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 231
    .end local v1    # "gpsAccuracyStatus":Ljava/lang/String;
    .local v25, "gpsAccuracyStatus":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    .line 232
    move-object/from16 v26, v3

    move-object/from16 v1, v17

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 232
    .end local v3    # "address":Ljava/lang/String;
    .end local v17    # "lat":Ljava/lang/String;
    .local v1, "lat":Ljava/lang/String;
    .local v26, "address":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 233
    move-object/from16 v27, v4

    move-object/from16 v2, v16

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 233
    .end local v4    # "aoiName":Ljava/lang/String;
    .end local v16    # "lon":Ljava/lang/String;
    .local v2, "lon":Ljava/lang/String;
    .local v27, "aoiName":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 235
    return-object v0

    .line 238
    .end local v0    # "amapLocation":Lcom/amap/api/location/AMapLocation;
    .end local v1    # "lat":Ljava/lang/String;
    .end local v2    # "lon":Ljava/lang/String;
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "locationType":Ljava/lang/String;
    .end local v7    # "accuracy":Ljava/lang/String;
    .end local v8    # "country":Ljava/lang/String;
    .end local v9    # "province":Ljava/lang/String;
    .end local v10    # "city":Ljava/lang/String;
    .end local v11    # "district":Ljava/lang/String;
    .end local v12    # "street":Ljava/lang/String;
    .end local v13    # "streetNum":Ljava/lang/String;
    .end local v14    # "cityCode":Ljava/lang/String;
    .end local v15    # "adCode":Ljava/lang/String;
    .end local v21    # "provider":Ljava/lang/String;
    .end local v22    # "buildingId":Ljava/lang/String;
    .end local v23    # "floor":Ljava/lang/String;
    .end local v24    # "errorCode":Ljava/lang/String;
    .end local v25    # "gpsAccuracyStatus":Ljava/lang/String;
    .end local v26    # "address":Ljava/lang/String;
    .end local v27    # "aoiName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAmapLocation()Lcom/amap/api/location/AMapLocation;
    .locals 1

    .line 74
    sget-object v0, Lcom/langzu/baozha/ddutil/DDUtil;->amapLocation:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public static getCinfImgUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "imgUri"    # Landroid/net/Uri;

    .line 58
    sget-object v0, Lcom/langzu/baozha/ddutil/DDUtil;->configImgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-object p0

    .line 61
    :cond_0
    sget-object v0, Lcom/langzu/baozha/ddutil/DDUtil;->configImgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigImgUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "imgUrl"    # Ljava/lang/String;

    .line 50
    const-string v0, "0.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigImgUrl----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/langzu/baozha/ddutil/DDUtil;->configImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/langzu/baozha/ddutil/DDUtil;->configImgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    return-object p0

    .line 54
    :cond_0
    sget-object v0, Lcom/langzu/baozha/ddutil/DDUtil;->configImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getMyJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12
    .param p0, "jsonO"    # Lorg/json/JSONObject;

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "0.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fee\u6539\u524djson-----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "text":Ljava/lang/String;
    const-string v2, "0.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fee\u6539\u524djson_test-----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "startstr":Ljava/lang/String;
    const-string v4, "{"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 415
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v4

    .line 419
    const/4 v4, 0x1

    :try_start_1
    const-string v5, "UT"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 420
    .local v5, "UT":Lorg/json/JSONObject;
    const-string v6, "params"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 421
    .local v6, "params":Lorg/json/JSONObject;
    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 422
    .local v7, "result":Lorg/json/JSONObject;
    const-string v8, "needConfirm"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 423
    const-string v8, "needConfirmForSecurity"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 424
    const-string v8, "status"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    const-string v8, "atCheckResultTabInfo"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 426
    const-string v8, "securityConfirmVO"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    const-string v8, "result"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v8, "params"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v8, "UT"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 431
    const-string v8, "\\\\"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v8

    .line 434
    .end local v5    # "UT":Lorg/json/JSONObject;
    .end local v6    # "params":Lorg/json/JSONObject;
    .end local v7    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 432
    :catch_0
    move-exception v5

    .line 438
    :goto_0
    :try_start_2
    const-string v5, "oa_clound_attend_lwp_res"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 439
    .local v5, "oa_clound_attend_lwp_res":Lorg/json/JSONObject;
    const-string v6, "res"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 440
    .local v6, "res":Lorg/json/JSONObject;
    const-string v7, "isTrusted"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 441
    const-string v7, "_nativeDefaultPrevented"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 442
    const-string v7, "detail"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 443
    .local v7, "detail":Lorg/json/JSONObject;
    const-string v8, "value"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, "value":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 445
    .local v9, "valueJson":Lorg/json/JSONObject;
    const-string v10, "errorCode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    const-string v10, "errorMsg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    const-string v10, "checkResult"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 448
    .local v10, "checkResult":Lorg/json/JSONObject;
    const-string v11, "atCheckResultTabInfo"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    const-string v11, "securityConfirmVO"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    const-string v11, "needConfirm"

    invoke-virtual {v10, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 451
    const-string v11, "needConfirmForSecurity"

    invoke-virtual {v10, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 452
    const-string v3, "status"

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    const-string v3, "checkResult"

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    .end local v8    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    const-string v4, "\""

    const-string v8, "\\\\\""

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    const-string v4, "value"

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v4, "detail"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string v4, "res"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v4, "oa_clound_attend_lwp_res"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v4

    .line 463
    .end local v3    # "value":Ljava/lang/String;
    .end local v5    # "oa_clound_attend_lwp_res":Lorg/json/JSONObject;
    .end local v6    # "res":Lorg/json/JSONObject;
    .end local v7    # "detail":Lorg/json/JSONObject;
    .end local v9    # "valueJson":Lorg/json/JSONObject;
    .end local v10    # "checkResult":Lorg/json/JSONObject;
    goto :goto_1

    .line 461
    :catch_1
    move-exception v3

    .line 465
    :goto_1
    :try_start_3
    const-string v3, "0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4fee\u6539\u540ejson_test-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v3, "text"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v3, "0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4fee\u6539\u540ejson-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 470
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "startstr":Ljava/lang/String;
    goto :goto_2

    .line 468
    :catch_2
    move-exception v1

    .line 471
    :goto_2
    return-object p0
.end method

.method public static getMybssid()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/langzu/baozha/ddutil/DDUtil;->mybssid:Ljava/lang/String;

    return-object v0
.end method

.method public static getMyssid()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/langzu/baozha/ddutil/DDUtil;->myssid:Ljava/lang/String;

    return-object v0
.end method

.method public static getStrFromAMapLocation(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;
    .locals 4
    .param p0, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    .line 137
    const-string v0, ""

    .line 139
    .local v0, "locationInfo":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "provider":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1    # "provider":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&locationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&province="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&district="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&street="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_6
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreetNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&streetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreetNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_7
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&cityCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_8
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&adCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAoiName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&aoiName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAoiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_a
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getBuildingId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&buildingId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_b
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&floor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getFloor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&gpsAccuracyStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getGpsAccuracyStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method public static getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 88
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "paramUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 91
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "arrTemp":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 93
    .local v6, "str":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "qs":[Ljava/lang/String;
    aget-object v8, v7, v3

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 95
    aget-object v1, v7, v1

    return-object v1

    .line 92
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "qs":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "paramUrl":Ljava/lang/String;
    .end local v2    # "arrTemp":[Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static initBaozha(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.langzu.baozha"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 108
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 110
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 112
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v2

    .line 112
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 113
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "ise":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x1

    .line 83
    :cond_1
    return v0
.end method

.method public static logSignature(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 244
    .local v0, "signaturesArr":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 245
    .local v1, "sign":Landroid/content/pm/Signature;
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/langzu/baozha/ddutil/DDUtil;->encryptionMD5([B)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "md5Str":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/langzu/baozha/ddutil/DDUtil;->encryptionSHA1([B)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "sha1Str":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/langzu/baozha/ddutil/DDUtil;->encryptionSHA256([B)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "sha256Str":Ljava/lang/String;
    const-string v5, "0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "md5--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v5, "0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sha1--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v5, "0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sha256--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "signaturesArr":[Landroid/content/pm/Signature;
    .end local v1    # "sign":Landroid/content/pm/Signature;
    .end local v2    # "md5Str":Ljava/lang/String;
    .end local v3    # "sha1Str":Ljava/lang/String;
    .end local v4    # "sha256Str":Ljava/lang/String;
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 254
    :goto_0
    return-void
.end method

.method public static setAmapLocation(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p0, "myLocation"    # Lcom/amap/api/location/AMapLocation;

    .line 69
    sput-object p0, Lcom/langzu/baozha/ddutil/DDUtil;->amapLocation:Lcom/amap/api/location/AMapLocation;

    .line 70
    return-void
.end method

.method public static setConfigImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p0, "configImgUrl"    # Ljava/lang/String;

    .line 65
    sput-object p0, Lcom/langzu/baozha/ddutil/DDUtil;->configImgUrl:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static setConfigInfo(Landroid/content/Intent;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 119
    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "dataString":Ljava/lang/String;
    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const-string v2, "ssid"

    invoke-static {v1, v2}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "ssid":Ljava/lang/String;
    const-string v3, "bssid"

    invoke-static {v1, v3}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "bssid":Ljava/lang/String;
    const-string v4, "configImgUrl"

    invoke-static {v1, v4}, Lcom/langzu/baozha/ddutil/DDUtil;->getUrlParma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "configImgUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/langzu/baozha/ddutil/DDUtil;->setMyssid(Ljava/lang/String;)V

    .line 128
    invoke-static {v3}, Lcom/langzu/baozha/ddutil/DDUtil;->setMybssid(Ljava/lang/String;)V

    .line 129
    invoke-static {v4}, Lcom/langzu/baozha/ddutil/DDUtil;->setConfigImgUrl(Ljava/lang/String;)V

    .line 131
    invoke-static {v1}, Lcom/langzu/baozha/ddutil/DDUtil;->getAMapLocationFromStr(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v5

    invoke-static {v5}, Lcom/langzu/baozha/ddutil/DDUtil;->setAmapLocation(Lcom/amap/api/location/AMapLocation;)V

    .line 135
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v4    # "configImgUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setMybssid(Ljava/lang/String;)V
    .locals 0
    .param p0, "mybssid"    # Ljava/lang/String;

    .line 45
    sput-object p0, Lcom/langzu/baozha/ddutil/DDUtil;->mybssid:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static setMyssid(Ljava/lang/String;)V
    .locals 0
    .param p0, "myssid"    # Ljava/lang/String;

    .line 36
    sput-object p0, Lcom/langzu/baozha/ddutil/DDUtil;->myssid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static testAmapLocation(Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p0, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    .line 393
    if-eqz p0, :cond_0

    .line 394
    const-string v0, "0.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test---getErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 396
    const-string v0, "0.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test---getAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v0, "0.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test---getLongitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v0, "0.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test---getLatitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :cond_0
    const-string v0, "0.0"

    const-string v1, "test---amapLocation==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    :goto_0
    return-void
.end method

.method public static testLog()V
    .locals 2

    .line 364
    const-string v0, "0.0"

    const-string v1, "testLog___000000000"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public static testLog(I)V
    .locals 3
    .param p0, "arg"    # I

    .line 389
    const-string v0, "0.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testLog___333333333:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public static testLog(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "arg"    # Ljava/lang/Boolean;

    .line 385
    const-string v0, "0.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testLog___222222222:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public static testLog(Ljava/lang/String;)V
    .locals 7
    .param p0, "arg"    # Ljava/lang/String;

    .line 370
    const/16 v0, 0xc00

    .line 371
    .local v0, "segmentSize":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    .line 372
    .local v1, "length":J
    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 373
    const-string v3, "0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testLog___111111111:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 376
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "logContent":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 378
    const-string v4, "0.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testLog___111111111_start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v3    # "logContent":Ljava/lang/String;
    goto :goto_0

    .line 380
    :cond_1
    const-string v3, "0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testLog___111111111_end:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_1
    return-void
.end method
