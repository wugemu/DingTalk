.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
.super Ljava/lang/Object;
.source "SNGeoContentObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x73f1c14555072214L


# instance fields
.field public extension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public latitude:F

.field public longitude:F

.field public poiSubTitle:Ljava/lang/String;

.field public poiTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiSubTitle:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .local v0, "extensionSize":I
    if-lez v0, :cond_0

    .line 180
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    .prologue
    .line 105
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;-><init>()V

    .line 107
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->latitude:Ljava/lang/Float;

    invoke-static {v1}, Lcoc;->a(Ljava/lang/Float;)F

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->longitude:Ljava/lang/Float;

    invoke-static {v1}, Lcoc;->a(Ljava/lang/Float;)F

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->poiTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->poiSubTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiSubTitle:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    .locals 8
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 71
    :cond_0
    :goto_0
    return-object v3

    .line 57
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;-><init>()V

    .line 59
    .local v3, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    const-string/jumbo v5, "latitude"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    .line 60
    const-string/jumbo v5, "longitude"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    .line 61
    const-string/jumbo v5, "poiTitle"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 62
    const-string/jumbo v5, "poiSubTitle"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiSubTitle:Ljava/lang/String;

    .line 63
    const-string/jumbo v5, "extension"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->getMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbqh;->a(Ljava/lang/String;)V

    move-object v3, v4

    .line 71
    goto :goto_0
.end method

.method private static getJSONString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
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
    .local p0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 88
    invoke-static {p0}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 101
    :goto_0
    return-object v3

    .line 92
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2076
    const/4 v5, 0x0

    invoke-static {v5, v3}, Lbqh;->a(ZLjava/lang/String;)V

    move-object v3, v4

    .line 101
    goto :goto_0

    .line 97
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method private static getMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2018
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static inflateFrom(Lcom/amap/api/services/core/PoiItem;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    .locals 4
    .param p0, "poiItem"    # Lcom/amap/api/services/core/PoiItem;

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 121
    .local v0, "point":Lcom/amap/api/services/core/LatLonPoint;
    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;-><init>()V

    .line 126
    .local v1, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    .line 127
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    .line 128
    invoke-virtual {p0}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiSubTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .prologue
    .line 134
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;-><init>()V

    .line 136
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->latitude:Ljava/lang/Float;

    .line 137
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->longitude:Ljava/lang/Float;

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->poiTitle:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiSubTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->poiSubTitle:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;->extension:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getGeoContentJSON()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "latitude"

    iget v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v2, "longitude"

    iget v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v2, "poiTitle"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v2, "poiSubTitle"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string/jumbo v2, "extension"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->getJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    goto :goto_0
.end method

.method toIdl()Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;
    .locals 1

    .prologue
    .line 145
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->latitude:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 156
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->longitude:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->poiSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->extension:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    :cond_1
    return-void
.end method
