.class public Lcom/amap/api/services/a/n;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# direct methods
.method private static A(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1142
    :goto_0
    return-object v0

    .line 1130
    :cond_0
    const-string/jumbo v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1131
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1132
    goto :goto_0

    .line 1134
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1135
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1136
    if-eqz v3, :cond_2

    .line 1139
    invoke-static {v3}, Lcom/amap/api/services/a/n;->z(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v3

    .line 1140
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1142
    goto :goto_0
.end method

.method private static B(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/Railway;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1170
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    const-string/jumbo v0, "alters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1157
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1158
    goto :goto_0

    .line 1160
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1161
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1162
    if-eqz v3, :cond_2

    .line 1165
    new-instance v4, Lcom/amap/api/services/route/Railway;

    invoke-direct {v4}, Lcom/amap/api/services/route/Railway;-><init>()V

    .line 1166
    const-string/jumbo v5, "id"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/route/Railway;->setID(Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v5, "name"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/route/Railway;->setName(Ljava/lang/String;)V

    .line 1168
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1170
    goto :goto_0
.end method

.method private static C(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwaySpace;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1196
    :goto_0
    return-object v0

    .line 1184
    :cond_0
    const-string/jumbo v0, "spaces"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1185
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1186
    goto :goto_0

    .line 1188
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1189
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1190
    if-eqz v3, :cond_2

    .line 1193
    invoke-static {v3}, Lcom/amap/api/services/a/n;->D(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwaySpace;

    move-result-object v3

    .line 1194
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1196
    goto :goto_0
.end method

.method private static D(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwaySpace;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1206
    const-string/jumbo v0, "code"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    const-string/jumbo v1, "cost"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    .line 1208
    new-instance v2, Lcom/amap/api/services/route/RailwaySpace;

    invoke-direct {v2, v0, v1}, Lcom/amap/api/services/route/RailwaySpace;-><init>(Ljava/lang/String;F)V

    .line 1209
    return-object v2
.end method

.method private static E(Lorg/json/JSONObject;)Lcom/amap/api/services/route/TaxiItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1217
    if-nez p0, :cond_0

    .line 1218
    const/4 v0, 0x0

    .line 1227
    :goto_0
    return-object v0

    .line 1220
    :cond_0
    new-instance v0, Lcom/amap/api/services/route/TaxiItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/TaxiItem;-><init>()V

    .line 1221
    const-string/jumbo v1, "origin"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1222
    const-string/jumbo v1, "destination"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1223
    const-string/jumbo v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setDistance(F)V

    .line 1224
    const-string/jumbo v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setDuration(F)V

    .line 1225
    const-string/jumbo v1, "sname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setSname(Ljava/lang/String;)V

    .line 1226
    const-string/jumbo v1, "tname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setTname(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static F(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1777
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1791
    :goto_0
    return-object v0

    .line 1780
    :cond_0
    const-string/jumbo v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1781
    goto :goto_0

    .line 1783
    :cond_1
    const-string/jumbo v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1784
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1785
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1786
    new-instance v4, Lcom/amap/api/services/poisearch/Photo;

    invoke-direct {v4}, Lcom/amap/api/services/poisearch/Photo;-><init>()V

    .line 1787
    const-string/jumbo v5, "title"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/Photo;->setTitle(Ljava/lang/String;)V

    .line 1788
    const-string/jumbo v5, "url"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/poisearch/Photo;->setUrl(Ljava/lang/String;)V

    .line 1789
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1784
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1791
    goto :goto_0
.end method

.method private static G(Lorg/json/JSONObject;)Lcom/amap/api/services/routepoisearch/RoutePOIItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1835
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOIItem;

    invoke-direct {v0}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;-><init>()V

    .line 1836
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setID(Ljava/lang/String;)V

    .line 1837
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setTitle(Ljava/lang/String;)V

    .line 1838
    const-string/jumbo v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1839
    const-string/jumbo v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setDistance(F)V

    .line 1840
    const-string/jumbo v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setDuration(F)V

    .line 1841
    return-object v0
.end method

.method private static H(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RidePath;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1894
    new-instance v1, Lcom/amap/api/services/route/RidePath;

    invoke-direct {v1}, Lcom/amap/api/services/route/RidePath;-><init>()V

    .line 1895
    if-nez p0, :cond_1

    .line 1934
    :cond_0
    :goto_0
    return-object v0

    .line 1899
    :cond_1
    :try_start_0
    const-string/jumbo v2, "distance"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/RidePath;->setDistance(F)V

    .line 1900
    const-string/jumbo v2, "duration"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/route/RidePath;->setDuration(J)V

    .line 1901
    const-string/jumbo v2, "rides"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1902
    const-string/jumbo v2, "rides"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1903
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1904
    if-eqz v2, :cond_0

    .line 1908
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1909
    new-instance v4, Lcom/amap/api/services/route/RideStep;

    invoke-direct {v4}, Lcom/amap/api/services/route/RideStep;-><init>()V

    .line 1910
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1911
    if-eqz v5, :cond_2

    .line 1914
    const-string/jumbo v6, "instruction"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setInstruction(Ljava/lang/String;)V

    .line 1916
    const-string/jumbo v6, "orientation"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setOrientation(Ljava/lang/String;)V

    .line 1918
    const-string/jumbo v6, "road"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setRoad(Ljava/lang/String;)V

    .line 1919
    const-string/jumbo v6, "distance"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setDistance(F)V

    .line 1921
    const-string/jumbo v6, "duration"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setDuration(F)V

    .line 1923
    const-string/jumbo v6, "polyline"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setPolyline(Ljava/util/List;)V

    .line 1924
    const-string/jumbo v6, "action"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/route/RideStep;->setAction(Ljava/lang/String;)V

    .line 1926
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1928
    :cond_3
    invoke-virtual {v1, v3}, Lcom/amap/api/services/route/RidePath;->setSteps(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    .line 1934
    goto/16 :goto_0

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseRidePath"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 793
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 794
    const-string/jumbo v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    const/4 v0, 0x0

    .line 818
    :cond_0
    :goto_0
    return-object v0

    .line 797
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/BusRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusRouteResult;-><init>()V

    .line 798
    const-string/jumbo v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 799
    if-eqz v1, :cond_0

    .line 802
    const-string/jumbo v2, "origin"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 803
    const-string/jumbo v2, "destination"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 805
    const-string/jumbo v2, "taxi_cost"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTaxiCost(F)V

    .line 806
    const-string/jumbo v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    const-string/jumbo v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 810
    if-eqz v1, :cond_0

    .line 813
    invoke-static {v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 814
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1599
    if-nez p0, :cond_1

    .line 1600
    const-string/jumbo v0, ""

    .line 1606
    :cond_0
    :goto_0
    return-object v0

    .line 1602
    :cond_1
    const-string/jumbo v0, ""

    .line 1603
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1604
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    const-string/jumbo v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const-string/jumbo v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 127
    if-nez v2, :cond_1

    move-object v0, v1

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 131
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 132
    if-eqz v3, :cond_2

    .line 135
    const-string/jumbo v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    const-string/jumbo v5, "citycode"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    const-string/jumbo v6, "adcode"

    invoke-static {v3, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    const-string/jumbo v7, "num"

    invoke-static {v3, v7}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v3

    .line 139
    new-instance v7, Lcom/amap/api/services/core/SuggestionCity;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/amap/api/services/core/SuggestionCity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 143
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/nearby/NearbyInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    const-string/jumbo v0, "datas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 72
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :goto_0
    return-object v0

    .line 75
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 77
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_4

    .line 78
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 79
    const-string/jumbo v0, "userid"

    invoke-static {v8, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    const-string/jumbo v0, "location"

    invoke-static {v8, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 81
    const-wide/16 v2, 0x0

    .line 82
    const-wide/16 v0, 0x0

    .line 83
    if-eqz v10, :cond_2

    .line 84
    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 85
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 86
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->l(Ljava/lang/String;)D

    move-result-wide v2

    .line 87
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->l(Ljava/lang/String;)D

    move-result-wide v0

    .line 91
    :cond_2
    const-string/jumbo v10, "distance"

    invoke-static {v8, v10}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    const-string/jumbo v11, "updatetime"

    invoke-static {v8, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-static {v8}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v12

    .line 94
    invoke-static {v10}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v8

    .line 95
    new-instance v10, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 96
    new-instance v0, Lcom/amap/api/services/nearby/NearbyInfo;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbyInfo;-><init>()V

    .line 97
    invoke-virtual {v0, v9}, Lcom/amap/api/services/nearby/NearbyInfo;->setUserID(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v12, v13}, Lcom/amap/api/services/nearby/NearbyInfo;->setTimeStamp(J)V

    .line 99
    invoke-virtual {v0, v10}, Lcom/amap/api/services/nearby/NearbyInfo;->setPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 100
    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {v0, v8}, Lcom/amap/api/services/nearby/NearbyInfo;->setDrivingDistance(I)V

    .line 105
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v0, v8}, Lcom/amap/api/services/nearby/NearbyInfo;->setDistance(I)V

    goto :goto_2

    :cond_4
    move-object v0, v4

    .line 108
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 829
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 830
    if-nez p0, :cond_0

    move-object v0, v7

    .line 873
    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    .line 833
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 836
    new-instance v8, Lcom/amap/api/services/route/BusPath;

    invoke-direct {v8}, Lcom/amap/api/services/route/BusPath;-><init>()V

    .line 837
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_2

    .line 841
    const-string/jumbo v3, "cost"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setCost(F)V

    .line 842
    const-string/jumbo v3, "duration"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/amap/api/services/route/BusPath;->setDuration(J)V

    .line 843
    const-string/jumbo v3, "nightflag"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->n(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setNightBus(Z)V

    .line 844
    const-string/jumbo v3, "walking_distance"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 846
    const-string/jumbo v3, "distance"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setDistance(F)V

    .line 847
    const-string/jumbo v3, "segments"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 848
    if-eqz v9, :cond_2

    .line 851
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move v0, v4

    move v5, v4

    .line 852
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 853
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 854
    if-eqz v6, :cond_6

    .line 857
    invoke-static {v6}, Lcom/amap/api/services/a/n;->o(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;

    move-result-object v11

    .line 858
    if-eqz v11, :cond_6

    .line 861
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 863
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/api/services/route/RouteBusWalkItem;->getDistance()F

    move-result v6

    add-float/2addr v0, v6

    move v6, v0

    .line 864
    :goto_3
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 865
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getDistance()F

    move-result v0

    add-float/2addr v5, v0

    move v12, v6

    move v6, v5

    move v5, v12

    .line 852
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v5

    move v5, v6

    goto :goto_2

    .line 867
    :cond_1
    invoke-virtual {v8, v10}, Lcom/amap/api/services/route/BusPath;->setSteps(Ljava/util/List;)V

    .line 868
    invoke-virtual {v8, v5}, Lcom/amap/api/services/route/BusPath;->setBusDistance(F)V

    .line 869
    invoke-virtual {v8, v0}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 871
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    move-object v0, v7

    .line 873
    goto/16 :goto_0

    :cond_4
    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_4

    :cond_5
    move v6, v0

    goto :goto_3

    :cond_6
    move v6, v5

    move v5, v0

    goto :goto_4
.end method

.method public static a(Lcom/amap/api/services/core/PoiItem;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1767
    const-string/jumbo v0, "deep_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1768
    invoke-static {v0}, Lcom/amap/api/services/a/n;->F(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 1769
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1770
    invoke-static {p1}, Lcom/amap/api/services/a/n;->F(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 1772
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/services/core/PoiItem;->setPhotos(Ljava/util/List;)V

    .line 1773
    return-void
.end method

.method public static a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1358
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    const-string/jumbo v0, "cities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1360
    if-nez v2, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1363
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1364
    new-instance v3, Lcom/amap/api/services/route/RouteSearchCity;

    invoke-direct {v3}, Lcom/amap/api/services/route/RouteSearchCity;-><init>()V

    .line 1365
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1366
    if-eqz v4, :cond_1

    .line 1369
    const-string/jumbo v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityName(Ljava/lang/String;)V

    .line 1370
    const-string/jumbo v5, "citycode"

    .line 1371
    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCitycode(Ljava/lang/String;)V

    .line 1372
    const-string/jumbo v5, "adcode"

    .line 1373
    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityhAdCode(Ljava/lang/String;)V

    .line 1374
    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V

    .line 1375
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1377
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setRouteSearchCityList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseCrossCity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1386
    const-string/jumbo v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1390
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    const-string/jumbo v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1392
    if-nez v2, :cond_1

    .line 1393
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseCrossDistricts"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1397
    new-instance v3, Lcom/amap/api/services/route/District;

    invoke-direct {v3}, Lcom/amap/api/services/route/District;-><init>()V

    .line 1398
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1399
    if-eqz v4, :cond_2

    .line 1402
    const-string/jumbo v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/District;->setDistrictName(Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/District;->setDistrictAdcode(Ljava/lang/String;)V

    .line 1404
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1406
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 660
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 661
    new-instance v2, Lcom/amap/api/services/road/Crossroad;

    invoke-direct {v2}, Lcom/amap/api/services/road/Crossroad;-><init>()V

    .line 662
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 663
    if-eqz v3, :cond_0

    .line 666
    const-string/jumbo v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setId(Ljava/lang/String;)V

    .line 667
    const-string/jumbo v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDirection(Ljava/lang/String;)V

    .line 668
    const-string/jumbo v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDistance(F)V

    .line 670
    const-string/jumbo v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 671
    const-string/jumbo v4, "first_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadId(Ljava/lang/String;)V

    .line 672
    const-string/jumbo v4, "first_name"

    .line 673
    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadName(Ljava/lang/String;)V

    .line 674
    const-string/jumbo v4, "second_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadId(Ljava/lang/String;)V

    .line 675
    const-string/jumbo v4, "second_name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadName(Ljava/lang/String;)V

    .line 677
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCrossroads(Ljava/util/List;)V

    .line 680
    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;",
            "Lcom/amap/api/services/district/DistrictItem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 558
    if-nez p0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 562
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_2

    .line 566
    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;

    move-result-object v1

    .line 567
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    :cond_3
    if-eqz p2, :cond_0

    .line 570
    invoke-virtual {p2, p1}, Lcom/amap/api/services/district/DistrictItem;->setSubDistrict(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 706
    const-string/jumbo v0, "province"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 707
    const-string/jumbo v0, "city"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 708
    const-string/jumbo v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCityCode(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAdCode(Ljava/lang/String;)V

    .line 710
    const-string/jumbo v0, "district"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 711
    const-string/jumbo v0, "township"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v0, "neighborhood"

    .line 714
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 715
    const-string/jumbo v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 717
    const-string/jumbo v0, "building"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 718
    const-string/jumbo v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 720
    new-instance v0, Lcom/amap/api/services/geocoder/StreetNumber;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/StreetNumber;-><init>()V

    .line 721
    const-string/jumbo v1, "streetNumber"

    .line 722
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 723
    const-string/jumbo v2, "street"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setStreet(Ljava/lang/String;)V

    .line 724
    const-string/jumbo v2, "number"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setNumber(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v2, "location"

    .line 726
    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 727
    const-string/jumbo v2, "direction"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setDirection(Ljava/lang/String;)V

    .line 728
    const-string/jumbo v2, "distance"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/StreetNumber;->setDistance(F)V

    .line 730
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setStreetNumber(Lcom/amap/api/services/geocoder/StreetNumber;)V

    .line 731
    invoke-static {p0}, Lcom/amap/api/services/a/n;->n(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBusinessAreas(Ljava/util/List;)V

    .line 732
    const-string/jumbo v0, "towncode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTowncode(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1611
    if-nez p0, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return-object v0

    .line 1614
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1615
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    invoke-static {v0}, Lcom/amap/api/services/a/n;->g(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1242
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1243
    const-string/jumbo v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    const/4 v0, 0x0

    .line 1328
    :cond_0
    :goto_0
    return-object v0

    .line 1246
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/DriveRouteResult;-><init>()V

    .line 1247
    const-string/jumbo v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1248
    if-eqz v1, :cond_0

    .line 1251
    const-string/jumbo v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1252
    const-string/jumbo v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1253
    const-string/jumbo v3, "taxi_cost"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTaxiCost(F)V

    .line 1254
    const-string/jumbo v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    const-string/jumbo v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1258
    if-eqz v5, :cond_0

    .line 1261
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 1262
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 1263
    new-instance v7, Lcom/amap/api/services/route/DrivePath;

    invoke-direct {v7}, Lcom/amap/api/services/route/DrivePath;-><init>()V

    .line 1264
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1265
    if-eqz v1, :cond_5

    .line 1268
    const-string/jumbo v3, "distance"

    .line 1269
    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setDistance(F)V

    .line 1270
    const-string/jumbo v3, "duration"

    .line 1271
    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amap/api/services/route/DrivePath;->setDuration(J)V

    .line 1272
    const-string/jumbo v3, "strategy"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setStrategy(Ljava/lang/String;)V

    .line 1273
    const-string/jumbo v3, "tolls"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setTolls(F)V

    .line 1274
    const-string/jumbo v3, "toll_distance"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setTollDistance(F)V

    .line 1276
    const-string/jumbo v3, "traffic_lights"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setTotalTrafficlights(I)V

    .line 1277
    const-string/jumbo v3, "roads"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1278
    if-eqz v8, :cond_5

    .line 1281
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1282
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 1283
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1284
    const-string/jumbo v10, "steps"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1285
    if-eqz v10, :cond_3

    move v1, v2

    .line 1288
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 1289
    new-instance v11, Lcom/amap/api/services/route/DriveStep;

    invoke-direct {v11}, Lcom/amap/api/services/route/DriveStep;-><init>()V

    .line 1290
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1291
    if-eqz v12, :cond_2

    .line 1294
    const-string/jumbo v13, "instruction"

    .line 1295
    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setInstruction(Ljava/lang/String;)V

    .line 1296
    const-string/jumbo v13, "orientation"

    .line 1297
    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setOrientation(Ljava/lang/String;)V

    .line 1298
    const-string/jumbo v13, "road"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setRoad(Ljava/lang/String;)V

    .line 1299
    const-string/jumbo v13, "distance"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setDistance(F)V

    .line 1301
    const-string/jumbo v13, "tolls"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setTolls(F)V

    .line 1302
    const-string/jumbo v13, "toll_distance"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setTollDistance(F)V

    .line 1304
    const-string/jumbo v13, "toll_road"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setTollRoad(Ljava/lang/String;)V

    .line 1305
    const-string/jumbo v13, "duration"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setDuration(F)V

    .line 1308
    const-string/jumbo v13, "polyline"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setPolyline(Ljava/util/List;)V

    .line 1309
    const-string/jumbo v13, "action"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setAction(Ljava/lang/String;)V

    .line 1310
    const-string/jumbo v13, "assistant_action"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1312
    invoke-static {v11, v12}, Lcom/amap/api/services/a/n;->a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    .line 1313
    invoke-static {v11, v12}, Lcom/amap/api/services/a/n;->b(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    .line 1314
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1282
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    .line 1317
    :cond_4
    invoke-virtual {v7, v9}, Lcom/amap/api/services/route/DrivePath;->setSteps(Ljava/util/List;)V

    .line 1318
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    .line 1320
    :cond_6
    invoke-virtual {v0, v6}, Lcom/amap/api/services/route/DriveRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseDriveRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1324
    :catch_1
    move-exception v0

    .line 1325
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseDriveRouteThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    const-string/jumbo v0, "keywords"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 157
    if-nez v2, :cond_0

    move-object v0, v1

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 161
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 163
    goto :goto_0
.end method

.method private static b(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1333
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    const-string/jumbo v0, "tmcs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1335
    if-nez v2, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1338
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1339
    new-instance v3, Lcom/amap/api/services/route/TMC;

    invoke-direct {v3}, Lcom/amap/api/services/route/TMC;-><init>()V

    .line 1340
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1341
    if-eqz v4, :cond_1

    .line 1344
    const-string/jumbo v5, "distance"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/TMC;->setDistance(I)V

    .line 1345
    const-string/jumbo v5, "status"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/TMC;->setStatus(Ljava/lang/String;)V

    .line 1346
    const-string/jumbo v5, "polyline"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/TMC;->setPolyline(Ljava/util/List;)V

    .line 1347
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1349
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setTMCs(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseTMCs"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 685
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 686
    new-instance v2, Lcom/amap/api/services/geocoder/RegeocodeRoad;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/RegeocodeRoad;-><init>()V

    .line 687
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 688
    if-eqz v3, :cond_0

    .line 691
    const-string/jumbo v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setId(Ljava/lang/String;)V

    .line 692
    const-string/jumbo v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setName(Ljava/lang/String;)V

    .line 693
    const-string/jumbo v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setLatLngPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 695
    const-string/jumbo v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDirection(Ljava/lang/String;)V

    .line 697
    const-string/jumbo v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDistance(F)V

    .line 699
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setRoads(Ljava/util/List;)V

    .line 702
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1416
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1417
    const-string/jumbo v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1418
    const/4 v0, 0x0

    .line 1479
    :cond_0
    :goto_0
    return-object v0

    .line 1420
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkRouteResult;-><init>()V

    .line 1421
    const-string/jumbo v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1422
    const-string/jumbo v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1423
    const-string/jumbo v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1424
    const-string/jumbo v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1427
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    const-string/jumbo v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1429
    if-nez v5, :cond_2

    .line 1430
    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseWalkRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v2

    .line 1433
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 1434
    new-instance v6, Lcom/amap/api/services/route/WalkPath;

    invoke-direct {v6}, Lcom/amap/api/services/route/WalkPath;-><init>()V

    .line 1435
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1436
    if-eqz v1, :cond_6

    .line 1439
    const-string/jumbo v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/WalkPath;->setDistance(F)V

    .line 1440
    const-string/jumbo v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/services/route/WalkPath;->setDuration(J)V

    .line 1441
    const-string/jumbo v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1442
    const-string/jumbo v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1443
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    if-eqz v7, :cond_6

    move v1, v2

    .line 1448
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 1449
    new-instance v9, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 1450
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1451
    if-eqz v10, :cond_3

    .line 1454
    const-string/jumbo v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 1456
    const-string/jumbo v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 1459
    const-string/jumbo v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 1461
    const-string/jumbo v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 1463
    const-string/jumbo v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 1464
    const-string/jumbo v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 1465
    const-string/jumbo v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1467
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1448
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1469
    :cond_4
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/WalkPath;->setSteps(Ljava/util/List;)V

    .line 1471
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 1473
    :cond_7
    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static c(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    if-nez p0, :cond_0

    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 179
    :cond_0
    const-string/jumbo v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 184
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 185
    if-eqz v3, :cond_3

    .line 188
    invoke-static {v3}, Lcom/amap/api/services/a/n;->d(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v3

    .line 189
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 191
    goto :goto_0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1750
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1751
    new-instance v2, Lcom/amap/api/services/geocoder/AoiItem;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/AoiItem;-><init>()V

    .line 1752
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1753
    if-eqz v3, :cond_0

    .line 1756
    const-string/jumbo v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setId(Ljava/lang/String;)V

    .line 1757
    const-string/jumbo v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setName(Ljava/lang/String;)V

    .line 1758
    const-string/jumbo v4, "adcode"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setAdcode(Ljava/lang/String;)V

    .line 1759
    const-string/jumbo v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setLocation(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1760
    const-string/jumbo v4, "area"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/AoiItem;->setArea(Ljava/lang/Float;)V

    .line 1761
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAois(Ljava/util/List;)V

    .line 1764
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 202
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string/jumbo v2, "location"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 204
    const-string/jumbo v3, "name"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    const-string/jumbo v4, "address"

    invoke-static {p0, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 206
    new-instance v5, Lcom/amap/api/services/core/PoiItem;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setAdCode(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "pname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setProvinceName(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, "cityname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setCityName(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "adname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setAdName(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setCityCode(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "pcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setProvinceCode(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v1, "direction"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setDirection(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v1, "distance"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string/jumbo v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :cond_0
    :goto_0
    const-string/jumbo v1, "tel"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setTel(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setTypeDes(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "entr_location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setEnter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 229
    const-string/jumbo v1, "exit_location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setExit(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 230
    const-string/jumbo v1, "website"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setWebsite(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "postcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setPostcode(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "business_area"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setBusinessArea(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v1, "email"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setEmail(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "indoor_map"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/amap/api/services/a/n;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v5, v0}, Lcom/amap/api/services/core/PoiItem;->setIndoorMap(Z)V

    .line 240
    :goto_1
    const-string/jumbo v1, "parking_type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setParkingType(Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const-string/jumbo v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    const-string/jumbo v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_3

    .line 247
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 248
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_1

    .line 252
    invoke-static {v3}, Lcom/amap/api/services/a/n;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;

    move-result-object v3

    .line 253
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    :catch_0
    move-exception v1

    .line 220
    const-string/jumbo v2, "JSONHelper"

    const-string/jumbo v3, "parseBasePoi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :catch_1
    move-exception v1

    .line 222
    const-string/jumbo v2, "JSONHelper"

    const-string/jumbo v3, "parseBasePoi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setIndoorMap(Z)V

    goto :goto_1

    .line 255
    :cond_3
    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setSubPois(Ljava/util/List;)V

    .line 258
    :cond_4
    const-string/jumbo v0, "indoor_data"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/IndoorData;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/services/core/PoiItem;->setIndoorDate(Lcom/amap/api/services/poisearch/IndoorData;)V

    .line 259
    const-string/jumbo v0, "biz_ext"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiItemExtension;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/services/core/PoiItem;->setPoiExtension(Lcom/amap/api/services/poisearch/PoiItemExtension;)V

    .line 260
    const-string/jumbo v0, "typecode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/services/core/PoiItem;->setTypeCode(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v0, "shopid"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/services/core/PoiItem;->setShopID(Ljava/lang/String;)V

    .line 262
    invoke-static {v5, p0}, Lcom/amap/api/services/a/n;->a(Lcom/amap/api/services/core/PoiItem;Lorg/json/JSONObject;)V

    .line 263
    return-object v5
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/IndoorData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1733
    const-string/jumbo v2, ""

    .line 1734
    const/4 v1, 0x0

    .line 1735
    const-string/jumbo v0, ""

    .line 1736
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1737
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1738
    if-eqz v3, :cond_0

    const-string/jumbo v4, "cpid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "floor"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1739
    const-string/jumbo v0, "cpid"

    invoke-static {v3, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1740
    const-string/jumbo v0, "floor"

    invoke-static {v3, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v1

    .line 1741
    const-string/jumbo v0, "truefloor"

    invoke-static {v3, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1744
    :cond_0
    new-instance v3, Lcom/amap/api/services/poisearch/IndoorData;

    invoke-direct {v3, v2, v1, v0}, Lcom/amap/api/services/poisearch/IndoorData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static d(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherLive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1486
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1487
    const-string/jumbo v0, "lives"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1488
    const/4 v0, 0x0

    .line 1523
    :cond_0
    :goto_0
    return-object v0

    .line 1490
    :cond_1
    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherLive;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalWeatherLive;-><init>()V

    .line 1491
    const-string/jumbo v2, "lives"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1492
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1495
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1496
    if-eqz v1, :cond_0

    .line 1500
    const-string/jumbo v2, "adcode"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setAdCode(Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v2, "province"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setProvince(Ljava/lang/String;)V

    .line 1504
    const-string/jumbo v2, "city"

    .line 1505
    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1504
    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setCity(Ljava/lang/String;)V

    .line 1506
    const-string/jumbo v2, "weather"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWeather(Ljava/lang/String;)V

    .line 1508
    const-string/jumbo v2, "temperature"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setTemperature(Ljava/lang/String;)V

    .line 1510
    const-string/jumbo v2, "winddirection"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWindDirection(Ljava/lang/String;)V

    .line 1512
    const-string/jumbo v2, "windpower"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWindPower(Ljava/lang/String;)V

    .line 1514
    const-string/jumbo v2, "humidity"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setHumidity(Ljava/lang/String;)V

    .line 1516
    const-string/jumbo v2, "reporttime"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherLive;->setReportTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "WeatherForecastResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiItemExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1795
    const-string/jumbo v1, ""

    .line 1796
    const-string/jumbo v0, ""

    .line 1797
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1798
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1799
    if-eqz v2, :cond_0

    .line 1800
    const-string/jumbo v0, "open_time"

    invoke-static {v2, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1801
    const-string/jumbo v0, "rating"

    invoke-static {v2, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    :cond_0
    new-instance v2, Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-direct {v2, v1, v0}, Lcom/amap/api/services/poisearch/PoiItemExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static e(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherForecast;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1531
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1532
    const-string/jumbo v0, "forecasts"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1533
    const/4 v0, 0x0

    .line 1594
    :cond_0
    :goto_0
    return-object v0

    .line 1535
    :cond_1
    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherForecast;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalWeatherForecast;-><init>()V

    .line 1536
    const-string/jumbo v3, "forecasts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1537
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1540
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1541
    if-eqz v2, :cond_0

    .line 1544
    const-string/jumbo v3, "city"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setCity(Ljava/lang/String;)V

    .line 1546
    const-string/jumbo v3, "adcode"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setAdCode(Ljava/lang/String;)V

    .line 1548
    const-string/jumbo v3, "province"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setProvince(Ljava/lang/String;)V

    .line 1550
    const-string/jumbo v3, "reporttime"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setReportTime(Ljava/lang/String;)V

    .line 1552
    const-string/jumbo v3, "casts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1555
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    const-string/jumbo v4, "casts"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1557
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 1558
    :cond_2
    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setWeatherForecast(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "WeatherForecastResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1562
    new-instance v4, Lcom/amap/api/services/weather/LocalDayWeatherForecast;

    invoke-direct {v4}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;-><init>()V

    .line 1563
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1564
    if-eqz v5, :cond_4

    .line 1567
    const-string/jumbo v6, "date"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDate(Ljava/lang/String;)V

    .line 1569
    const-string/jumbo v6, "week"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setWeek(Ljava/lang/String;)V

    .line 1571
    const-string/jumbo v6, "dayweather"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWeather(Ljava/lang/String;)V

    .line 1573
    const-string/jumbo v6, "nightweather"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWeather(Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v6, "daytemp"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayTemp(Ljava/lang/String;)V

    .line 1577
    const-string/jumbo v6, "nighttemp"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightTemp(Ljava/lang/String;)V

    .line 1579
    const-string/jumbo v6, "daywind"

    .line 1580
    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1579
    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWindDirection(Ljava/lang/String;)V

    .line 1581
    const-string/jumbo v6, "nightwind"

    .line 1582
    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1581
    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWindDirection(Ljava/lang/String;)V

    .line 1583
    const-string/jumbo v6, "daypower"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWindPower(Ljava/lang/String;)V

    .line 1585
    const-string/jumbo v6, "nightpower"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWindPower(Ljava/lang/String;)V

    .line 1587
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1589
    :cond_5
    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setWeatherForecast(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    if-nez p0, :cond_0

    move-object v0, v1

    .line 314
    :goto_0
    return-object v0

    .line 303
    :cond_0
    const-string/jumbo v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 305
    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 308
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 309
    if-eqz v3, :cond_3

    .line 312
    invoke-static {v3}, Lcom/amap/api/services/a/n;->f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 314
    goto :goto_0
.end method

.method public static f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p0}, Lcom/amap/api/services/a/n;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 327
    if-nez v1, :cond_0

    move-object v0, v1

    .line 347
    :goto_0
    return-object v0

    .line 330
    :cond_0
    const-string/jumbo v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setAdCode(Ljava/lang/String;)V

    .line 331
    const-string/jumbo v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setCityCode(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    if-nez v2, :cond_1

    .line 335
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    .line 336
    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 339
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 340
    if-eqz v4, :cond_2

    .line 343
    invoke-static {v4}, Lcom/amap/api/services/a/n;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v4

    .line 344
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :cond_3
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    .line 347
    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1630
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1632
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1633
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/amap/api/services/a/n;->g(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1635
    :cond_0
    return-object v1
.end method

.method public static g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 360
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 362
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 363
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1639
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1650
    :cond_0
    :goto_0
    return-object v0

    .line 1644
    :cond_1
    const-string/jumbo v1, ",| "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1645
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1648
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1649
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1650
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    goto :goto_0
.end method

.method public static h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/amap/api/services/busline/BusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    .line 376
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 377
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setDirectionsCoordinates(Ljava/util/List;)V

    .line 380
    const-string/jumbo v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setCityCode(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v1, "start_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setOriginatingStation(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v1, "end_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setTerminalStation(Ljava/lang/String;)V

    .line 383
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1654
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1655
    :cond_0
    const/4 v0, 0x1

    .line 1657
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    const-string/jumbo v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 397
    if-nez v2, :cond_0

    move-object v0, v1

    .line 411
    :goto_0
    return-object v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 401
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 402
    if-eqz v3, :cond_1

    .line 409
    invoke-static {v3}, Lcom/amap/api/services/a/n;->j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 411
    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1661
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1662
    :cond_0
    const/4 v0, 0x1

    .line 1664
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1669
    .line 1670
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return v0

    .line 1674
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1675
    :catch_0
    move-exception v1

    .line 1676
    const-string/jumbo v2, "JSONHelper"

    const-string/jumbo v3, "str2int"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {p0}, Lcom/amap/api/services/a/n;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v1

    .line 424
    if-nez v1, :cond_0

    move-object v0, v1

    .line 451
    :goto_0
    return-object v0

    .line 427
    :cond_0
    const-string/jumbo v0, "start_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 429
    const-string/jumbo v0, "end_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 431
    const-string/jumbo v0, "company"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBusCompany(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setDistance(F)V

    .line 433
    const-string/jumbo v0, "basic_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBasicPrice(F)V

    .line 434
    const-string/jumbo v0, "total_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setTotalPrice(F)V

    .line 435
    const-string/jumbo v0, "bounds"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBounds(Ljava/util/List;)V

    .line 436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    const-string/jumbo v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 438
    if-nez v3, :cond_1

    .line 439
    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    .line 440
    goto :goto_0

    .line 442
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 443
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 444
    if-eqz v4, :cond_2

    .line 447
    invoke-static {v4}, Lcom/amap/api/services/a/n;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v4

    .line 448
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    :cond_3
    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    .line 451
    goto/16 :goto_0
.end method

.method public static k(Ljava/lang/String;)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1682
    .line 1683
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return v0

    .line 1687
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1688
    :catch_0
    move-exception v1

    .line 1689
    const-string/jumbo v2, "JSONHelper"

    const-string/jumbo v3, "str2float"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static k(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Lcom/amap/api/services/district/DistrictItem;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictItem;-><init>()V

    .line 525
    const-string/jumbo v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCitycode(Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setAdcode(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setName(Ljava/lang/String;)V

    .line 528
    const-string/jumbo v1, "level"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setLevel(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "center"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCenter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 531
    const-string/jumbo v1, "polyline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const-string/jumbo v1, "polyline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 535
    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setDistrictBoundary([Ljava/lang/String;)V

    .line 540
    :cond_0
    const-string/jumbo v1, "districts"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 542
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 543
    invoke-static {v1, v2, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V

    .line 544
    return-object v0
.end method

.method public static l(Ljava/lang/String;)D
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 1695
    .line 1696
    if-eqz p0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return-wide v0

    .line 1700
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1701
    :catch_0
    move-exception v2

    .line 1702
    const-string/jumbo v3, "JSONHelper"

    const-string/jumbo v4, "str2float"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static l(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    if-nez p0, :cond_0

    move-object v0, v1

    .line 613
    :goto_0
    return-object v0

    .line 587
    :cond_0
    const-string/jumbo v0, "geocodes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 588
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 589
    goto :goto_0

    .line 591
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 592
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 593
    if-eqz v3, :cond_3

    .line 596
    new-instance v4, Lcom/amap/api/services/geocoder/GeocodeAddress;

    invoke-direct {v4}, Lcom/amap/api/services/geocoder/GeocodeAddress;-><init>()V

    .line 597
    const-string/jumbo v5, "formatted_address"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setFormatAddress(Ljava/lang/String;)V

    .line 598
    const-string/jumbo v5, "province"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v5, "city"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v5, "district"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 601
    const-string/jumbo v5, "township"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v5, "neighborhood"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 604
    const-string/jumbo v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 605
    const-string/jumbo v5, "building"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 606
    const-string/jumbo v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 608
    const-string/jumbo v5, "adcode"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setAdcode(Ljava/lang/String;)V

    .line 609
    const-string/jumbo v5, "location"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 610
    const-string/jumbo v5, "level"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLevel(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    .line 613
    goto/16 :goto_0
.end method

.method public static m(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 1708
    .line 1709
    if-eqz p0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return-wide v0

    .line 1713
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1714
    :catch_0
    move-exception v2

    .line 1715
    const-string/jumbo v3, "JSONHelper"

    const-string/jumbo v4, "str2long"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static m(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 625
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    const-string/jumbo v0, "tips"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 627
    if-nez v3, :cond_0

    move-object v0, v2

    .line 654
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 630
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 631
    new-instance v4, Lcom/amap/api/services/help/Tip;

    invoke-direct {v4}, Lcom/amap/api/services/help/Tip;-><init>()V

    .line 632
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 633
    if-eqz v5, :cond_2

    .line 636
    const-string/jumbo v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setName(Ljava/lang/String;)V

    .line 637
    const-string/jumbo v6, "district"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setDistrict(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v6, "adcode"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setAdcode(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v6, "id"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setID(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v6, "address"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setAddress(Ljava/lang/String;)V

    .line 641
    const-string/jumbo v6, "location"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 642
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 643
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 644
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 645
    new-instance v6, Lcom/amap/api/services/core/LatLonPoint;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 646
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v5, v5, v1

    .line 647
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 648
    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setPostion(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 652
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 654
    goto :goto_0
.end method

.method public static n(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 737
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    const-string/jumbo v0, "businessAreas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 739
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 752
    :goto_0
    return-object v0

    .line 742
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 743
    new-instance v3, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-direct {v3}, Lcom/amap/api/services/geocoder/BusinessArea;-><init>()V

    .line 744
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 745
    if-eqz v4, :cond_2

    .line 748
    const-string/jumbo v5, "location"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/geocoder/BusinessArea;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 749
    const-string/jumbo v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/geocoder/BusinessArea;->setName(Ljava/lang/String;)V

    .line 750
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 752
    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1721
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    .line 1722
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1728
    :cond_0
    :goto_0
    return v0

    .line 1725
    :cond_1
    const-string/jumbo v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1726
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static o(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 877
    if-nez p0, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-object v0

    .line 880
    :cond_1
    new-instance v1, Lcom/amap/api/services/route/BusStep;

    invoke-direct {v1}, Lcom/amap/api/services/route/BusStep;-><init>()V

    .line 881
    const-string/jumbo v2, "walking"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 882
    if-eqz v2, :cond_2

    .line 883
    invoke-static {v2}, Lcom/amap/api/services/a/n;->p(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setWalk(Lcom/amap/api/services/route/RouteBusWalkItem;)V

    .line 885
    :cond_2
    const-string/jumbo v2, "bus"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 886
    if-eqz v2, :cond_3

    .line 887
    invoke-static {v2}, Lcom/amap/api/services/a/n;->q(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setBusLines(Ljava/util/List;)V

    .line 889
    :cond_3
    const-string/jumbo v2, "entrance"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 890
    if-eqz v2, :cond_4

    .line 891
    invoke-static {v2}, Lcom/amap/api/services/a/n;->r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setEntrance(Lcom/amap/api/services/route/Doorway;)V

    .line 893
    :cond_4
    const-string/jumbo v2, "exit"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 894
    if-eqz v2, :cond_5

    .line 895
    invoke-static {v2}, Lcom/amap/api/services/a/n;->r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setExit(Lcom/amap/api/services/route/Doorway;)V

    .line 897
    :cond_5
    const-string/jumbo v2, "railway"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 898
    if-eqz v2, :cond_6

    .line 899
    invoke-static {v2}, Lcom/amap/api/services/a/n;->y(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteRailwayItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setRailway(Lcom/amap/api/services/route/RouteRailwayItem;)V

    .line 901
    :cond_6
    const-string/jumbo v2, "taxi"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 902
    if-eqz v2, :cond_7

    .line 903
    invoke-static {v2}, Lcom/amap/api/services/a/n;->E(Lorg/json/JSONObject;)Lcom/amap/api/services/route/TaxiItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setTaxi(Lcom/amap/api/services/route/TaxiItem;)V

    .line 906
    :cond_7
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 907
    :cond_8
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 908
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getRailway()Lcom/amap/api/services/route/RouteRailwayItem;

    move-result-object v2

    if-nez v2, :cond_9

    .line 909
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getTaxi()Lcom/amap/api/services/route/TaxiItem;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_9
    move-object v0, v1

    .line 913
    goto/16 :goto_0
.end method

.method public static o(Ljava/lang/String;)Lcom/amap/api/services/route/RideRouteResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1847
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1848
    const-string/jumbo v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1849
    const/4 v0, 0x0

    .line 1890
    :cond_0
    :goto_0
    return-object v0

    .line 1851
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/RideRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/RideRouteResult;-><init>()V

    .line 1852
    const-string/jumbo v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1853
    const-string/jumbo v2, "origin"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1854
    const-string/jumbo v2, "destination"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1855
    const-string/jumbo v2, "paths"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1858
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    const-string/jumbo v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1860
    if-nez v3, :cond_2

    .line 1861
    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1886
    :catch_0
    move-exception v0

    .line 1887
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseRideRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1865
    :cond_2
    :try_start_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_4

    .line 1866
    const-string/jumbo v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1867
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1868
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1869
    invoke-static {v4}, Lcom/amap/api/services/a/n;->H(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RidePath;

    move-result-object v4

    .line 1870
    if-eqz v4, :cond_3

    .line 1871
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1867
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1873
    :cond_4
    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    .line 1874
    const-string/jumbo v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1875
    const-string/jumbo v3, "path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1876
    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setPaths(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1879
    :cond_5
    const-string/jumbo v3, "path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1880
    invoke-static {v1}, Lcom/amap/api/services/a/n;->H(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RidePath;

    move-result-object v1

    .line 1881
    if-eqz v1, :cond_6

    .line 1882
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1884
    :cond_6
    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static p(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 920
    if-nez p0, :cond_0

    .line 921
    const/4 v0, 0x0

    .line 945
    :goto_0
    return-object v0

    .line 923
    :cond_0
    new-instance v1, Lcom/amap/api/services/route/RouteBusWalkItem;

    invoke-direct {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;-><init>()V

    .line 924
    const-string/jumbo v0, "origin"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 925
    const-string/jumbo v0, "destination"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 926
    const-string/jumbo v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDistance(F)V

    .line 927
    const-string/jumbo v0, "duration"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDuration(J)V

    .line 928
    const-string/jumbo v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 929
    goto :goto_0

    .line 931
    :cond_1
    const-string/jumbo v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 932
    if-nez v2, :cond_2

    move-object v0, v1

    .line 933
    goto :goto_0

    .line 935
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 936
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 937
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 938
    if-eqz v4, :cond_3

    .line 941
    invoke-static {v4}, Lcom/amap/api/services/a/n;->s(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;

    move-result-object v4

    .line 942
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 944
    :cond_4
    invoke-virtual {v1, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setSteps(Ljava/util/List;)V

    move-object v0, v1

    .line 945
    goto :goto_0
.end method

.method public static q(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 950
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 951
    if-nez p0, :cond_0

    move-object v0, v1

    .line 966
    :goto_0
    return-object v0

    .line 954
    :cond_0
    const-string/jumbo v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 955
    if-nez v2, :cond_1

    move-object v0, v1

    .line 956
    goto :goto_0

    .line 958
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 959
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 960
    if-eqz v3, :cond_2

    .line 963
    invoke-static {v3}, Lcom/amap/api/services/a/n;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    .line 964
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 966
    goto :goto_0
.end method

.method public static r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 970
    new-instance v0, Lcom/amap/api/services/route/Doorway;

    invoke-direct {v0}, Lcom/amap/api/services/route/Doorway;-><init>()V

    .line 971
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setName(Ljava/lang/String;)V

    .line 972
    const-string/jumbo v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 973
    return-object v0
.end method

.method public static s(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 978
    const-string/jumbo v1, "instruction"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 979
    const-string/jumbo v1, "orientation"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 980
    const-string/jumbo v1, "road"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 981
    const-string/jumbo v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 982
    const-string/jumbo v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 983
    const-string/jumbo v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 984
    const-string/jumbo v1, "action"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 985
    const-string/jumbo v1, "assistant_action"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 986
    return-object v0
.end method

.method public static t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 991
    if-nez p0, :cond_0

    .line 992
    const/4 v0, 0x0

    .line 1025
    :goto_0
    return-object v0

    .line 994
    :cond_0
    new-instance v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteBusLineItem;-><init>()V

    .line 995
    const-string/jumbo v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 996
    invoke-static {v1}, Lcom/amap/api/services/a/n;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 997
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDepartureBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 999
    const-string/jumbo v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1000
    invoke-static {v1}, Lcom/amap/api/services/a/n;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 1001
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setArrivalBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 1003
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    .line 1009
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDistance(F)V

    .line 1011
    const-string/jumbo v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    .line 1013
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDuration(F)V

    .line 1015
    const-string/jumbo v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPolyline(Ljava/util/List;)V

    .line 1016
    const-string/jumbo v1, "start_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 1018
    const-string/jumbo v1, "end_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 1020
    const-string/jumbo v1, "via_num"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-static {v1}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v1

    .line 1022
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStationNum(I)V

    .line 1023
    invoke-static {p0}, Lcom/amap/api/services/a/n;->u(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1024
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStations(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static u(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1046
    :goto_0
    return-object v0

    .line 1034
    :cond_0
    const-string/jumbo v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1035
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1036
    goto :goto_0

    .line 1038
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1039
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1040
    if-eqz v3, :cond_2

    .line 1043
    invoke-static {v3}, Lcom/amap/api/services/a/n;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    .line 1044
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1046
    goto :goto_0
.end method

.method public static v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 1052
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1055
    return-object v0
.end method

.method public static w(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/routepoisearch/RoutePOIItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1809
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1831
    :goto_0
    return-object v0

    .line 1813
    :cond_0
    const-string/jumbo v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1815
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    .line 1816
    const-string/jumbo v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1817
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 1818
    goto :goto_0

    .line 1820
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1821
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1822
    if-eqz v3, :cond_3

    .line 1825
    invoke-static {v3}, Lcom/amap/api/services/a/n;->G(Lorg/json/JSONObject;)Lcom/amap/api/services/routepoisearch/RoutePOIItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1827
    :cond_4
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    .line 1828
    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "poi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1829
    invoke-static {v0}, Lcom/amap/api/services/a/n;->G(Lorg/json/JSONObject;)Lcom/amap/api/services/routepoisearch/RoutePOIItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v1

    .line 1831
    goto :goto_0
.end method

.method private static x(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 268
    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 270
    const-string/jumbo v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    const-string/jumbo v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    new-instance v4, Lcom/amap/api/services/poisearch/SubPoiItem;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/SubPoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v0, "sname"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setSubName(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v0, "subtype"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setSubTypeDes(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-string/jumbo v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    :cond_0
    :goto_0
    return-object v4

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :catch_1
    move-exception v0

    .line 283
    const-string/jumbo v1, "JSONHelper"

    const-string/jumbo v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static y(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteRailwayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1067
    if-nez p0, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-object v0

    .line 1070
    :cond_1
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    new-instance v0, Lcom/amap/api/services/route/RouteRailwayItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteRailwayItem;-><init>()V

    .line 1074
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setID(Ljava/lang/String;)V

    .line 1075
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setName(Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v1, "time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setTime(Ljava/lang/String;)V

    .line 1077
    const-string/jumbo v1, "trip"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setTrip(Ljava/lang/String;)V

    .line 1078
    const-string/jumbo v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setDistance(F)V

    .line 1079
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setType(Ljava/lang/String;)V

    .line 1080
    const-string/jumbo v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1081
    invoke-static {v1}, Lcom/amap/api/services/a/n;->z(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v1

    .line 1082
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setDeparturestop(Lcom/amap/api/services/route/RailwayStationItem;)V

    .line 1083
    const-string/jumbo v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1084
    invoke-static {v1}, Lcom/amap/api/services/a/n;->z(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v1

    .line 1085
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setArrivalstop(Lcom/amap/api/services/route/RailwayStationItem;)V

    .line 1087
    invoke-static {p0}, Lcom/amap/api/services/a/n;->A(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1088
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setViastops(Ljava/util/List;)V

    .line 1090
    invoke-static {p0}, Lcom/amap/api/services/a/n;->B(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1091
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setAlters(Ljava/util/List;)V

    .line 1093
    invoke-static {p0}, Lcom/amap/api/services/a/n;->C(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1094
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setSpaces(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private static z(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1106
    new-instance v0, Lcom/amap/api/services/route/RailwayStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RailwayStationItem;-><init>()V

    .line 1107
    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setID(Ljava/lang/String;)V

    .line 1108
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setName(Ljava/lang/String;)V

    .line 1109
    const-string/jumbo v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setLocation(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1110
    const-string/jumbo v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setAdcode(Ljava/lang/String;)V

    .line 1111
    const-string/jumbo v1, "time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setTime(Ljava/lang/String;)V

    .line 1112
    const-string/jumbo v1, "start"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->n(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setisStart(Z)V

    .line 1113
    const-string/jumbo v1, "end"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->n(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setisEnd(Z)V

    .line 1114
    const-string/jumbo v1, "wait"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setWait(F)V

    .line 1115
    return-object v0
.end method
