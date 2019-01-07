.class Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;
.super Ljava/lang/Object;
.source "SmoothMoveMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->startSmoothMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V

    .line 214
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 165
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$400(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v4

    div-double v4, v0, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 167
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    iget-object v5, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v6

    sub-double v0, v6, v0

    invoke-static {v4, v0, v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$502(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;D)D

    .line 168
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$502(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;D)D

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;->move(D)V

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 176
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 179
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 180
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 182
    :cond_3
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    invoke-static {v4, v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$802(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Ljava/util/Timer;)Ljava/util/Timer;

    .line 183
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;

    move-result-object v4

    new-instance v5, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;

    invoke-direct {v5, p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;-><init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V

    invoke-virtual {v4, v5, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 197
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4, v1, v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    .line 198
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v4

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float v1, v5, v1

    iget-object v5, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v5}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/AMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v5

    iget v5, v5, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v1, v5

    invoke-virtual {v4, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 200
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    new-instance v4, Lcom/amap/api/maps/model/animation/TranslateAnimation;

    invoke-direct {v4, v0}, Lcom/amap/api/maps/model/animation/TranslateAnimation;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    invoke-static {v1, v4}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/animation/TranslateAnimation;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    .line 201
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/animation/TranslateAnimation;->setDuration(J)V

    .line 204
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    iget-boolean v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 209
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 210
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->startAnimation()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a()V

    .line 155
    return-void
.end method
