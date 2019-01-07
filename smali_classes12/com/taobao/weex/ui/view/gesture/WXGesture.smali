.class public Lcom/taobao/weex/ui/view/gesture/WXGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WXGesture.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/gesture/WXGesture$GestureHandler;
    }
.end annotation


# static fields
.field private static final CUR_EVENT:I = -0x1

.field public static final DOWN:Ljava/lang/String; = "down"

.field public static final END:Ljava/lang/String; = "end"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final MOVE:Ljava/lang/String; = "move"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final START:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String; = "Gesture"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UP:Ljava/lang/String; = "up"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private globalEventOffset:Landroid/graphics/Point;

.field private globalOffset:Landroid/graphics/Point;

.field private globalRect:Landroid/graphics/Rect;

.field private locEventOffset:Landroid/graphics/PointF;

.field private locLeftTop:Landroid/graphics/PointF;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsPreventMoveEvent:Z

.field private mIsTouchEventConsumed:Z

.field private mParentOrientation:I

.field private mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

.field private panDownTime:J

.field private requestDisallowInterceptTouchEvent:Z

.field private shouldBubbleCallRemainTimes:I

.field private shouldBubbleInterval:I

.field private shouldBubbleResult:Z

.field private swipeDownTime:J


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/Context;)V
    .locals 8
    .param p1, "wxComponent"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 75
    iput-wide v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->swipeDownTime:J

    .line 76
    iput-wide v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->panDownTime:J

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    .line 79
    iput-boolean v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsPreventMoveEvent:Z

    .line 80
    iput-boolean v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    .line 82
    iput-boolean v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    .line 84
    iput-boolean v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    .line 85
    iput v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    .line 86
    iput v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    .line 89
    iput-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalRect:Landroid/graphics/Rect;

    .line 91
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    .line 92
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    .line 93
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    .line 94
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    .line 95
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/taobao/weex/ui/view/gesture/WXGesture$GestureHandler;

    invoke-direct {v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture$GestureHandler;-><init>()V

    invoke-direct {v1, p2, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mGestureDetector:Landroid/view/GestureDetector;

    .line 96
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    .line 97
    .local v0, "parentScrollable":Lcom/taobao/weex/ui/component/Scrollable;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/Scrollable;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "shouldStopPropagationInitResult"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    .line 101
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "shouldStopPropagationInterval"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    .line 102
    return-void
.end method

.method private containsSimplePan()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 398
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 399
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pos"    # I
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 363
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 365
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isPointerNumChanged(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 369
    .local v3, "pointerIndex":I
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4, v3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v3    # "pointerIndex":I
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "changedTouches"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    if-eqz p3, :cond_2

    .line 374
    const-string/jumbo v4, "state"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_2
    return-object v2
.end method

.method private createJSONObject(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "screenXY"    # Landroid/graphics/PointF;
    .param p2, "pageXY"    # Landroid/graphics/PointF;
    .param p3, "pointerId"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 438
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "pageX"

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string/jumbo v1, "pageY"

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string/jumbo v1, "screenX"

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v1, "screenY"

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v1, "identifier"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-object v0
.end method

.method private createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pos"    # I
    .param p3, "pointerIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 413
    invoke-direct {p0, p1, p3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v2

    .line 414
    .local v2, "pageXY":Landroid/graphics/PointF;
    invoke-direct {p0, p1, p3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v3

    .line 419
    .local v3, "screenXY":Landroid/graphics/PointF;
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v3, v2, v4}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createJSONObject(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 420
    .local v1, "map":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    .line 421
    .local v0, "force":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 422
    const-string/jumbo v4, "force"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_0
    return-object v1

    .line 416
    .end local v0    # "force":F
    .end local v1    # "map":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "pageXY":Landroid/graphics/PointF;
    .end local v3    # "screenXY":Landroid/graphics/PointF;
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v2

    .line 417
    .restart local v2    # "pageXY":Landroid/graphics/PointF;
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v3

    .restart local v3    # "screenXY":Landroid/graphics/PointF;
    goto :goto_0
.end method

.method private createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-object v0
.end method

.method private finishDisallowInterceptTouchEvent(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 273
    :cond_0
    return-void
.end method

.method private getEventLocInPageCoordinate(FF)Landroid/graphics/PointF;
    .locals 4
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 531
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 532
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 533
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V

    .line 534
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    .line 535
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 536
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private getEventLocInPageCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 497
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 512
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 513
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 514
    .local v0, "eventX":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 519
    .local v1, "eventY":F
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(FF)Landroid/graphics/PointF;

    move-result-object v2

    return-object v2

    .line 516
    .end local v0    # "eventX":F
    .end local v1    # "eventY":F
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    .line 517
    .restart local v0    # "eventX":F
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v1

    .restart local v1    # "eventY":F
    goto :goto_0
.end method

.method private getEventLocInScreenCoordinate(FF)Landroid/graphics/PointF;
    .locals 4
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 484
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 485
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 486
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 487
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 488
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 489
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 490
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private getEventLocInScreenCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 450
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 465
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 466
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 467
    .local v0, "eventX":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 472
    .local v1, "eventY":F
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(FF)Landroid/graphics/PointF;

    move-result-object v2

    return-object v2

    .line 469
    .end local v0    # "eventX":F
    .end local v1    # "eventY":F
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    .line 470
    .restart local v0    # "eventX":F
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v1

    .restart local v1    # "eventY":F
    goto :goto_0
.end method

.method private getHistoricalEvents(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 347
    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 348
    .local v2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "i":I
    .end local v2    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v1
.end method

.method private getPanEventAction(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    const-string/jumbo v0, "start"

    goto :goto_0

    .line 259
    :pswitch_1
    const-string/jumbo v0, "move"

    goto :goto_0

    .line 261
    :pswitch_2
    const-string/jumbo v0, "end"

    goto :goto_0

    .line 263
    :pswitch_3
    const-string/jumbo v0, "end"

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "WXGestureType"    # Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 313
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 315
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v2, 0x1

    .line 317
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handlePanMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 276
    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    if-nez v5, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v3

    .line 279
    :cond_1
    const/4 v2, 0x0

    .line 280
    .local v2, "state":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    sget-object v6, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    sget-object v6, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-ne v5, v6, :cond_3

    .line 281
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getPanEventAction(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    .line 285
    :cond_3
    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    iget-boolean v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsPreventMoveEvent:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "move"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 287
    goto :goto_0

    .line 289
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 291
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 294
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_7

    .line 295
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    :cond_7
    move v3, v4

    .line 297
    goto :goto_0
.end method

.method private hasSameOrientationWithParent()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 114
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasStopPropagation(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 6
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 140
    .local v0, "event":Lcom/taobao/weex/dom/WXEvent;
    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v4

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v2

    .line 144
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 148
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isStopPropagation(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    const/4 v4, 0x1

    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isParentScrollable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    .line 109
    .local v0, "parentScrollable":Lcom/taobao/weex/ui/component/Scrollable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/Scrollable;->isScrollable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPointerNumChanged(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStopPropagation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string/jumbo v0, "stopPropagation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "stoppropagation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldBubbleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 160
    iget-object v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v4}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->hasStopPropagation(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iget v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    if-lez v4, :cond_1

    .line 162
    iget v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    .line 163
    iget-boolean v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    .line 189
    :cond_0
    :goto_0
    return v5

    .line 165
    :cond_1
    const/4 v4, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, v4, v7}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 166
    .local v0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "type"

    const-string/jumbo v7, "touch"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 168
    const-string/jumbo v4, "action"

    const-string/jumbo v7, "start"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_1
    const-string/jumbo v1, "stopPropagation"

    .line 177
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    const-string/jumbo v7, "stopPropagation"

    invoke-virtual {v4, v7}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 178
    const-string/jumbo v1, "stoppropagation"

    .line 180
    :cond_2
    iget-object v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v2

    .line 181
    .local v2, "result":Lcom/taobao/weex/bridge/EventResult;
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    iget-boolean v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    if-nez v4, :cond_7

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 183
    .local v3, "stopPropagation":Z
    if-nez v3, :cond_8

    :goto_3
    iput-boolean v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    .line 185
    .end local v3    # "stopPropagation":Z
    :cond_3
    iget v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    iput v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    .line 186
    iget-boolean v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    goto :goto_0

    .line 169
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "result":Lcom/taobao/weex/bridge/EventResult;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_5

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 171
    :cond_5
    const-string/jumbo v4, "action"

    const-string/jumbo v7, "end"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :cond_6
    const-string/jumbo v4, "action"

    const-string/jumbo v7, "move"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "result":Lcom/taobao/weex/bridge/EventResult;
    :cond_7
    move v4, v6

    .line 182
    goto :goto_2

    .restart local v3    # "stopPropagation":Z
    :cond_8
    move v5, v6

    .line 183
    goto :goto_3
.end method


# virtual methods
.method public isTouchEventConsumedByAdvancedGesture()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 551
    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 553
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 554
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 555
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v4

    .line 556
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 553
    invoke-virtual {v2, v3, v4, v1}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 557
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    .line 559
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 566
    const/4 v6, 0x0

    .line 567
    .local v6, "result":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 568
    :cond_0
    const/4 v7, 0x0

    .line 620
    :goto_0
    return v7

    .line 570
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 571
    .local v0, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 573
    .local v1, "dy":F
    cmpl-float v7, v0, v1

    if-lez v7, :cond_5

    .line 574
    sget-object v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 578
    .local v5, "possiblePan":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    :goto_1
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-ne v7, v8, :cond_6

    .line 580
    :cond_2
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 619
    :cond_3
    :goto_2
    iget-boolean v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    if-nez v7, :cond_4

    if-eqz v6, :cond_f

    :cond_4
    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    move v7, v6

    .line 620
    goto :goto_0

    .line 576
    .end local v5    # "possiblePan":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    :cond_5
    sget-object v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .restart local v5    # "possiblePan":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    goto :goto_1

    .line 581
    :cond_6
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v7, v5}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 583
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_7

    .line 584
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 586
    :cond_7
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    if-eqz v7, :cond_8

    .line 587
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    invoke-direct {p0, v7, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    .line 589
    :cond_8
    iput-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    .line 590
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const-string/jumbo v10, "start"

    invoke-direct {p0, p2, v9, v10}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 592
    const/4 v6, 0x1

    .line 593
    goto :goto_2

    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_9
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->containsSimplePan()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 594
    iget-wide v8, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->panDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_a

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->panDownTime:J

    .line 596
    sget-object v7, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    iput-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    .line 597
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 598
    invoke-direct {p0, p1, v9, v10}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 597
    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 603
    :goto_4
    const/4 v6, 0x1

    goto :goto_2

    .line 600
    :cond_a
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 601
    invoke-direct {p0, p2, v9, v10}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 600
    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 604
    :cond_b
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v8, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v7, v8}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 605
    iget-wide v8, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->swipeDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->swipeDownTime:J

    .line 607
    const/4 v7, 0x0

    invoke-direct {p0, p2, v7}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 608
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 609
    .local v4, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 610
    const-string/jumbo v8, "direction"

    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-lez v7, :cond_c

    const-string/jumbo v7, "left"

    :goto_5
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :goto_6
    iget-object v7, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 615
    invoke-virtual {v9}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v9

    .line 614
    invoke-virtual {v7, v8, v9, v4}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 616
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 610
    :cond_c
    const-string/jumbo v7, "right"

    goto :goto_5

    .line 612
    :cond_d
    const-string/jumbo v8, "direction"

    const/4 v7, 0x0

    cmpl-float v7, p4, v7

    if-lez v7, :cond_e

    const-string/jumbo v7, "up"

    :goto_7
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    const-string/jumbo v7, "down"

    goto :goto_7

    .line 619
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 194
    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    if-eqz v6, :cond_1

    .line 195
    iput-boolean v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    move v4, v5

    .line 250
    :cond_0
    :goto_0
    return v4

    .line 199
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 200
    .local v4, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 231
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v6}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->hasStopPropagation(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 233
    .local v2, "parent":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 234
    .local v3, "requestDisallowInterceptTouchEvent":Z
    if-eqz v2, :cond_3

    .line 235
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 236
    const/4 v3, 0x1

    .line 238
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 240
    :cond_3
    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 241
    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    :cond_4
    iget-boolean v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    const-string/jumbo v7, "cancelTouchOnConsume"

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    const/4 v6, 0x3

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "requestDisallowInterceptTouchEvent":Z
    .end local v4    # "result":Z
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Gesture RunTime Error "

    invoke-static {v6, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v5

    .line 250
    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "result":Z
    :pswitch_1
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    .line 208
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->hasSameOrientationWithParent()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isParentScrollable()Z

    move-result v6

    if-nez v6, :cond_5

    .line 210
    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_5

    .line 211
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 214
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_5
    sget-object v6, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v6, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 215
    goto/16 :goto_1

    .line 217
    :pswitch_2
    sget-object v6, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v6, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 218
    goto/16 :goto_1

    .line 221
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->finishDisallowInterceptTouchEvent(Landroid/view/View;)V

    .line 222
    sget-object v6, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v6, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 223
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 224
    goto/16 :goto_1

    .line 226
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->finishDisallowInterceptTouchEvent(Landroid/view/View;)V

    .line 227
    sget-object v6, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v6, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 228
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    or-int/2addr v4, v6

    goto/16 :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPreventMoveEvent(Z)V
    .locals 0
    .param p1, "preventMoveEvent"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsPreventMoveEvent:Z

    .line 119
    return-void
.end method

.method public setRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "requestDisallowInterceptTouchEvent"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    .line 630
    return-void
.end method
