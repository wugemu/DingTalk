.class final Lhku$2;
.super Lcmi;
.source "SearchLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhku;->a(Landroid/content/Context;Ljava/lang/String;DDIIILjava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)Lhku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhka;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lhku$2;->a:Lcom/alibaba/wukong/Callback;

    iput p2, p0, Lhku$2;->b:I

    iput-object p3, p0, Lhku$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 152
    iget-object v0, p0, Lhku$2;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lhku$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 102
    check-cast p1, Lhka;

    .line 1105
    iget-object v0, p0, Lhku$2;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_4

    .line 1106
    if-eqz p1, :cond_5

    .line 1107
    new-instance v4, Lhku$a;

    invoke-direct {v4}, Lhku$a;-><init>()V

    .line 1108
    iget-object v0, p1, Lhka;->a:Ljava/lang/Integer;

    .line 2033
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1108
    int-to-float v0, v0

    iget v1, p0, Lhku$2;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v4, Lhku$a;->a:I

    .line 1109
    const/4 v0, 0x0

    .line 1110
    iget-object v1, p1, Lhka;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    new-instance v5, Lcom/amap/api/location/CoordinateConverter;

    iget-object v0, p0, Lhku$2;->c:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/amap/api/location/CoordinateConverter;-><init>(Landroid/content/Context;)V

    .line 1113
    iget-object v0, p1, Lhka;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhix;

    .line 1114
    if-eqz v0, :cond_0

    .line 1115
    new-instance v2, Lcom/amap/api/services/core/LatLonPoint;

    iget-object v1, v0, Lhix;->c:Ljava/lang/Double;

    .line 2066
    const-wide/16 v8, 0x0

    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v8

    .line 1115
    iget-object v1, v0, Lhix;->d:Ljava/lang/Double;

    .line 3066
    const-wide/16 v10, 0x0

    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Double;D)D

    move-result-wide v10

    .line 1115
    invoke-direct {v2, v8, v9, v10, v11}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 1117
    iget-object v1, v0, Lhix;->r:Ljava/lang/Integer;

    .line 4033
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1117
    if-nez v1, :cond_1

    .line 1119
    :try_start_0
    sget-object v1, Lcom/amap/api/location/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/location/CoordinateConverter$CoordType;

    invoke-virtual {v5, v1}, Lcom/amap/api/location/CoordinateConverter;->from(Lcom/amap/api/location/CoordinateConverter$CoordType;)Lcom/amap/api/location/CoordinateConverter;

    move-result-object v1

    new-instance v7, Lcom/amap/api/location/DPoint;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-virtual {v1, v7}, Lcom/amap/api/location/CoordinateConverter;->coord(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/CoordinateConverter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/CoordinateConverter;->convert()Lcom/amap/api/location/DPoint;

    move-result-object v7

    .line 1120
    new-instance v1, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v7}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v10

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_1
    new-instance v2, Lcom/amap/api/services/core/PoiItem;

    iget-object v7, v0, Lhix;->a:Ljava/lang/String;

    invoke-static {v7}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lhix;->b:Ljava/lang/String;

    invoke-static {v8}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lhix;->e:Ljava/lang/String;

    invoke-static {v9}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v7, v1, v8, v9}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v1, v0, Lhix;->f:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setTel(Ljava/lang/String;)V

    .line 1127
    iget-object v1, v0, Lhix;->g:Ljava/lang/Integer;

    .line 5033
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1127
    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setDistance(I)V

    .line 1128
    iget-object v1, v0, Lhix;->h:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setPostcode(Ljava/lang/String;)V

    .line 1129
    iget-object v1, v0, Lhix;->i:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setWebsite(Ljava/lang/String;)V

    .line 1130
    iget-object v1, v0, Lhix;->j:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setEmail(Ljava/lang/String;)V

    .line 1131
    iget-object v1, v0, Lhix;->k:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setProvinceName(Ljava/lang/String;)V

    .line 1132
    iget-object v1, v0, Lhix;->l:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setProvinceCode(Ljava/lang/String;)V

    .line 1133
    iget-object v1, v0, Lhix;->m:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setCityName(Ljava/lang/String;)V

    .line 1134
    iget-object v1, v0, Lhix;->n:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setCityCode(Ljava/lang/String;)V

    .line 1135
    iget-object v1, v0, Lhix;->o:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setAdName(Ljava/lang/String;)V

    .line 1136
    iget-object v1, v0, Lhix;->p:Ljava/lang/String;

    invoke-static {v1}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/services/core/PoiItem;->setAdCode(Ljava/lang/String;)V

    .line 1137
    iget-object v0, v0, Lhix;->q:Ljava/lang/String;

    invoke-static {v0}, Lhku;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/services/core/PoiItem;->setDirection(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1121
    :catch_0
    move-exception v1

    .line 1122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v1, v2

    goto/16 :goto_1

    :cond_2
    move-object v0, v3

    .line 1142
    :cond_3
    iput-object v0, v4, Lhku$a;->b:Ljava/util/List;

    .line 1143
    iget-object v0, p0, Lhku$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1144
    :cond_4
    :goto_2
    return-void

    .line 1146
    :cond_5
    iget-object v0, p0, Lhku$2;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2
.end method
