.class public Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.super Laoc;
.source "BindingXScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;
    }
.end annotation


# static fields
.field private static sOffsetHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

.field private mListOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

.field private mSourceRef:Ljava/lang/String;

.field private mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Laoa;
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Laoc;-><init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method static synthetic access$1101(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p6}, Laoc;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetX:I

    return v0
.end method

.method static synthetic access$1401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D
    .param p4, "x3"    # D
    .param p6, "x4"    # D
    .param p8, "x5"    # D
    .param p10, "x6"    # D
    .param p12, "x7"    # D
    .param p14, "x8"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-super/range {p0 .. p14}, Laoc;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetX:I

    return v0
.end method

.method static synthetic access$1701(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p6}, Laoc;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D
    .param p4, "x3"    # D
    .param p6, "x4"    # D
    .param p8, "x5"    # D
    .param p10, "x6"    # D
    .param p12, "x7"    # D
    .param p14, "x8"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-virtual/range {p0 .. p14}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p6}, Laoc;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->isSameDirection(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D
    .param p4, "x3"    # D
    .param p6, "x4"    # D
    .param p8, "x5"    # D
    .param p10, "x6"    # D
    .param p12, "x7"    # D
    .param p14, "x8"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-super/range {p0 .. p14}, Laoc;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$601(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p6}, Laoc;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$801(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D
    .param p4, "x3"    # D
    .param p6, "x4"    # D
    .param p8, "x5"    # D
    .param p10, "x6"    # D
    .param p12, "x7"    # D
    .param p14, "x8"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-super/range {p0 .. p14}, Laoc;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method private isSameDirection(II)Z
    .locals 1
    .param p1, "currentValue"    # I
    .param p2, "lastValue"    # I

    .prologue
    .line 446
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    if-gez p1, :cond_2

    if-gez p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityPause()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Laok;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lanu$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Laok;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lanu$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-super/range {p0 .. p5}, Laoc;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V

    .line 156
    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    .line 85
    .local v7, "instanceId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v13

    .line 86
    .local v13, "sourceComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v13, :cond_1

    .line 87
    const-string/jumbo v14, "[ExpressionScrollHandler]source component not found."

    invoke-static {v14}, Lanz;->b(Ljava/lang/String;)V

    .line 88
    const/4 v14, 0x0

    .line 141
    :goto_1
    return v14

    .line 84
    .end local v7    # "instanceId":Ljava/lang/String;
    .end local v13    # "sourceComponent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_0

    .line 90
    .restart local v7    # "instanceId":Ljava/lang/String;
    .restart local v13    # "sourceComponent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    .line 91
    instance-of v14, v13, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v14, :cond_4

    move-object v12, v13

    .line 92
    check-cast v12, Lcom/taobao/weex/ui/component/WXScroller;

    .line 93
    .local v12, "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    invoke-virtual {v12}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 94
    .local v3, "group":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    instance-of v14, v3, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v14, :cond_2

    .line 95
    check-cast v3, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    .end local v3    # "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v9

    .line 96
    .local v9, "layout":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    if-eqz v9, :cond_2

    .line 97
    new-instance v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    invoke-virtual {v9, v14}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)V

    .line 101
    .end local v9    # "layout":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    :cond_2
    invoke-virtual {v12}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 102
    .local v6, "innerView":Landroid/view/View;
    if-eqz v6, :cond_3

    instance-of v14, v6, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v14, :cond_3

    .line 103
    new-instance v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    .line 104
    check-cast v6, Lcom/taobao/weex/ui/view/WXScrollView;

    .end local v6    # "innerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    invoke-virtual {v6, v14}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 105
    const/4 v14, 0x1

    goto :goto_1

    .line 106
    .restart local v6    # "innerView":Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_9

    instance-of v14, v6, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v14, :cond_9

    .line 107
    new-instance v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    .line 108
    check-cast v6, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    .end local v6    # "innerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    invoke-virtual {v6, v14}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    .line 109
    const/4 v14, 0x1

    goto :goto_1

    .line 112
    .end local v12    # "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    :cond_4
    instance-of v14, v13, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v14, :cond_8

    move-object v10, v13

    .line 113
    check-cast v10, Lcom/taobao/weex/ui/component/list/WXListComponent;

    .line 114
    .local v10, "list":Lcom/taobao/weex/ui/component/list/WXListComponent;
    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 115
    .local v5, "hostView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    if-eqz v5, :cond_9

    .line 116
    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v9

    .line 117
    .restart local v9    # "layout":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    if-eqz v9, :cond_5

    .line 118
    new-instance v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    invoke-virtual {v9, v14}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)V

    .line 121
    :cond_5
    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 122
    .local v11, "recyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v8, 0x1

    .line 123
    .local v8, "isVertical":Z
    :goto_2
    if-eqz v11, :cond_9

    .line 124
    sget-object v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v14, :cond_6

    .line 125
    sget-object v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    .line 126
    .local v4, "holder":Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;
    if-nez v4, :cond_6

    .line 127
    sget-object v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    new-instance v15, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v4    # "holder":Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;
    :cond_6
    new-instance v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v15}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;ZLjava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v11, v14}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 132
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 122
    .end local v8    # "isVertical":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 135
    .end local v5    # "hostView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .end local v9    # "layout":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    .end local v10    # "list":Lcom/taobao/weex/ui/component/list/WXListComponent;
    .end local v11    # "recyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_8
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    instance-of v14, v14, Landroid/support/design/widget/AppBarLayout;

    if-eqz v14, :cond_9

    .line 136
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 137
    .local v2, "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    new-instance v14, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v2, v14}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 139
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 141
    .end local v2    # "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-super {p0}, Laoc;->onDestroy()V

    .line 213
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 214
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    .line 215
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 216
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 219
    :cond_0
    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Laoc;->onDisable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    sget-object v10, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 162
    sget-object v10, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    .line 163
    .local v1, "h":Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;
    if-eqz v1, :cond_0

    .line 164
    iget v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetX:I

    iput v10, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->x:I

    .line 165
    iget v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetY:I

    iput v10, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->y:I

    .line 169
    .end local v1    # "h":Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;
    :cond_0
    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    .line 170
    .local v4, "instanceId":Ljava/lang/String;
    :goto_0
    invoke-static {v4, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v9

    .line 171
    .local v9, "sourceComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v9, :cond_2

    .line 172
    const-string/jumbo v10, "[ExpressionScrollHandler]source component not found."

    invoke-static {v10}, Lanz;->b(Ljava/lang/String;)V

    .line 173
    const/4 v10, 0x0

    .line 206
    :goto_1
    return v10

    .line 169
    .end local v4    # "instanceId":Ljava/lang/String;
    .end local v9    # "sourceComponent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_0

    .line 175
    .restart local v4    # "instanceId":Ljava/lang/String;
    .restart local v9    # "sourceComponent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_2
    instance-of v10, v9, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v10, :cond_5

    move-object v8, v9

    .line 176
    check-cast v8, Lcom/taobao/weex/ui/component/WXScroller;

    .line 177
    .local v8, "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 178
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    instance-of v10, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v10, :cond_3

    .line 179
    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    .end local v0    # "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v5

    .line 180
    .local v5, "layout":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    if-eqz v5, :cond_3

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    if-eqz v10, :cond_3

    .line 181
    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)Z

    .line 184
    .end local v5    # "layout":Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    :cond_3
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 185
    .local v3, "innerView":Landroid/view/View;
    if-eqz v3, :cond_4

    instance-of v10, v3, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    if-eqz v10, :cond_4

    .line 186
    check-cast v3, Lcom/taobao/weex/ui/view/WXScrollView;

    .end local v3    # "innerView":Landroid/view/View;
    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    invoke-virtual {v3, v10}, Lcom/taobao/weex/ui/view/WXScrollView;->removeScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 187
    const/4 v10, 0x1

    goto :goto_1

    .line 188
    .restart local v3    # "innerView":Landroid/view/View;
    :cond_4
    if-eqz v3, :cond_7

    instance-of v10, v3, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    if-eqz v10, :cond_7

    .line 189
    check-cast v3, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    .end local v3    # "innerView":Landroid/view/View;
    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    invoke-virtual {v3, v10}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->removeScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    .line 190
    const/4 v10, 0x1

    goto :goto_1

    .line 192
    .end local v8    # "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    :cond_5
    instance-of v10, v9, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v10, :cond_7

    move-object v6, v9

    .line 193
    check-cast v6, Lcom/taobao/weex/ui/component/list/WXListComponent;

    .line 194
    .local v6, "list":Lcom/taobao/weex/ui/component/list/WXListComponent;
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 195
    .local v2, "hostView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    if-eqz v2, :cond_7

    .line 196
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    if-eqz v10, :cond_6

    .line 197
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    invoke-virtual {v10, v11}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)Z

    .line 199
    :cond_6
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 200
    .local v7, "recyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    if-eqz v7, :cond_7

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v10, :cond_7

    .line 201
    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v7, v10}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 202
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 206
    .end local v2    # "hostView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .end local v6    # "list":Lcom/taobao/weex/ui/component/list/WXListComponent;
    .end local v7    # "recyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    return-void
.end method
