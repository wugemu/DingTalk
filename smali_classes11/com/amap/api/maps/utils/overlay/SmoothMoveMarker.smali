.class public Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;
.super Ljava/lang/Object;
.source "SmoothMoveMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;
    }
.end annotation


# instance fields
.field private animation:Lcom/amap/api/maps/model/animation/TranslateAnimation;

.field private descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private duration:J

.field private eachDistance:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private endPoint:Lcom/amap/api/maps/model/LatLng;

.field exitFlag:Z

.field private index:I

.field private lastEndPoint:Lcom/amap/api/maps/model/LatLng;

.field private mAMap:Lcom/amap/api/maps/AMap;

.field private marker:Lcom/amap/api/maps/model/Marker;

.field private moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

.field private moveThread:Ljava/lang/Thread;

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private remainDistance:D

.field private timer:Ljava/util/Timer;

.field private totalDistance:D

.field private useDefaultDescriptor:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/AMap;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    .line 32
    iput-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    .line 33
    iput-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    .line 37
    iput-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    .line 45
    iput v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 47
    iput-boolean v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    .line 49
    iput-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    .line 50
    iput-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    .line 51
    iput-boolean v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    .line 60
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->setEndRotate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->getRotate(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/AMap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->animation:Lcom/amap/api/maps/model/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/animation/TranslateAnimation;)Lcom/amap/api/maps/model/animation/TranslateAnimation;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->animation:Lcom/amap/api/maps/model/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;D)D
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    return-wide p1
.end method

.method static synthetic access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$908(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)I
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return v0
.end method

.method private checkMarkerIcon()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    goto :goto_0
.end method

.method private getRotate(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 237
    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    .line 238
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 239
    iget-wide v6, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 241
    sub-double v4, v6, v4

    sub-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 242
    return v0
.end method

.method private setEndRotate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->lastEndPoint:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->getRotate(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 225
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 226
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->stopMove()V

    .line 283
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->destroy()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 293
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 294
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return v0
.end method

.method public getMarker()Lcom/amap/api/maps/model/Marker;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public setDescriptor(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 301
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 304
    :cond_1
    return-void
.end method

.method public setMoveListener(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    .line 321
    return-void
.end method

.method public setPoint(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->setPoints(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 79
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 81
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->lastEndPoint:Lcom/amap/api/maps/model/LatLng;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    .line 93
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    .line 94
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    float-to-double v0, v0

    .line 95
    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    .line 93
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 99
    :cond_2
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    .line 101
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 103
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 106
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->checkMarkerIcon()V

    .line 114
    :goto_2
    return-void

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v1, :cond_4

    .line 109
    iput-boolean v6, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v6}, Lcom/amap/api/maps/model/MarkerOptions;->belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    goto :goto_2
.end method

.method public setRotate(F)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 311
    :cond_0
    return-void
.end method

.method public setTotalDuration(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    .line 137
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public startSmoothMove()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 146
    :cond_0
    iput v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 147
    iput-boolean v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    .line 148
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    invoke-direct {v1, p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;-><init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    .line 216
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopMove()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    .line 251
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 262
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 263
    return-void
.end method
