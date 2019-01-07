.class public Lcom/taobao/weex/amap/component/WXMapCircleComponent;
.super Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;
.source "WXMapCircleComponent.java"


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexComponent;
    names = {
        "weex-amap-circle"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent",
        "<",
        "Lcom/amap/api/maps/model/Circle;",
        ">;"
    }
.end annotation


# instance fields
.field private mColor:I

.field private mFillColor:I

.field private mRadius:F

.field private mWeight:F


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "dom"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 29
    iput v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mColor:I

    .line 30
    iput v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mFillColor:I

    .line 31
    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mWeight:F

    .line 32
    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mRadius:F

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    .prologue
    .line 28
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    .prologue
    .line 28
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mFillColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    .prologue
    .line 28
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mWeight:F

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    .prologue
    .line 28
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mRadius:F

    return v0
.end method

.method private initCircle()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;-><init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->postMapOperationTask(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->initCircle()V

    .line 44
    :cond_0
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setFillColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fillColor"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mFillColor:I

    .line 84
    const-string/jumbo v0, "setFillColor"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapCircleComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent$3;-><init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "center"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    const-string/jumbo v0, "setPath"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapCircleComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent$1;-><init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "param"    # F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "radius"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iput p1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mRadius:F

    .line 112
    const-string/jumbo v0, "setRadius"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapCircleComponent$5;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent$5;-><init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "strokeColor"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mColor:I

    .line 70
    const-string/jumbo v0, "setStrokeColor"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapCircleComponent$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent$2;-><init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public setStrokeWeight(F)V
    .locals 2
    .param p1, "param"    # F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "strokeWidth"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iput p1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->mWeight:F

    .line 98
    const-string/jumbo v0, "setStrokeWeight"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapCircleComponent$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapCircleComponent$4;-><init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method
