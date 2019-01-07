.class public Lcom/taobao/weex/devtools/trace/DomTracker;
.super Ljava/lang/Object;
.source "DomTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;,
        Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;,
        Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;
    }
.end annotation


# static fields
.field private static final START_LAYER_OF_REAL_DOM:I = 0x2

.field private static final START_LAYER_OF_VDOM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VDomTracker"


# instance fields
.field private mLayeredQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnTrackNodeListener:Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;

.field private mRealDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool",
            "<",
            "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool",
            "<",
            "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWxInstance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mWxInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mLayeredQueue:Ljava/util/Deque;

    .line 55
    new-instance v0, Lcom/taobao/weex/devtools/trace/DomTracker$1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/trace/DomTracker$1;-><init>(Lcom/taobao/weex/devtools/trace/DomTracker;I)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mVDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    .line 61
    new-instance v0, Lcom/taobao/weex/devtools/trace/DomTracker$2;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/trace/DomTracker$2;-><init>(Lcom/taobao/weex/devtools/trace/DomTracker;I)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mRealDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    .line 67
    return-void
.end method

.method private getComponentNumOfNode(Lcom/taobao/weex/ui/component/WXComponent;)I
    .locals 7
    .param p1, "rootNode"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 227
    .local v2, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-interface {v2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v5, 0x0

    .line 229
    .local v5, "viewNum":I
    :cond_0
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 230
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/component/WXComponent;

    .line 231
    .local v4, "node":Lcom/taobao/weex/ui/component/WXComponent;
    add-int/lit8 v5, v5, 0x1

    .line 232
    instance-of v6, v4, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v6, :cond_0

    move-object v0, v4

    .line 233
    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 234
    .local v0, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 235
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "node":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    return v5
.end method

.method private getRealDomMaxLayer(Landroid/view/View;)I
    .locals 13
    .param p1, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 243
    const/4 v8, 0x0

    .line 244
    .local v8, "maxLayer":I
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 245
    .local v5, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Landroid/view/View;>;>;"
    iget-object v11, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mRealDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    invoke-virtual {v11}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->obtain()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    .line 246
    .local v9, "rootNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Landroid/view/View;>;"
    const/4 v11, 0x2

    invoke-virtual {v9, p1, v12, v11}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->set(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 247
    invoke-interface {v5, v9}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 250
    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    .line 251
    .local v4, "currentNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Landroid/view/View;>;"
    iget v11, v4, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->layer:I

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 253
    iget-object v2, v4, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->component:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 254
    .local v2, "component":Landroid/view/View;
    iget v7, v4, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->layer:I

    .line 256
    .local v7, "layer":I
    invoke-virtual {v4}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->clear()V

    .line 257
    iget-object v11, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mRealDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    invoke-virtual {v11, v4}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 259
    instance-of v11, v2, Landroid/view/ViewGroup;

    if-eqz v11, :cond_0

    move-object v11, v2

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_0

    move-object v10, v2

    .line 260
    check-cast v10, Landroid/view/ViewGroup;

    .line 261
    .local v10, "viewGroup":Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 262
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "child":Landroid/view/View;
    iget-object v11, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mRealDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    invoke-virtual {v11}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    .line 264
    .local v1, "childNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Landroid/view/View;>;"
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1, v0, v12, v11}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->set(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 265
    invoke-interface {v5, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Landroid/view/View;>;"
    .end local v2    # "component":Landroid/view/View;
    .end local v3    # "count":I
    .end local v4    # "currentNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Landroid/view/View;>;"
    .end local v6    # "i":I
    .end local v7    # "layer":I
    .end local v10    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return v8
.end method

.method private isBigCell(F)Z
    .locals 8
    .param p1, "maxHeight"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 274
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    :cond_1
    float-to-double v2, p1

    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-double v4, v1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method setOnTrackNodeListener(Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/taobao/weex/devtools/trace/DomTracker;->mOnTrackNodeListener:Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;

    .line 71
    return-void
.end method

.method public traverse()Lcom/taobao/weex/devtools/trace/HealthReport;
    .locals 36
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 76
    .local v26, "start":J
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v28

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 77
    const-string/jumbo v28, "VDomTracker"

    const-string/jumbo v29, "illegal thread..."

    invoke-static/range {v28 .. v29}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v25, 0x0

    .line 220
    :goto_0
    return-object v25

    .line 80
    :cond_0
    const/16 v23, 0x0

    .line 81
    .local v23, "pageHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mWxInstance:Lcom/taobao/weex/WXSDKInstance;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v14

    .line 82
    .local v14, "godComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v14, :cond_1

    .line 83
    const-string/jumbo v28, "VDomTracker"

    const-string/jumbo v29, "god component not found"

    invoke-static/range {v28 .. v29}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/16 v25, 0x0

    goto :goto_0

    .line 86
    :cond_1
    new-instance v25, Lcom/taobao/weex/devtools/trace/HealthReport;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mWxInstance:Lcom/taobao/weex/WXSDKInstance;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/trace/HealthReport;-><init>(Ljava/lang/String;)V

    .line 88
    .local v25, "report":Lcom/taobao/weex/devtools/trace/HealthReport;
    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v16

    .line 89
    .local v16, "hostView":Landroid/view/View;
    if-eqz v16, :cond_2

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/trace/DomTracker;->getRealDomMaxLayer(Landroid/view/View;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->maxLayerOfRealDom:I

    .line 91
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 94
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mVDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->obtain()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    .line 95
    .local v19, "layeredNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-static {v14}, Lcom/taobao/weex/devtools/trace/ViewUtils;->getComponentName(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v14, v1, v2}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->set(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mLayeredQueue:Ljava/util/Deque;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mLayeredQueue:Ljava/util/Deque;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Deque;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_11

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mLayeredQueue:Ljava/util/Deque;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    .line 101
    .local v11, "domNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Lcom/taobao/weex/ui/component/WXComponent;>;"
    iget-object v6, v11, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->component:Ljava/lang/Object;

    check-cast v6, Lcom/taobao/weex/ui/component/WXComponent;

    .line 102
    .local v6, "component":Lcom/taobao/weex/ui/component/WXComponent;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->componentCount:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->componentCount:I

    .line 103
    iget v0, v11, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->layer:I

    move/from16 v18, v0

    .line 105
    .local v18, "layer":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->maxLayer:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->maxLayer:I

    .line 106
    move-object/from16 v0, v25

    iget v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->estimateContentHeight:I

    move/from16 v28, v0

    .line 107
    invoke-static {v6}, Lcom/taobao/weex/devtools/trace/ComponentHeightComputer;->computeComponentContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v29

    .line 106
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->estimateContentHeight:I

    .line 110
    iget-object v0, v11, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->tint:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 111
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->embedDescList:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_4
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;

    .line 112
    .local v10, "desc":Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;
    iget-object v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->src:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    iget-object v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->src:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->tint:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 113
    iget v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->actualMaxLayer:I

    move/from16 v29, v0

    iget v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->beginLayer:I

    move/from16 v30, v0

    sub-int v30, v18, v30

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    iput v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->actualMaxLayer:I

    goto :goto_2

    .line 118
    .end local v10    # "desc":Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mOnTrackNodeListener:Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mOnTrackNodeListener:Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/taobao/weex/devtools/trace/DomTracker$OnTrackNodeListener;->onTrackNode(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 122
    :cond_6
    instance-of v0, v6, Lcom/taobao/weex/ui/component/list/WXListComponent;

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 123
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->hasList:Z

    .line 125
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->listDescMap:Ljava/util/Map;

    move-object/from16 v28, v0

    if-nez v28, :cond_7

    .line 126
    new-instance v28, Ljava/util/LinkedHashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->listDescMap:Ljava/util/Map;

    .line 129
    :cond_7
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->listDescMap:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;

    .line 130
    .local v20, "listDesc":Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;
    if-nez v20, :cond_8

    .line 131
    new-instance v20, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;

    .end local v20    # "listDesc":Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;
    invoke-direct/range {v20 .. v20}, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;-><init>()V

    .line 133
    .restart local v20    # "listDesc":Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;
    :cond_8
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;->ref:Ljava/lang/String;

    .line 134
    invoke-static {v6}, Lcom/taobao/weex/devtools/trace/ComponentHeightComputer;->computeComponentContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;->totalHeight:I

    .line 135
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->listDescMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;->ref:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v20    # "listDesc":Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;
    :cond_9
    :goto_3
    invoke-virtual {v11}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->clear()V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mVDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 169
    instance-of v0, v6, Lcom/taobao/weex/ui/component/WXEmbed;

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 171
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->embedDescList:Ljava/util/List;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    .line 172
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->embedDescList:Ljava/util/List;

    .line 174
    :cond_a
    new-instance v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;

    invoke-direct {v10}, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;-><init>()V

    .restart local v10    # "desc":Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;
    move-object/from16 v28, v6

    .line 175
    check-cast v28, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/ui/component/WXEmbed;->getSrc()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->src:Ljava/lang/String;

    .line 176
    move/from16 v0, v18

    iput v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->beginLayer:I

    .line 178
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->embedDescList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    check-cast v6, Lcom/taobao/weex/ui/component/WXEmbed;

    .end local v6    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-static {v6}, Lcom/taobao/weex/devtools/trace/ViewUtils;->getNestedRootComponent(Lcom/taobao/weex/ui/component/WXEmbed;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v21

    .line 182
    .local v21, "nestedRootComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v21, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mVDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    .line 184
    .local v5, "childNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-static/range {v21 .. v21}, Lcom/taobao/weex/devtools/trace/ViewUtils;->getComponentName(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v28

    add-int/lit8 v29, v18, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v5, v0, v1, v2}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->set(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mLayeredQueue:Ljava/util/Deque;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, v10, Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;->src:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->tint:Ljava/lang/String;

    goto/16 :goto_1

    .line 137
    .end local v5    # "childNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v10    # "desc":Lcom/taobao/weex/devtools/trace/HealthReport$EmbedDesc;
    .end local v21    # "nestedRootComponent":Lcom/taobao/weex/ui/component/WXComponent;
    .restart local v6    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_b
    instance-of v0, v6, Lcom/taobao/weex/ui/component/WXScroller;

    move/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v28, v6

    .line 138
    check-cast v28, Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static/range {v28 .. v28}, Lcom/taobao/weex/devtools/trace/ViewUtils;->isVerticalScroller(Lcom/taobao/weex/ui/component/WXScroller;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 139
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->hasScroller:Z

    goto/16 :goto_3

    .line 142
    :cond_c
    instance-of v0, v6, Lcom/taobao/weex/ui/component/list/WXCell;

    move/from16 v28, v0

    if-eqz v28, :cond_e

    .line 144
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v24

    .line 145
    .local v24, "parentContainer":Lcom/taobao/weex/ui/component/WXVContainer;
    if-eqz v24, :cond_d

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/taobao/weex/ui/component/list/WXListComponent;

    move/from16 v28, v0

    if-eqz v28, :cond_d

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->listDescMap:Ljava/util/Map;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    .line 146
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->listDescMap:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v24}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;

    .line 147
    .restart local v20    # "listDesc":Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;
    if-eqz v20, :cond_d

    .line 148
    move-object/from16 v0, v20

    iget v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;->cellNum:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;->cellNum:I

    .line 152
    .end local v20    # "listDesc":Lcom/taobao/weex/devtools/trace/HealthReport$ListDesc;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/taobao/weex/devtools/trace/DomTracker;->getComponentNumOfNode(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v22

    .line 153
    .local v22, "num":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->maxCellViewNum:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->maxCellViewNum:I

    move-object/from16 v28, v6

    .line 155
    check-cast v28, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_9

    move-object/from16 v28, v6

    .line 156
    check-cast v28, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getMeasuredHeight()I

    move-result v15

    .line 157
    .local v15, "height":I
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->hasBigCell:Z

    move/from16 v28, v0

    int-to-float v0, v15

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/trace/DomTracker;->isBigCell(F)Z

    move-result v29

    or-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->hasBigCell:Z

    .line 158
    move/from16 v0, v22

    move-object/from16 v1, v25

    iput v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->componentNumOfBigCell:I

    goto/16 :goto_3

    .line 161
    .end local v15    # "height":I
    .end local v22    # "num":I
    .end local v24    # "parentContainer":Lcom/taobao/weex/ui/component/WXVContainer;
    :cond_e
    instance-of v0, v6, Lcom/taobao/weex/ui/component/WXEmbed;

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 162
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->hasEmbed:Z

    goto/16 :goto_3

    .line 190
    :cond_f
    instance-of v0, v6, Lcom/taobao/weex/ui/component/WXVContainer;

    move/from16 v28, v0

    if-eqz v28, :cond_3

    move-object v7, v6

    .line 191
    check-cast v7, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 192
    .local v7, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v9

    .local v9, "count":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v9, :cond_3

    .line 193
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    .line 194
    .local v4, "child":Lcom/taobao/weex/ui/component/WXComponent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mVDomObjectPool:Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;

    .line 195
    .restart local v5    # "childNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-static {v4}, Lcom/taobao/weex/devtools/trace/ViewUtils;->getComponentName(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v28

    add-int/lit8 v29, v18, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v4, v0, v1}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->set(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 198
    iget-object v0, v11, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->tint:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 199
    iget-object v0, v11, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->tint:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->tint:Ljava/lang/String;

    .line 202
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mLayeredQueue:Ljava/util/Deque;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 207
    .end local v4    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v5    # "childNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v6    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v7    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v9    # "count":I
    .end local v11    # "domNode":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v17    # "i":I
    .end local v18    # "layer":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/trace/DomTracker;->mWxInstance:Lcom/taobao/weex/WXSDKInstance;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 208
    .local v8, "context":Landroid/content/Context;
    if-eqz v8, :cond_12

    .line 209
    if-nez v23, :cond_12

    invoke-static {v8}, Lcom/taobao/weex/devtools/trace/ViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v23

    .line 212
    :cond_12
    if-eqz v23, :cond_13

    .line 213
    sget-object v28, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v29, "%.2f"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/taobao/weex/devtools/trace/HealthReport;->estimateContentHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->estimatePages:Ljava/lang/String;

    .line 218
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 219
    .local v12, "end":J
    const-string/jumbo v28, "VDomTracker"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "[traverse] elapse time :"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v30, v12, v26

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    .end local v12    # "end":J
    :cond_13
    const-string/jumbo v28, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/taobao/weex/devtools/trace/HealthReport;->estimatePages:Ljava/lang/String;

    goto :goto_5
.end method
