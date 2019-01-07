.class public final Lhdo;
.super Ljava/lang/Object;
.source "RuntimeUtil.java"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "WEB"

    sput-object v0, Lhdo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IF)I
    .locals 9
    .param p0, "startColor"    # I
    .param p1, "franch"    # F

    .prologue
    .line 182
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 183
    .local v4, "startAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 184
    .local v7, "startRed":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 185
    .local v6, "startGreen":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 188
    .local v5, "startBlue":I
    int-to-float v8, v4

    mul-float/2addr v8, p1

    float-to-int v0, v8

    .line 189
    .local v0, "currentAlpha":I
    int-to-float v8, v7

    mul-float/2addr v8, p1

    float-to-int v3, v8

    .line 190
    .local v3, "currentRed":I
    int-to-float v8, v6

    mul-float/2addr v8, p1

    float-to-int v2, v8

    .line 191
    .local v2, "currentGreen":I
    int-to-float v8, v5

    mul-float/2addr v8, p1

    float-to-int v1, v8

    .line 194
    .local v1, "currentBlue":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 5
    .param p0, "longStr"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 373
    const-wide v0, 0x7fffffffffffffffL

    .line 375
    .local v0, "result":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 379
    :goto_0
    return-wide v0

    .line 377
    :catch_0
    move-exception v2

    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "RuntimeUtil"

    const-string/jumbo v4, "parseLong error"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "normalColor"    # I
    .param p1, "selectedColor"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 144
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 145
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    if-ne p0, v3, :cond_0

    move-object v1, v2

    .line 146
    .local v1, "normal":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ne p1, v3, :cond_1

    .line 149
    .local v2, "select":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 153
    return-object v0

    .line 145
    .end local v1    # "normal":Landroid/graphics/drawable/Drawable;
    .end local v2    # "select":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 146
    .restart local v1    # "normal":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 223
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "content":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "http"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    const-string/jumbo v5, "CLOUD_SETTING_WEBVIEW_GET_DOMAIN_NEW"

    invoke-static {v5, v11}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 313
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, ""

    sget-object v7, Lhdo;->a:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "getDomain in RuntimeUtil exception: "

    aput-object v10, v8, v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 321
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v5, "(?<=//|)((\\w)+\\.)+\\w+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 322
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 323
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;F)Ljava/lang/String;
    .locals 13
    .param p0, "startColor"    # Ljava/lang/String;
    .param p1, "franch"    # F

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/16 v9, 0x10

    .line 165
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 166
    .local v4, "startAlpha":I
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 167
    .local v7, "startRed":I
    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 168
    .local v6, "startGreen":I
    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 170
    .local v5, "startBlue":I
    int-to-float v8, v4

    mul-float/2addr v8, p1

    float-to-int v0, v8

    .line 171
    .local v0, "currentAlpha":I
    int-to-float v8, v7

    mul-float/2addr v8, p1

    float-to-int v3, v8

    .line 172
    .local v3, "currentRed":I
    int-to-float v8, v6

    mul-float/2addr v8, p1

    float-to-int v2, v8

    .line 173
    .local v2, "currentGreen":I
    int-to-float v8, v5

    mul-float/2addr v8, p1

    float-to-int v1, v8

    .line 175
    .local v1, "currentBlue":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lhdo;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lhdo;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 176
    invoke-static {v2}, Lhdo;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lhdo;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 351
    .line 1332
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcms;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    const-string/jumbo v0, "zh_CN"

    .line 1355
    :goto_0
    const-string/jumbo v1, ""

    .line 1356
    if-eqz p0, :cond_8

    .line 1357
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1359
    const-string/jumbo v0, "zh_CN"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    :cond_0
    :goto_1
    return-object v0

    .line 1334
    :cond_1
    invoke-static {}, Lcms;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1335
    const-string/jumbo v0, "zh_TW"

    goto :goto_0

    .line 1336
    :cond_2
    invoke-static {}, Lcms;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1337
    const-string/jumbo v0, "zh_HK"

    goto :goto_0

    .line 1338
    :cond_3
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1339
    const-string/jumbo v0, "zh_CN"

    goto :goto_0

    .line 1340
    :cond_4
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1341
    const-string/jumbo v0, "en_US"

    goto :goto_0

    .line 1342
    :cond_5
    invoke-static {}, Lcms;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1343
    const-string/jumbo v0, "vi_VN"

    goto :goto_0

    .line 1344
    :cond_6
    invoke-static {}, Lcms;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1345
    const-string/jumbo v0, "ja_JP"

    goto :goto_0

    .line 1347
    :cond_7
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # [B

    .prologue
    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 120
    .local v6, "result":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 124
    .local v1, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    const/16 v8, 0x2000

    :try_start_1
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 127
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_0

    .line 128
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 131
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 132
    .end local v4    # "in":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 136
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v6

    .line 130
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_0
    :try_start_3
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .end local v6    # "result":Ljava/lang/String;
    .local v7, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 136
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    move-object v3, v4

    .line 138
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 135
    .end local v5    # "len":I
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 136
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v8

    .line 135
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 131
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 242
    if-eqz p0, :cond_0

    .line 243
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 244
    .local v0, "gaa":Lcom/google/android/gms/common/GoogleApiAvailability;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 246
    .local v1, "retCode":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 250
    .end local v0    # "gaa":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v1    # "retCode":I
    :cond_0
    return v2
.end method

.method public static a(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "param"    # Ljava/lang/Boolean;

    .prologue
    .line 366
    if-nez p0, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Z

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 259
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v2, v5, :cond_0

    .line 261
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "IMEngine is not initialized!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_0
    const-string/jumbo v2, "RuntimeConfig"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "cloudSetting"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "not init"

    aput-object v8, v7, v4

    const-string/jumbo v4, "key: "

    aput-object v4, v7, v3

    aput-object p0, v7, v9

    const-string/jumbo v3, "value: "

    aput-object v3, v7, v10

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v11

    .line 263
    invoke-static {v2, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    .end local p1    # "df":Z
    :goto_0
    return p1

    .line 268
    .restart local p1    # "df":Z
    :cond_1
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "dt_function"

    invoke-interface {v2, v5, p0}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 269
    .local v0, "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_3

    .line 270
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 272
    const-string/jumbo v2, "RuntimeConfig"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "cloudSetting"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "from cs"

    aput-object v8, v7, v4

    const-string/jumbo v8, "key: "

    aput-object v8, v7, v3

    aput-object p0, v7, v9

    const-string/jumbo v8, "value: "

    aput-object v8, v7, v10

    aput-object v1, v7, v11

    invoke-static {v2, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-static {v1}, Ligb;->f(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v4

    goto :goto_0

    .line 278
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "RuntimeConfig"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "cloudSetting"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "not from cs"

    aput-object v8, v7, v4

    const-string/jumbo v4, "key: "

    aput-object v4, v7, v3

    aput-object p0, v7, v9

    const-string/jumbo v3, "value: "

    aput-object v3, v7, v10

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v11

    .line 278
    invoke-static {v2, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(I)Landroid/app/ActivityManager$AppTask;
    .locals 5
    .param p0, "taskId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 229
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 232
    .local v1, "appTask":Landroid/app/ActivityManager$AppTask;
    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne p0, v4, :cond_0

    .line 238
    .end local v1    # "appTask":Landroid/app/ActivityManager$AppTask;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    .local v0, "isConfigSwitchEnabled":Z
    const-string/jumbo v1, "RuntimeConfig"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "configSwitch"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "key: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "value:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 293
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 292
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    return v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 203
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    return-object v0
.end method
