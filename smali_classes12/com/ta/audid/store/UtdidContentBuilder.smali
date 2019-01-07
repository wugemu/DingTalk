.class public Lcom/ta/audid/store/UtdidContentBuilder;
.super Ljava/lang/Object;
.source "UtdidContentBuilder.java"


# static fields
.field private static final BODY:Ljava/lang/String; = "{\"type\":\"%s\",\"timestamp\":%s,\"data\":%s}"

.field public static final TYPE_AUDID:Ljava/lang/String; = "audid"

.field public static final TYPE_FP:Ljava/lang/String; = "fp"

.field public static final TYPE_RS:Ljava/lang/String; = "rs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAudidDataJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "utdid"    # Ljava/lang/String;
    .param p1, "audid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appname"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "audid"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v2, "utdid"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v2, "appkey"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v2, "appName"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->sortMapByKey(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 46
    .local v1, "sortHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildFPDataJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "utdid"    # Ljava/lang/String;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "utdid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v1, "appkey"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "appName"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "fp_info"

    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/audid/collect/DeviceFPCollect;->getFPInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildRS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "udidSrc"    # Ljava/lang/String;
    .param p1, "utdidTarget"    # Ljava/lang/String;
    .param p2, "appkeyTarget"    # Ljava/lang/String;
    .param p3, "appnameTarget"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 52
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_0

    .line 53
    const-string/jumbo v0, ""

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v7, "{\"type\":\"%s\",\"timestamp\":%s,\"data\":%s}"

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "rs"

    aput-object v1, v8, v0

    const/4 v0, 0x1

    .line 59
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getCurrentTimeMillisString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v9, 0x2

    .line 60
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/ta/audid/store/RSModle;->buildJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    .line 57
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->getStringWithoutBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildUDID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "utdid"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 29
    const-string/jumbo v1, ""

    .line 32
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "{\"type\":\"%s\",\"timestamp\":%s,\"data\":%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "audid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 35
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ta/audid/Variables;->getCurrentTimeMillisString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 36
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readAudidFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ta/audid/Variables;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/ta/audid/store/UtdidContentBuilder;->buildAudidDataJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 33
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->getStringWithoutBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static buildUtdidFp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "utdid"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v1, ""

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "{\"type\":\"%s\",\"timestamp\":%s,\"data\":%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 73
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ta/audid/Variables;->getCurrentTimeMillisString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 74
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ta/audid/Variables;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/ta/audid/store/UtdidContentBuilder;->buildFPDataJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 71
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->getStringWithoutBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRS_MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "rs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/audid/utils/MD5Utils;->getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 99
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v3

    const-string/jumbo v3, ""

    goto :goto_0

    .line 99
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method
