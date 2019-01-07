.class public Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
.super Ljava/lang/Object;
.source "CircleGeoContentObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x73f1c14555072214L


# instance fields
.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

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
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public longitude:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public picMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public poiSubTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public poiTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->picMediaId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiSubTitle:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "extensionSize":I
    if-lez v0, :cond_0

    .line 206
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static fromIdl(Lfeg;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    .locals 2
    .param p0, "model"    # Lfeg;

    .prologue
    .line 122
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;-><init>()V

    .line 124
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    iget-object v1, p0, Lfeg;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->picMediaId:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lfeg;->b:Ljava/lang/Float;

    invoke-static {v1}, Lcoc;->a(Ljava/lang/Float;)F

    move-result v1

    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    .line 126
    iget-object v1, p0, Lfeg;->c:Ljava/lang/Float;

    invoke-static {v1}, Lcoc;->a(Ljava/lang/Float;)F

    move-result v1

    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    .line 127
    iget-object v1, p0, Lfeg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lfeg;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiSubTitle:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lfeg;->f:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    goto :goto_0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    .locals 8
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 88
    :cond_0
    :goto_0
    return-object v3

    .line 73
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;-><init>()V

    .line 75
    .local v3, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    const-string/jumbo v5, "picMediaId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->picMediaId:Ljava/lang/String;

    .line 76
    const-string/jumbo v5, "latitude"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    .line 77
    const-string/jumbo v5, "longitude"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    .line 78
    const-string/jumbo v5, "poiTitle"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 79
    const-string/jumbo v5, "poiSubTitle"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiSubTitle:Ljava/lang/String;

    .line 80
    const-string/jumbo v5, "extension"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->getMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lffe;->a(Ljava/lang/String;)V

    move-object v3, v4

    .line 88
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

    .line 105
    invoke-static {p0}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 118
    :goto_0
    return-object v3

    .line 109
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 111
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

    .line 112
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

    .line 115
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2060
    const/4 v5, 0x0

    invoke-static {v5, v3}, Lffe;->a(ZLjava/lang/String;)V

    move-object v3, v4

    .line 118
    goto :goto_0

    .line 114
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

    .line 93
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static inflateFrom(Lcom/amap/api/services/core/PoiItem;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    .locals 4
    .param p0, "poiItem"    # Lcom/amap/api/services/core/PoiItem;

    .prologue
    const/4 v1, 0x0

    .line 134
    if-nez p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v1

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 139
    .local v0, "point":Lcom/amap/api/services/core/LatLonPoint;
    if-eqz v0, :cond_0

    .line 143
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;-><init>()V

    .line 144
    .local v1, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    .line 145
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    .line 146
    invoke-virtual {p0}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiSubTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;)Lfeg;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .prologue
    .line 152
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lfeg;

    invoke-direct {v0}, Lfeg;-><init>()V

    .line 154
    .local v0, "result":Lfeg;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->picMediaId:Ljava/lang/String;

    iput-object v1, v0, Lfeg;->a:Ljava/lang/String;

    .line 155
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lfeg;->b:Ljava/lang/Float;

    .line 156
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lfeg;->c:Ljava/lang/Float;

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    iput-object v1, v0, Lfeg;->d:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiSubTitle:Ljava/lang/String;

    iput-object v1, v0, Lfeg;->e:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lfeg;->f:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getGeoContentJSON()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "picMediaId"

    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->picMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v2, "latitude"

    iget v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v2, "longitude"

    iget v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v2, "poiTitle"

    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v2, "poiSubTitle"

    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v2, "extension"

    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->getJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    goto :goto_0
.end method

.method toIdl()Lfeg;
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;)Lfeg;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->picMediaId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->latitude:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 176
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->longitude:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 177
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->poiSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->extension:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    :cond_2
    return-void
.end method
