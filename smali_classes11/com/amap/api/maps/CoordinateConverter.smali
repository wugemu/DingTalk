.class public Lcom/amap/api/maps/CoordinateConverter;
.super Ljava/lang/Object;
.source "CoordinateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/CoordinateConverter$CoordType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field private c:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    .line 55
    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    .line 62
    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public convert()Lcom/amap/api/maps/model/LatLng;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    sget-object v1, Lcom/amap/api/maps/CoordinateConverter$1;->a:[I

    iget-object v2, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v2}, Lcom/amap/api/maps/CoordinateConverter$CoordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ai;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ai;->b(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ai;->a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    const-string/jumbo v1, "CoordinateConverter"

    const-string/jumbo v2, "convert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    .line 87
    return-object p0
.end method

.method public from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    .line 75
    return-object p0
.end method
