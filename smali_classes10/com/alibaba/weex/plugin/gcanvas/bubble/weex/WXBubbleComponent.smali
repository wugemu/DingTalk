.class public Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXBubbleComponent.java"


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexComponent;
    names = {
        "bubble"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "lazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-ne v1, v2, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 91
    .local v0, "count":I
    if-lt p2, v0, :cond_0

    const/4 p2, -0x1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->addView(Landroid/view/View;I)V

    .line 94
    .end local v0    # "count":I
    :cond_1
    return-void
.end method

.method public inViewBubbleList(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .line 10646
    iget-object v0, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 10647
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    iget-object v0, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 10648
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 10649
    iget-object v0, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 11214
    iget v0, v0, Lhzm;->a:I

    .line 10649
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 10648
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 254
    :cond_2
    invoke-interface {p1, v4}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->initComponentHostView(Landroid/content/Context;)Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-direct {v0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .line 63
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    return-object v0
.end method

.method public outViewBubbleList(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .line 11655
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 11656
    iget-object v0, v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 11657
    iget-object v4, v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 12214
    iget v0, v0, Lhzm;->a:I

    .line 11658
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_3
    invoke-interface {p1, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 4
    .param p1, "startCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p2, "endCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p3, "bubbleClickCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-eqz v2, :cond_1

    .line 181
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 220
    .local v0, "animationListener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .line 1818
    iget-object v3, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1819
    iget-object v2, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    new-instance v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$2;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$2;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 229
    .local v1, "bubbleClickListener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .line 1824
    iget-object v3, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1825
    iget-object v2, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v0    # "animationListener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;
    .end local v1    # "bubbleClickListener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;
    :cond_1
    return-void
.end method

.method public replaceBubble(II)V
    .locals 16
    .param p1, "sourceIdx"    # I
    .param p2, "destIdx"    # I
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-eqz v2, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .line 3428
    iget-object v2, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3429
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3430
    const/4 v2, 0x1

    .line 2700
    :goto_0
    if-nez v2, :cond_1

    iget-boolean v2, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->m:Z

    if-eqz v2, :cond_3

    .line 2722
    :cond_1
    :goto_1
    return-void

    .line 3433
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2703
    :cond_3
    iget-object v2, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p2

    if-gt v0, v2, :cond_1

    if-ltz p2, :cond_1

    .line 2708
    if-ltz p1, :cond_1

    iget-object v2, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-gt v0, v2, :cond_1

    .line 2712
    const/4 v3, 0x0

    .line 2713
    iget-object v2, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhzm;

    .line 4214
    iget v5, v2, Lhzm;->a:I

    .line 2714
    move/from16 v0, p1

    if-ne v5, v0, :cond_4

    move-object v4, v2

    .line 2720
    :goto_2
    iget-object v2, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhzn;

    .line 2721
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 5142
    iget-object v3, v4, Lhzm;->c:Lhzn;

    .line 2721
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2725
    iget-object v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2729
    iget-object v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 2733
    const/4 v3, 0x1

    iput-boolean v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->n:Z

    .line 2735
    iget-object v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 2736
    iget-object v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2739
    :cond_5
    iget-object v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhzm;

    .line 6142
    iget-object v7, v3, Lhzm;->c:Lhzn;

    .line 2741
    if-eqz v7, :cond_6

    iget-boolean v8, v7, Lhzn;->i:Z

    if-nez v8, :cond_6

    .line 2744
    if-eq v4, v3, :cond_7

    iget v8, v7, Lhzn;->e:I

    iget v9, v2, Lhzn;->e:I

    if-ne v8, v9, :cond_7

    iget v7, v7, Lhzn;->f:I

    iget v8, v2, Lhzn;->f:I

    if-lt v7, v8, :cond_7

    .line 2745
    const/16 v7, 0x200

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lhzm;->a(IZ)V

    .line 7142
    iget-object v7, v3, Lhzm;->c:Lhzn;

    .line 2747
    if-eqz v7, :cond_6

    iget v7, v7, Lhzn;->f:I

    iget v8, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a:I

    if-lt v7, v8, :cond_6

    .line 2748
    iget-object v7, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v7, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Ljava/util/List;Lhzm;)I

    .line 2749
    iget-object v7, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 7218
    :cond_7
    if-eqz v2, :cond_6

    iget-object v7, v3, Lhzm;->c:Lhzn;

    if-eqz v7, :cond_6

    iget-object v7, v3, Lhzm;->b:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 7222
    const/high16 v7, 0x41800000    # 16.0f

    const/16 v8, 0x2ee

    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v7

    .line 7223
    iget-object v8, v3, Lhzm;->c:Lhzn;

    iget v8, v8, Lhzn;->c:F

    .line 7224
    iget-object v9, v3, Lhzm;->c:Lhzn;

    iget v9, v9, Lhzn;->a:F

    .line 7225
    iget-object v10, v3, Lhzm;->c:Lhzn;

    iget v10, v10, Lhzn;->b:F

    .line 7226
    iget v11, v2, Lhzn;->a:F

    .line 7227
    iget v12, v2, Lhzn;->b:F

    .line 7228
    sub-float v13, v9, v11

    sub-float v14, v9, v11

    mul-float/2addr v13, v14

    sub-float v14, v10, v12

    sub-float v15, v10, v12

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v13, v14

    .line 7229
    mul-float v14, v7, v8

    mul-float/2addr v14, v8

    sub-float v9, v11, v9

    mul-float/2addr v9, v14

    mul-float v11, v13, v13

    mul-float/2addr v11, v13

    div-float/2addr v9, v11

    .line 7230
    mul-float/2addr v7, v8

    mul-float/2addr v7, v8

    sub-float v8, v12, v10

    mul-float/2addr v7, v8

    mul-float v8, v13, v13

    mul-float/2addr v8, v13

    div-float/2addr v7, v8

    .line 7231
    new-instance v8, Lhzp;

    invoke-direct {v8}, Lhzp;-><init>()V

    .line 7232
    iget-object v10, v3, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    .line 7233
    iget-object v11, v3, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .line 7234
    iget-object v12, v3, Lhzm;->b:Landroid/view/View;

    sget-object v13, Landroid/support/animation/DynamicAnimation;->TRANSLATION_X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    add-float/2addr v9, v10

    const/high16 v14, 0x43480000    # 200.0f

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-static {v12, v13, v9, v14, v15}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v9

    .line 7235
    iget-object v12, v3, Lhzm;->b:Landroid/view/View;

    sget-object v13, Landroid/support/animation/DynamicAnimation;->TRANSLATION_Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    add-float/2addr v7, v11

    const/high16 v14, 0x43480000    # 200.0f

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-static {v12, v13, v7, v14, v15}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v7

    .line 7236
    const/4 v12, 0x2

    new-array v12, v12, [Landroid/support/animation/SpringAnimation;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v9, 0x1

    aput-object v7, v12, v9

    invoke-virtual {v8, v12}, Lhzp;->a([Landroid/support/animation/SpringAnimation;)V

    .line 7238
    new-instance v7, Lhzp;

    invoke-direct {v7}, Lhzp;-><init>()V

    .line 7239
    iget-object v9, v3, Lhzm;->b:Landroid/view/View;

    sget-object v12, Landroid/support/animation/DynamicAnimation;->TRANSLATION_X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    const/high16 v13, 0x43960000    # 300.0f

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v9, v12, v10, v13, v14}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v9

    .line 7240
    iget-object v10, v3, Lhzm;->b:Landroid/view/View;

    sget-object v12, Landroid/support/animation/DynamicAnimation;->TRANSLATION_Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    const/high16 v13, 0x43960000    # 300.0f

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v10, v12, v11, v13, v14}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v10

    .line 7241
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/support/animation/SpringAnimation;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v10, v11, v9

    invoke-virtual {v7, v11}, Lhzp;->a([Landroid/support/animation/SpringAnimation;)V

    .line 7243
    new-instance v9, Lhzm$6;

    invoke-direct {v9, v3, v7}, Lhzm$6;-><init>(Lhzm;Lhzp;)V

    invoke-virtual {v8, v9}, Lhzp;->a(Lhzp$b;)Z

    .line 7253
    invoke-virtual {v8}, Lhzp;->b()V

    goto/16 :goto_3

    .line 2755
    :cond_8
    iget-object v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2756
    iget-object v3, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3, v4}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Ljava/util/List;Lhzm;)I

    .line 7257
    :cond_9
    if-nez v2, :cond_a

    .line 2759
    :goto_4
    iget-object v2, v6, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    .line 8214
    iget v3, v4, Lhzm;->a:I

    .line 2759
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 7260
    :cond_a
    iget-object v3, v4, Lhzm;->c:Lhzn;

    if-eqz v3, :cond_b

    iget v3, v2, Lhzn;->c:F

    iget-object v5, v4, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 7261
    :goto_5
    iget-object v5, v4, Lhzm;->c:Lhzn;

    if-eqz v5, :cond_c

    iget v5, v2, Lhzn;->d:F

    iget-object v7, v4, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 7262
    :goto_6
    new-instance v7, Lhzp;

    invoke-direct {v7}, Lhzp;-><init>()V

    .line 7265
    iget-object v8, v4, Lhzm;->b:Landroid/view/View;

    iget v9, v2, Lhzn;->a:F

    iget v10, v2, Lhzn;->c:F

    iget-object v11, v4, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->setX(F)V

    .line 7266
    iget-object v8, v4, Lhzm;->b:Landroid/view/View;

    iget v9, v2, Lhzn;->b:F

    iget v10, v2, Lhzn;->d:F

    iget-object v11, v4, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->setY(F)V

    .line 7267
    iput-object v2, v4, Lhzm;->c:Lhzn;

    .line 7268
    iget-object v2, v4, Lhzm;->b:Landroid/view/View;

    sget-object v8, Landroid/support/animation/DynamicAnimation;->SCALE_X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    const/high16 v9, 0x43480000    # 200.0f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v2, v8, v3, v9, v10}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v2

    .line 7269
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/animation/SpringAnimation;->setStartValue(F)Landroid/support/animation/DynamicAnimation;

    .line 7270
    iget-object v3, v4, Lhzm;->b:Landroid/view/View;

    sget-object v8, Landroid/support/animation/DynamicAnimation;->SCALE_Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    const/high16 v9, 0x43480000    # 200.0f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v3, v8, v5, v9, v10}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v3

    .line 7271
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/animation/SpringAnimation;->setStartValue(F)Landroid/support/animation/DynamicAnimation;

    .line 7272
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/support/animation/SpringAnimation;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v7, v5}, Lhzp;->a([Landroid/support/animation/SpringAnimation;)V

    .line 7273
    iget-object v2, v4, Lhzm;->d:Lhzp$b;

    invoke-virtual {v7, v2}, Lhzp;->a(Lhzp$b;)Z

    .line 7274
    invoke-virtual {v7}, Lhzp;->b()V

    goto/16 :goto_4

    .line 7260
    :cond_b
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    .line 7261
    :cond_c
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_d
    move-object v4, v3

    goto/16 :goto_2
.end method

.method public resetBubbles()V
    .locals 13
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x44fa0000    # 2000.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 242
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .line 8666
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 8667
    :cond_0
    :goto_0
    return-void

    .line 8671
    :cond_1
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8672
    invoke-virtual {v7}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getChildCount()I

    move-result v3

    .line 8673
    if-le v0, v3, :cond_5

    move v2, v3

    .line 8678
    :goto_1
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v4

    move v5, v4

    .line 8679
    :goto_2
    if-ge v6, v8, :cond_2

    if-ge v5, v3, :cond_2

    .line 8680
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzn;

    .line 8681
    iget-object v1, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzm;

    .line 9146
    iput-object v0, v1, Lhzm;->c:Lhzn;

    .line 8679
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_2

    .line 8684
    :cond_2
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v5

    move v5, v2

    .line 8685
    :goto_3
    if-ge v5, v3, :cond_3

    if-ge v6, v3, :cond_3

    .line 8686
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    sub-int v1, v5, v2

    rem-int/2addr v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzn;

    .line 8687
    iget-object v1, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzm;

    .line 10146
    iput-object v0, v1, Lhzm;->c:Lhzn;

    .line 8685
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v6, 0x1

    move v5, v0

    move v6, v1

    goto :goto_3

    :cond_3
    move v1, v4

    .line 8690
    :goto_4
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 8691
    iget-object v0, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 10154
    new-instance v2, Lhzp;

    invoke-direct {v2}, Lhzp;-><init>()V

    .line 10155
    iget-object v3, v0, Lhzm;->b:Landroid/view/View;

    sget-object v5, Landroid/support/animation/DynamicAnimation;->SCALE_X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v6, v0, Lhzm;->c:Lhzn;

    iget v6, v6, Lhzn;->c:F

    iget-object v8, v0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v3, v5, v6, v11, v10}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v3

    .line 10156
    iget-object v5, v0, Lhzm;->b:Landroid/view/View;

    sget-object v6, Landroid/support/animation/DynamicAnimation;->SCALE_Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v8, v0, Lhzm;->c:Lhzn;

    iget v8, v8, Lhzn;->d:F

    iget-object v9, v0, Lhzm;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v5, v6, v8, v11, v10}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v5

    .line 10157
    iget-object v6, v0, Lhzm;->b:Landroid/view/View;

    sget-object v8, Landroid/support/animation/DynamicAnimation;->X:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v9, v0, Lhzm;->c:Lhzn;

    iget v9, v9, Lhzn;->a:F

    invoke-static {v6, v8, v9, v11, v10}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v6

    .line 10158
    iget-object v8, v0, Lhzm;->b:Landroid/view/View;

    sget-object v9, Landroid/support/animation/DynamicAnimation;->Y:Landroid/support/animation/DynamicAnimation$ViewProperty;

    iget-object v0, v0, Lhzm;->c:Lhzn;

    iget v0, v0, Lhzn;->b:F

    invoke-static {v8, v9, v0, v11, v10}, Lhzq;->a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;

    move-result-object v0

    .line 10159
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/support/animation/SpringAnimation;

    aput-object v3, v8, v4

    aput-object v5, v8, v12

    const/4 v3, 0x2

    aput-object v6, v8, v3

    const/4 v3, 0x3

    aput-object v0, v8, v3

    invoke-virtual {v2, v8}, Lhzp;->a([Landroid/support/animation/SpringAnimation;)V

    .line 10160
    invoke-virtual {v2}, Lhzp;->b()V

    .line 8690
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 8694
    :cond_4
    iput-boolean v12, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    .line 8695
    iput-boolean v4, v7, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->o:Z

    .line 8696
    invoke-virtual {v7}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->requestLayout()V

    goto/16 :goto_0

    :cond_5
    move v2, v0

    goto/16 :goto_1
.end method

.method public setPositions([[F)V
    .locals 1
    .param p1, "positions"    # [[F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "positions"
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-virtual {v0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setPositions([[F)V

    .line 71
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 99
    const/16 v17, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v17, :pswitch_data_0

    .line 174
    invoke-super/range {p0 .. p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    :goto_1
    return v17

    .line 99
    :sswitch_0
    const-string/jumbo v18, "positions"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v18, "rows"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v18, "nails"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v18, "total"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v17, 0x3

    goto :goto_0

    .line 101
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 102
    .local v16, "value":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 104
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONArray;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    .line 105
    .local v3, "data":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .line 106
    .local v7, "length":I
    new-array v13, v7, [[F

    .line 107
    .local v13, "positions":[[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_2

    .line 108
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    .line 109
    .local v12, "posData":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 110
    .local v2, "coordLength":I
    new-array v0, v2, [F

    move-object/from16 v17, v0

    aput-object v17, v13, v4

    .line 111
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v2, :cond_1

    .line 112
    aget-object v17, v13, v4

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONArray;->getFloat(I)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    const/16 v19, 0x2ee

    invoke-static/range {v18 .. v19}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v18

    aput v18, v17, v5

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 107
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 115
    .end local v2    # "coordLength":I
    .end local v5    # "j":I
    .end local v12    # "posData":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setPositions([[F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "i":I
    .end local v7    # "length":I
    .end local v13    # "positions":[[F
    :cond_3
    :goto_4
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 125
    .end local v16    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-static/range {p2 .. p2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 126
    .local v14, "rows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setRows(I)V

    .line 129
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 132
    .end local v14    # "rows":I
    :pswitch_2
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "nailStr":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 135
    :try_start_1
    invoke-static {v10}, Lcom/alibaba/fastjson/JSONArray;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    .line 136
    .restart local v3    # "data":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .line 137
    .restart local v7    # "length":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v7, v0, :cond_5

    .line 138
    sget-object v17, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "nail array length must be 2, 0 is head, 1 is tail. example:[ [[head_nail1],[head_nail2]], [[tail_nail1],[tail_nail2]] ]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 142
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v7, :cond_a

    .line 143
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v11

    .line 144
    .local v11, "nails":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    .line 145
    .local v9, "nailLength":I
    new-array v13, v9, [[F

    .line 146
    .restart local v13    # "positions":[[F
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_6
    if-ge v5, v9, :cond_7

    .line 147
    invoke-virtual {v11, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 148
    .local v8, "nailData":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 149
    .restart local v2    # "coordLength":I
    new-array v0, v2, [F

    move-object/from16 v17, v0

    aput-object v17, v13, v5

    .line 150
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_7
    if-ge v6, v2, :cond_6

    .line 151
    aget-object v17, v13, v5

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/JSONArray;->getFloat(I)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    const/16 v19, 0x2ee

    invoke-static/range {v18 .. v19}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v18

    aput v18, v17, v6

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 146
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 154
    .end local v2    # "coordLength":I
    .end local v6    # "k":I
    .end local v8    # "nailData":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 155
    if-nez v4, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setHeadNails([[F)V

    .line 142
    :cond_8
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 158
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setTailNails([[F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .end local v3    # "data":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "length":I
    .end local v9    # "nailLength":I
    .end local v11    # "nails":Lcom/alibaba/fastjson/JSONArray;
    .end local v13    # "positions":[[F
    :catch_0
    move-exception v17

    .line 166
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 168
    .end local v10    # "nailStr":Ljava/lang/String;
    :pswitch_3
    invoke-static/range {p2 .. p2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 169
    .local v15, "total":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setTotal(I)V

    .line 172
    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v15    # "total":I
    .restart local v16    # "value":Ljava/lang/String;
    :catch_1
    move-exception v17

    goto/16 :goto_4

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x3581d9 -> :sswitch_1
        0x63bc91d -> :sswitch_2
        0x696db44 -> :sswitch_3
        0x65c08c6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRows(I)V
    .locals 1
    .param p1, "rows"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "rows"
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-virtual {v0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setRows(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setTotal(I)V
    .locals 1
    .param p1, "totals"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "total"
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->mBubbleContainer:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-virtual {v0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setTotal(I)V

    .line 85
    :cond_0
    return-void
.end method
