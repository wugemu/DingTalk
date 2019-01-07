.class public Lcom/ta/audid/store/RSModle;
.super Ljava/lang/Object;
.source "RSModle.java"


# static fields
.field private static final BODY:Ljava/lang/String; = "{\"src\":%s,\"target\":%s}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "udidSrc"    # Ljava/lang/String;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "appname"    # Ljava/lang/String;
    .param p3, "utdidTarget"    # Ljava/lang/String;
    .param p4, "appkeyTarget"    # Ljava/lang/String;
    .param p5, "appnameTarget"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string/jumbo v0, "{\"src\":%s,\"target\":%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 20
    invoke-static {p0, p1, p2}, Lcom/ta/audid/store/RSModle;->buildSortJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 21
    invoke-static {p3, p4, p5}, Lcom/ta/audid/store/RSModle;->buildSortJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSortJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "utdid"    # Ljava/lang/String;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "utdid"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string/jumbo v2, "appkey"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string/jumbo v2, "appName"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->sortMapByKey(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 30
    .local v1, "sortHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
