.class public abstract Lcom/taobao/weex/ui/component/list/BasicListComponent;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "BasicListComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/Scrollable;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/list/BasicListComponent$DragTriggerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ":",
        "Lcom/taobao/weex/ui/component/list/ListComponentView;",
        ">",
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<TT;>;",
        "Lcom/taobao/weex/ui/component/Scrollable;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener",
        "<",
        "Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXCLUDED:Z = false

.field private static final DEFAULT_TRIGGER_TYPE:Ljava/lang/String; = "longpress"

.field private static final DRAG_ANCHOR:Ljava/lang/String; = "dragAnchor"

.field private static final DRAG_TRIGGER_TYPE:Ljava/lang/String; = "dragTriggerType"

.field private static final EXCLUDED:Ljava/lang/String; = "dragExcluded"

.field public static final LOADMOREOFFSET:Ljava/lang/String; = "loadmoreoffset"

.field private static final MAX_VIEWTYPE_ALLOW_CACHE:I = 0x9

.field public static final TRANSFORM:Ljava/lang/String; = "transform"

.field private static mAllowCacheViewHolder:Z

.field private static mDownForBidCacheViewHolder:Z

.field private static final transformPattern:Ljava/util/regex/Pattern;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isScrollable:Z

.field private keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

.field private keepPositionCellRunnable:Ljava/lang/Runnable;

.field private keepPositionLayoutDelay:J

.field private mAppearChangeRunnable:Ljava/lang/Runnable;

.field private mAppearChangeRunnableDelay:J

.field private mAppearComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field protected mLeftGap:F

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mRefToViewType:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mRightGap:F

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mStickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTriggerType:Ljava/lang/String;

.field private mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

.field private mViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "([a-z]+)\\(([0-9\\.]+),?([0-9\\.]+)?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->transformPattern:Ljava/util/regex/Pattern;

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 7
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 93
    const-string/jumbo v0, "BasicListComponent"

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    .line 94
    iput v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    .line 95
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    .line 99
    iput-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 100
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    .line 102
    iput-boolean v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    .line 105
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    .line 112
    iput v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLayoutType:I

    .line 113
    iput v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    .line 114
    iput v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnGap:F

    .line 115
    iput v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnWidth:F

    .line 116
    iput v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLeftGap:F

    .line 117
    iput v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRightGap:F

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    .line 120
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    .line 121
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    .line 166
    iput-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    .line 167
    iput-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    .line 168
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    .line 173
    new-instance v0, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;
    .param p1, "x1"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/list/BasicListComponent;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/list/DragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/list/BasicListComponent;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->shouldReport(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/BasicListComponent;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireScrollEvent(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method private bindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1088
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    .line 1090
    .local v0, "id":I
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 1091
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    .line 1094
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1096
    .local v1, "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-nez v1, :cond_1

    .line 1097
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .restart local v1    # "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1100
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    return-void
.end method

.method private checkRecycledViewPool(I)V
    .locals 4
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 993
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 994
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    .line 996
    :cond_0
    sget-boolean v1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    if-eqz v1, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 1000
    :cond_1
    sget-boolean v1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    if-nez v1, :cond_3

    .line 1001
    sget-boolean v1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    if-nez v1, :cond_3

    .line 1002
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1003
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1004
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 1011
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Clear recycledViewPool error!"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .locals 3
    .param p1, "viewType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v2, 0x0

    .line 1243
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1244
    .local v0, "view":Landroid/widget/FrameLayout;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1245
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v1, v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .locals 4
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1251
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1252
    .local v0, "view":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1253
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v1, v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private findComponentByAnchorName(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 16
    .param p1, "root"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchorName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1028
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const-wide/16 v10, 0x0

    .line 1029
    .local v10, "start":J
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1033
    :cond_0
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 1034
    .local v5, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/taobao/weex/ui/component/WXComponent;>;"
    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_1
    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1036
    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/component/WXComponent;

    .line 1037
    .local v4, "curComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v4, :cond_3

    .line 1038
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v9, v12}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1041
    .local v7, "isAnchorSet":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string/jumbo v9, "true"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1042
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1043
    const-string/jumbo v9, "dragPerf"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "findComponentByAnchorName time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .end local v4    # "curComponent":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v7    # "isAnchorSet":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v4

    .line 1048
    .restart local v4    # "curComponent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_3
    instance-of v9, v4, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v9, :cond_1

    move-object v3, v4

    .line 1049
    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1050
    .local v3, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v8

    .local v8, "len":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 1051
    invoke-virtual {v3, v6}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 1052
    .local v2, "child":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-interface {v5, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1050
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1057
    .end local v2    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v3    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v4    # "curComponent":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v6    # "i":I
    .end local v8    # "len":I
    :cond_4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1058
    const-string/jumbo v9, "dragPerf"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "findComponentByAnchorName elapsed time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .param p1, "comp"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    .local v0, "parent":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_2

    .line 368
    .end local v0    # "parent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    const/4 p1, 0x0

    .line 372
    .end local p1    # "comp":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    return-object p1

    .line 371
    .restart local v0    # "parent":Lcom/taobao/weex/ui/component/WXComponent;
    .restart local p1    # "comp":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_2
    instance-of v1, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;

    if-nez v1, :cond_1

    .line 375
    move-object p1, v0

    goto :goto_0
.end method

.method private fireScrollEvent(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1319
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const-string/jumbo v0, "scroll"

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollEvent(Landroid/support/v7/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1320
    return-void
.end method

.method private generateViewType(Lcom/taobao/weex/ui/component/WXComponent;)I
    .locals 6
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1124
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 1125
    .local v2, "id":J
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXAttr;->getScope()Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1128
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Lfk;

    if-nez v4, :cond_0

    .line 1129
    new-instance v4, Lfk;

    invoke-direct {v4}, Lfk;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Lfk;

    .line 1131
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Lfk;

    invoke-virtual {v4, v1}, Lfk;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1132
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Lfk;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Lfk;

    invoke-virtual {v4, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1142
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    :goto_0
    long-to-int v4, v2

    return v4

    .line 1137
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1139
    const-wide/16 v2, -0x1

    .line 1140
    .restart local v2    # "id":J
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getItemViewType: NO ID, this will crash the whole render system of WXListRecyclerView"

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTriggerType(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;
    .locals 5
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1065
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const-string/jumbo v0, "longpress"

    .line 1066
    .local v0, "triggerType":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1078
    .end local v0    # "triggerType":Ljava/lang/String;
    .local v1, "triggerType":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1069
    .end local v1    # "triggerType":Ljava/lang/String;
    .restart local v0    # "triggerType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "dragTriggerType"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "longpress"

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    const-string/jumbo v2, "longpress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "pan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1071
    const-string/jumbo v0, "longpress"

    .line 1074
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1075
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trigger type is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 1078
    .end local v0    # "triggerType":Ljava/lang/String;
    .restart local v1    # "triggerType":Ljava/lang/String;
    goto :goto_0
.end method

.method private relocateAppearanceHelper()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 754
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 755
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 756
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 757
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 758
    .local v4, "value":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 759
    .local v0, "dChild":Lcom/taobao/weex/ui/component/WXComponent;
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 760
    .local v1, "index":I
    invoke-virtual {v4, v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setCellPosition(I)V

    goto :goto_0

    .line 762
    .end local v0    # "dChild":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "index":I
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v4    # "value":Lcom/taobao/weex/ui/component/AppearanceHelper;
    :cond_0
    return-void
.end method

.method private setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .locals 5
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "event"    # I
    .param p3, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 449
    .local v2, "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {v2, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    if-eqz p3, :cond_0

    .line 454
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 455
    .local v0, "dChild":Lcom/taobao/weex/ui/component/WXComponent;
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 456
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 457
    new-instance v2, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .end local v2    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-direct {v2, p1, v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 458
    .restart local v2    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 459
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private shouldReport(II)Z
    .locals 5
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 1350
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_0

    .line 1351
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 1352
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    .line 1365
    :goto_0
    return v2

    .line 1356
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1357
    .local v0, "gapX":I
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1359
    .local v1, "gapY":I
    iget v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    if-lt v1, v3, :cond_2

    .line 1360
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 1361
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1365
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unBindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1104
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    .line 1106
    .local v0, "id":I
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1109
    .local v1, "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v1, :cond_0

    .line 1112
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 654
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 655
    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 12
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v8, -0x1

    .line 669
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 670
    if-eqz p1, :cond_0

    if-ge p2, v8, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 674
    .local v2, "count":I
    if-lt p2, v2, :cond_2

    move p2, v8

    .line 675
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->bindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 677
    if-ne p2, v8, :cond_b

    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 678
    .local v0, "adapterPosition":I
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 679
    .local v7, "view":Landroid/view/ViewGroup;, "TT;"
    if-eqz v7, :cond_a

    .line 680
    const/4 v4, 0x0

    .line 681
    .local v4, "isAddAnimation":Z
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 682
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v8

    const-string/jumbo v9, "insertAnimation"

    invoke-virtual {v8, v9}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 683
    .local v1, "attr":Ljava/lang/Object;
    const-string/jumbo v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 684
    const/4 v4, 0x1

    .line 687
    .end local v1    # "attr":Ljava/lang/Object;
    :cond_3
    if-eqz v4, :cond_c

    move-object v8, v7

    .line 688
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v8, v9}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 692
    :goto_2
    const/4 v5, 0x0

    .line 693
    .local v5, "isKeepScrollPosition":Z
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 694
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v8

    const-string/jumbo v9, "keepScrollPosition"

    invoke-virtual {v8, v9}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 695
    .restart local v1    # "attr":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result v8

    if-gt p2, v8, :cond_4

    if-ltz p2, :cond_4

    .line 696
    const/4 v5, 0x1

    .line 699
    .end local v1    # "attr":Ljava/lang/Object;
    :cond_4
    if-eqz v5, :cond_d

    move-object v8, v7

    .line 700
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    instance-of v8, v8, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v8, :cond_9

    move-object v8, v7

    .line 701
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isLayoutFrozen()Z

    move-result v8

    if-nez v8, :cond_5

    move-object v8, v7

    .line 702
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutFrozen(Z)V

    .line 704
    :cond_5
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v8, :cond_8

    move-object v8, v7

    .line 705
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v6

    .local v6, "last":I
    move-object v8, v7

    .line 706
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    .line 707
    .local v3, "holder":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    if-eqz v3, :cond_6

    .line 708
    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    .line 710
    :cond_6
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v8, :cond_8

    .line 711
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_7

    .line 712
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 714
    :cond_7
    new-instance v8, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;

    invoke-direct {v8, p0, v7}, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroid/view/ViewGroup;)V

    iput-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    .line 737
    .end local v3    # "holder":Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .end local v6    # "last":I
    :cond_8
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-nez v8, :cond_9

    move-object v8, v7

    .line 738
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v9

    move-object v8, v7

    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollToPosition(I)V

    :cond_9
    move-object v8, v7

    .line 741
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemInserted(I)V

    .line 742
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_a

    .line 743
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 744
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 750
    .end local v4    # "isAddAnimation":Z
    .end local v5    # "isKeepScrollPosition":Z
    .end local v7    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->relocateAppearanceHelper()V

    goto/16 :goto_0

    .end local v0    # "adapterPosition":I
    :cond_b
    move v0, p2

    .line 677
    goto/16 :goto_1

    .restart local v0    # "adapterPosition":I
    .restart local v4    # "isAddAnimation":Z
    .restart local v7    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_c
    move-object v8, v7

    .line 690
    check-cast v8, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto/16 :goto_2

    .line 747
    .restart local v5    # "isKeepScrollPosition":Z
    :cond_d
    check-cast v7, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .end local v7    # "view":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v7}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemChanged(I)V

    goto :goto_3
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1264
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    .line 1265
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1267
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    if-nez v1, :cond_0

    .line 1269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    .line 1270
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1271
    .local v0, "innerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    new-instance v1, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1316
    .end local v0    # "innerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 773
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 467
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 479
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    :cond_1
    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    .line 485
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 486
    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    .line 352
    return-void
.end method

.method public calcContentOffset(Landroid/support/v7/widget/RecyclerView;)I
    .locals 11
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1371
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 1372
    .local v5, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v8, v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v8, :cond_6

    move-object v8, v5

    .line 1373
    check-cast v8, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1374
    .local v1, "firstVisibleItemPosition":I
    if-ne v1, v9, :cond_1

    .line 1425
    .end local v1    # "firstVisibleItemPosition":I
    .end local v5    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    :goto_0
    return v6

    .line 1378
    .restart local v1    # "firstVisibleItemPosition":I
    .restart local v5    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1379
    .local v2, "firstVisibleView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1380
    .local v3, "firstVisibleViewOffset":I
    if-eqz v2, :cond_2

    .line 1381
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1384
    :cond_2
    const/4 v6, 0x0

    .line 1385
    .local v6, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 1386
    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1387
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_3

    .line 1388
    int-to-float v8, v6

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 1385
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1392
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_4
    instance-of v8, v5, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v8, :cond_5

    .line 1393
    check-cast v5, Landroid/support/v7/widget/GridLayoutManager;

    .end local v5    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v7

    .line 1394
    .local v7, "spanCount":I
    div-int/2addr v6, v7

    .line 1397
    .end local v7    # "spanCount":I
    :cond_5
    add-int/2addr v6, v3

    .line 1398
    goto :goto_0

    .line 1399
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "firstVisibleViewOffset":I
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .restart local v5    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_6
    instance-of v8, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v8, :cond_a

    move-object v8, v5

    .line 1400
    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v7

    .restart local v7    # "spanCount":I
    move-object v8, v5

    .line 1401
    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v8

    aget v1, v8, v6

    .line 1402
    .restart local v1    # "firstVisibleItemPosition":I
    if-eq v1, v9, :cond_0

    .line 1406
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1407
    .restart local v2    # "firstVisibleView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1408
    .restart local v3    # "firstVisibleViewOffset":I
    if-eqz v2, :cond_7

    .line 1409
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1412
    :cond_7
    const/4 v6, 0x0

    .line 1413
    .restart local v6    # "offset":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_9

    .line 1414
    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1415
    .restart local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_8

    .line 1416
    int-to-float v8, v6

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 1413
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1420
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_9
    div-int/2addr v6, v7

    .line 1421
    add-int/2addr v6, v3

    .line 1422
    goto :goto_0

    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "firstVisibleViewOffset":I
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .end local v7    # "spanCount":I
    :cond_a
    move v6, v9

    .line 1425
    goto :goto_0
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "pointF"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 818
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 819
    .local v0, "view":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 820
    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 232
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Lfk;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 239
    :cond_3
    return-void
.end method

.method abstract generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "hostView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v2, 0x0

    .line 243
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    instance-of v1, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return-object v0

    .line 246
    :cond_0
    if-nez v0, :cond_1

    .line 247
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0

    .line 249
    :cond_1
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 250
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 251
    invoke-virtual {v0, p5, v2, p6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 1

    .prologue
    .line 659
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1152
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1167
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1172
    .local v2, "id":J
    :goto_0
    return-wide v2

    .line 1168
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-wide/16 v2, -0x1

    .restart local v2    # "id":J
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1023
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getScrollEvent(Landroid/support/v7/widget/RecyclerView;II)Ljava/util/Map;
    .locals 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v9, 0x2

    .line 1323
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1324
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->calcContentOffset(Landroid/support/v7/widget/RecyclerView;)I

    move-result v7

    neg-int p3, v7

    .line 1326
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    add-int v4, v7, v8

    .line 1327
    .local v4, "contentWidth":I
    const/4 v1, 0x0

    .line 1328
    .local v1, "contentHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1329
    invoke-virtual {p0, v6}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1330
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_1

    .line 1331
    int-to-float v7, v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v1, v7

    .line 1328
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1335
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 1336
    .local v5, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 1337
    .local v3, "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 1339
    .local v2, "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "width"

    int-to-float v8, v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    const-string/jumbo v7, "height"

    int-to-float v8, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    const-string/jumbo v7, "x"

    int-to-float v8, p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v8

    neg-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    const-string/jumbo v7, "y"

    int-to-float v8, p3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v8

    neg-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    const-string/jumbo v7, "contentSize"

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const-string/jumbo v7, "contentOffset"

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    return-object v5
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .locals 1

    .prologue
    .line 1429
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_0

    .line 1430
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 640
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 641
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :goto_0
    return v1

    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_0
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollX()I

    move-result v1

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 634
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 635
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :goto_0
    return v1

    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_0
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollY()I

    move-result v1

    goto :goto_0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 262
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    const-string/jumbo v4, "transform"

    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "transforms":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v4, v0

    .line 264
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v5

    invoke-static {v5, v3}, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->parseTransforms(ILjava/lang/String;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "keepPositionLayoutDelay"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "keepPositionLayoutDelay"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v6, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "appearActionDelay"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "appearActionDelay"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v6, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    :cond_2
    move-object v4, v0

    .line 273
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 275
    new-instance v2, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V

    .line 276
    .local v2, "recyclerViewBaseAdapter":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->setHasStableIds(Z)V

    move-object v4, v0

    .line 277
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4, v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V

    .line 278
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    move-object v4, v0

    .line 279
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->clearOnScrollListeners()V

    move-object v4, v0

    .line 280
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 281
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "hasFixedSize"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "hasFixedSize"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "hasFixedSize":Z
    move-object v4, v0

    .line 283
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHasFixedSize(Z)V

    .end local v1    # "hasFixedSize":Z
    :cond_3
    move-object v4, v0

    .line 286
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    new-instance v5, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;

    invoke-direct {v5, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 331
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;

    invoke-direct {v5, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 346
    return-object v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 443
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    return v0
.end method

.method protected markComponentUsable()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 930
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 931
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setUsing(Z)V

    goto :goto_0

    .line 933
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    return-void
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 216
    .local v1, "screenH":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v2

    .line 217
    .local v2, "weexH":I
    if-lt v2, v1, :cond_0

    .end local v1    # "screenH":I
    :goto_0
    if-le p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAbsoluteY()I

    move-result v3

    sub-int v0, v2, v3

    .line 218
    .local v0, "outHeight":I
    :goto_1
    int-to-float v3, p1

    iget v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnGap:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-super {p0, v3, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object v3

    return-object v3

    .end local v0    # "outHeight":I
    .restart local v1    # "screenH":I
    :cond_0
    move v1, v2

    .line 217
    goto :goto_0

    .end local v1    # "screenH":I
    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public notifyAppearStateChange(IIII)V
    .locals 11
    .param p1, "firstVisible"    # I
    .param p2, "lastVisible"    # I
    .param p3, "directionX"    # I
    .param p4, "directionY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1201
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_0

    .line 1202
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1203
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 1206
    :cond_0
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1207
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    if-lez p4, :cond_3

    const-string/jumbo v1, "up"

    .line 1209
    .local v1, "direction":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v8

    if-nez v8, :cond_1

    if-eqz p3, :cond_1

    .line 1210
    if-lez p3, :cond_5

    const-string/jumbo v1, "left"

    .line 1213
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 1215
    .local v3, "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1217
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1222
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    .line 1223
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 1227
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->D(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v4, 0x1

    .line 1228
    .local v4, "outOfVisibleRange":Z
    :goto_2
    if-nez v4, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isViewVisible(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    .line 1230
    .local v7, "visible":Z
    :goto_3
    invoke-virtual {v3, v7}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v5

    .line 1231
    .local v5, "result":I
    if-eqz v5, :cond_1

    .line 1234
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1235
    const-string/jumbo v8, "appear"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "item "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getCellPositionINScollable()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " result "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_2
    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    const-string/jumbo v8, "appear"

    :goto_4
    invoke-virtual {v0, v8, v1}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1207
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "direction":Ljava/lang/String;
    .end local v3    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .end local v4    # "outOfVisibleRange":Z
    .end local v5    # "result":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "visible":Z
    :cond_3
    if-gez p4, :cond_4

    const-string/jumbo v1, "down"

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1210
    .restart local v1    # "direction":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "right"

    goto :goto_1

    .line 1227
    .restart local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .restart local v3    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .restart local v6    # "view":Landroid/view/View;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1228
    .restart local v4    # "outOfVisibleRange":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 1237
    .restart local v5    # "result":I
    .restart local v7    # "visible":Z
    :cond_8
    const-string/jumbo v8, "disappear"

    goto :goto_4

    .line 1239
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v3    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .end local v4    # "outOfVisibleRange":Z
    .end local v5    # "result":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "visible":Z
    :cond_9
    return-void
.end method

.method public onBeforeScroll(II)V
    .locals 23
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 545
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 546
    .local v3, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    if-nez v3, :cond_1

    .line 630
    .end local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 549
    .restart local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map;

    .line 550
    .local v19, "stickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v19, :cond_0

    .line 553
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 556
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;>;"
    const/4 v5, -0x1

    .line 557
    .local v5, "currentStickyPos":I
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 558
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 559
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/taobao/weex/ui/component/WXComponent;

    .line 561
    .local v18, "stickyComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/taobao/weex/ui/component/list/WXCell;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v4, v18

    .line 563
    check-cast v4, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 564
    .local v4, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 568
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [I

    .line 569
    .local v12, "location":[I
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 570
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 571
    .local v13, "parentLocation":[I
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/taobao/weex/ui/component/Scrollable;->getView()Landroid/view/ViewGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 572
    const/16 v21, 0x1

    aget v21, v12, v21

    const/16 v22, 0x1

    aget v22, v13, v22

    sub-int v20, v21, v22

    .line 576
    .local v20, "top":I
    const/4 v2, 0x0

    .line 577
    .local v2, "beforeFirstVisibleItem":Z
    const/4 v15, 0x0

    .line 578
    .local v15, "removeOldSticky":Z
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    check-cast v21, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface/range {v21 .. v21}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v11

    .line 579
    .local v11, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v0, v11, Landroid/support/v7/widget/LinearLayoutManager;

    move/from16 v21, v0

    if-nez v21, :cond_3

    instance-of v0, v11, Landroid/support/v7/widget/GridLayoutManager;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    :cond_3
    move-object/from16 v21, v11

    .line 580
    check-cast v21, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    .line 581
    .local v8, "firstVisiblePosition":I
    check-cast v11, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v11    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v11}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v10

    .line 582
    .local v10, "lastVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 583
    .local v14, "pos":I
    invoke-virtual {v4, v14}, Lcom/taobao/weex/ui/component/list/WXCell;->setScrollPositon(I)V

    .line 584
    if-le v14, v8, :cond_4

    .line 585
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v21

    if-lez v21, :cond_7

    if-ge v8, v14, :cond_7

    if-gt v14, v10, :cond_7

    .line 586
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    .line 587
    :cond_4
    const/4 v2, 0x1

    .line 588
    if-le v14, v5, :cond_5

    .line 589
    move v5, v14

    .line 612
    .end local v8    # "firstVisiblePosition":I
    .end local v10    # "lastVisiblePosition":I
    .end local v14    # "pos":I
    :cond_5
    :goto_2
    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getLocationFromStart()I

    move-result v21

    if-ltz v21, :cond_b

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    if-ltz p2, :cond_b

    const/16 v17, 0x1

    .line 613
    .local v17, "showSticky":Z
    :goto_3
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getLocationFromStart()I

    move-result v21

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_c

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    if-gtz p2, :cond_c

    const/16 v16, 0x1

    .line 614
    .local v16, "removeSticky":Z
    :goto_4
    if-eqz v17, :cond_d

    move-object/from16 v21, v3

    .line 615
    check-cast v21, Lcom/taobao/weex/ui/component/list/ListComponentView;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 619
    :cond_6
    :goto_5
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/taobao/weex/ui/component/list/WXCell;->setLocationFromStart(I)V

    goto/16 :goto_1

    .line 592
    .end local v16    # "removeSticky":Z
    .end local v17    # "showSticky":Z
    .restart local v8    # "firstVisiblePosition":I
    .restart local v10    # "lastVisiblePosition":I
    .restart local v14    # "pos":I
    :cond_7
    const/4 v15, 0x1

    goto :goto_2

    .line 594
    .end local v8    # "firstVisiblePosition":I
    .end local v10    # "lastVisiblePosition":I
    .end local v14    # "pos":I
    .restart local v11    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_8
    instance-of v0, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 595
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v7, v0, [I

    .local v7, "firstItems":[I
    move-object/from16 v21, v11

    .line 596
    check-cast v21, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v21

    const/16 v22, 0x0

    aget v8, v21, v22

    .line 597
    .restart local v8    # "firstVisiblePosition":I
    check-cast v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v11    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v11, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v21

    const/16 v22, 0x0

    aget v10, v21, v22

    .line 598
    .restart local v10    # "lastVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 600
    .restart local v14    # "pos":I
    if-le v14, v8, :cond_9

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v21

    if-lez v21, :cond_a

    if-ge v8, v14, :cond_a

    if-gt v14, v10, :cond_a

    .line 601
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    .line 602
    :cond_9
    const/4 v2, 0x1

    .line 603
    if-le v14, v5, :cond_5

    .line 604
    move v5, v14

    goto/16 :goto_2

    .line 607
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 612
    .end local v7    # "firstItems":[I
    .end local v8    # "firstVisiblePosition":I
    .end local v10    # "lastVisiblePosition":I
    .end local v14    # "pos":I
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 613
    .restart local v17    # "showSticky":Z
    :cond_c
    const/16 v16, 0x0

    goto :goto_4

    .line 616
    .restart local v16    # "removeSticky":Z
    :cond_d
    if-nez v16, :cond_e

    if-eqz v15, :cond_6

    :cond_e
    move-object/from16 v21, v3

    .line 617
    check-cast v21, Lcom/taobao/weex/ui/component/list/ListComponentView;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_5

    .line 623
    .end local v2    # "beforeFirstVisibleItem":Z
    .end local v4    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v12    # "location":[I
    .end local v13    # "parentLocation":[I
    .end local v15    # "removeOldSticky":Z
    .end local v16    # "removeSticky":Z
    .end local v17    # "showSticky":Z
    .end local v18    # "stickyComponent":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v20    # "top":I
    :cond_f
    if-ltz v5, :cond_10

    .line 624
    check-cast v3, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .end local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v3, v5}, Lcom/taobao/weex/ui/component/list/ListComponentView;->updateStickyView(I)V

    goto/16 :goto_0

    .line 626
    .restart local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_10
    instance-of v0, v3, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 627
    check-cast v3, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .end local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getStickyHeaderHelper()Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->clearStickyHeaders()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 89
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 855
    if-nez p1, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    invoke-virtual {p1, v10}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->setComponentUsing(Z)V

    .line 857
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v5

    .line 858
    .local v5, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v5, :cond_2

    instance-of v8, v5, Lcom/taobao/weex/ui/component/WXRefresh;

    if-nez v8, :cond_2

    instance-of v8, v5, Lcom/taobao/weex/ui/component/WXLoading;

    if-nez v8, :cond_2

    .line 861
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 863
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 864
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Bind WXRefresh & WXLoading "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_3
    instance-of v8, v5, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v8, :cond_0

    .line 867
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 868
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v8

    const-string/jumbo v9, "holderBackground"

    invoke-virtual {v8, v9}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 869
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v8

    const-string/jumbo v9, "holderBackground"

    invoke-virtual {v8, v9}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 870
    .local v6, "holderBackground":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v4

    .line 871
    .local v4, "color":I
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 872
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 873
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 878
    .end local v4    # "color":I
    .end local v6    # "holderBackground":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v8

    instance-of v8, v8, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v8, :cond_0

    .line 879
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 880
    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 881
    invoke-virtual {v5, v10}, Lcom/taobao/weex/ui/component/WXComponent;->onRenderFinish(I)V

    .line 883
    :cond_5
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v8}, Lcom/taobao/weex/ui/component/list/DragHelper;->isDraggable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 886
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    if-nez v8, :cond_6

    const-string/jumbo v8, "longpress"

    :goto_1
    iput-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    .line 888
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 890
    .local v2, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    .line 891
    .local v3, "cellAttrs":Lcom/taobao/weex/dom/WXAttr;
    const-string/jumbo v8, "dragExcluded"

    invoke-virtual {v3, v8}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 893
    .local v7, "isExcluded":Z
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v8, p1, v7}, Lcom/taobao/weex/ui/component/list/DragHelper;->setDragExcluded(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 896
    const-string/jumbo v8, "pan"

    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 897
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v8, v11}, Lcom/taobao/weex/ui/component/list/DragHelper;->setLongPressDragEnabled(Z)V

    .line 899
    const-string/jumbo v8, "dragAnchor"

    invoke-direct {p0, v2, v8}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findComponentByAnchorName(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .line 901
    .local v1, "anchorComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    if-nez v7, :cond_7

    .line 902
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 903
    .local v0, "anchor":Landroid/view/View;
    new-instance v8, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;

    invoke-direct {v8, p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 886
    .end local v0    # "anchor":Landroid/view/View;
    .end local v1    # "anchorComponent":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v2    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    .end local v3    # "cellAttrs":Lcom/taobao/weex/dom/WXAttr;
    .end local v7    # "isExcluded":Z
    :cond_6
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    goto :goto_1

    .line 913
    .restart local v1    # "anchorComponent":Lcom/taobao/weex/ui/component/WXComponent;
    .restart local v2    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    .restart local v3    # "cellAttrs":Lcom/taobao/weex/dom/WXAttr;
    .restart local v7    # "isExcluded":Z
    :cond_7
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 914
    if-nez v7, :cond_8

    .line 915
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "[error] onBindViewHolder: the anchor component or view is not found"

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 917
    :cond_8
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onBindViewHolder: position "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is drag excluded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 922
    .end local v1    # "anchorComponent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_9
    const-string/jumbo v8, "longpress"

    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 923
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v8, v10}, Lcom/taobao/weex/ui/component/list/DragHelper;->setLongPressDragEnabled(Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 945
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 946
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 947
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v3

    .line 983
    :goto_0
    return-object v3

    .line 948
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 949
    .local v2, "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->checkRecycledViewPool(I)V

    .line 950
    if-nez v2, :cond_1

    .line 951
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v3

    goto :goto_0

    .line 953
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 954
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 955
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_6

    .line 956
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isUsing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 959
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 960
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v3

    goto :goto_0

    .line 962
    :cond_2
    instance-of v3, v0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v3, :cond_4

    .line 963
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 964
    new-instance v3, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 966
    check-cast v3, Lcom/taobao/weex/ui/component/list/WXCell;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/component/list/WXCell;->lazy(Z)V

    .line 967
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 968
    invoke-virtual {v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 969
    new-instance v3, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    goto :goto_0

    .line 971
    :cond_4
    instance-of v3, v0, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v3, :cond_5

    .line 972
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v3

    goto :goto_0

    .line 974
    :cond_5
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "List cannot include element except cell\u3001header\u3001fixed\u3001refresh and loading"

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v3

    goto :goto_0

    .line 953
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 980
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "i":I
    .end local v2    # "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    :cond_7
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 981
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Cannot find request viewType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_8
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1157
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to recycle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 89
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onHostViewInitialized(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onHostViewInitialized(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    .local p1, "host":Landroid/view/ViewGroup;, "TT;"
    const/4 v3, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->onHostViewInitialized(Landroid/view/View;)V

    .line 180
    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .end local p1    # "host":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 181
    .local v0, "recyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "RecyclerView is not found or Adapter is not bound"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "prefetchGapDisable"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setItemPrefetchEnabled(Z)V

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "children is null"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_3
    new-instance v1, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    new-instance v3, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;

    invoke-direct {v3, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;-><init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Lcom/taobao/weex/ui/component/list/EventTrigger;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    .line 203
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getTriggerType(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    goto :goto_0
.end method

.method public onLoadMore(I)V
    .locals 5
    .param p1, "offScreenY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1178
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "offset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1181
    const-string/jumbo v1, "0"

    .line 1183
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    .line 1185
    .local v2, "offsetParsed":F
    int-to-float v3, p1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    .line 1187
    iget v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    if-eqz v3, :cond_2

    .line 1189
    :cond_1
    const-string/jumbo v3, "loadmore"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;)V

    .line 1190
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    .line 1191
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    .end local v1    # "offset":Ljava/lang/String;
    .end local v2    # "offsetParsed":F
    :cond_2
    :goto_0
    return-void

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "onLoadMore :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 89
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 830
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 832
    .local v0, "begin":J
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->setComponentUsing(Z)V

    .line 833
    if-eqz p1, :cond_1

    .line 834
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->canRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 836
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isUsing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 837
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->recycled()V

    .line 842
    :goto_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Recycle holder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_0
    return-void

    .line 840
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "this holder can not be allowed to  recycled"

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 7
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "destroy"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 785
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 786
    .local v1, "index":I
    if-eqz p2, :cond_0

    .line 787
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->detachViewAndClearPreInfo()Landroid/view/View;

    .line 789
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->unBindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 791
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 792
    .local v3, "view":Landroid/view/ViewGroup;, "TT;"
    if-nez v3, :cond_1

    .line 812
    .end local v3    # "view":Landroid/view/ViewGroup;, "TT;"
    :goto_0
    return-void

    .line 796
    .restart local v3    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_1
    const/4 v2, 0x0

    .line 797
    .local v2, "isRemoveAnimation":Z
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "deleteAnimation"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 798
    .local v0, "attr":Ljava/lang/Object;
    const-string/jumbo v4, "default"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 799
    const/4 v2, 0x1

    .line 801
    :cond_2
    if-eqz v2, :cond_4

    move-object v4, v3

    .line 802
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 807
    :goto_1
    check-cast v3, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .end local v3    # "view":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v3}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRemoved(I)V

    .line 808
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 809
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removeChild child at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    goto :goto_0

    .restart local v3    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_4
    move-object v4, v3

    .line 804
    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto :goto_1
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 1258
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    .line 1259
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    .line 1260
    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .locals 12
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 500
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 501
    .local v4, "offsetFloat":F
    const/4 v8, 0x1

    .line 503
    .local v8, "smooth":Z
    if-eqz p2, :cond_0

    .line 504
    const-string/jumbo v10, "offset"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v5, "0"

    .line 505
    .local v5, "offsetStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, "animated"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 506
    if-eqz v5, :cond_0

    .line 508
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v11

    invoke-virtual {v11}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 515
    .end local v5    # "offsetStr":Ljava/lang/String;
    :cond_0
    :goto_1
    float-to-int v3, v4

    .line 517
    .local v3, "offset":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 518
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_3

    .line 541
    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_1
    :goto_2
    return-void

    .line 504
    .end local v3    # "offset":I
    :cond_2
    const-string/jumbo v10, "offset"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 509
    .restart local v5    # "offsetStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Float parseFloat error :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 522
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "offsetStr":Ljava/lang/String;
    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    .restart local v3    # "offset":I
    :cond_3
    move-object v6, p1

    .line 523
    .local v6, "parent":Lcom/taobao/weex/ui/component/WXComponent;
    const/4 v1, 0x0

    .line 524
    .local v1, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    :goto_3
    if-eqz v6, :cond_4

    .line 525
    instance-of v10, v6, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v10, :cond_5

    move-object v1, v6

    .line 526
    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 532
    :cond_4
    if-eqz v1, :cond_1

    .line 533
    iget-object v10, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 534
    .local v7, "pos":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 538
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v9

    .line 539
    .local v9, "view":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v10

    invoke-virtual {v9, v8, v7, v3, v10}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V

    goto :goto_2

    .line 529
    .end local v7    # "pos":I
    .end local v9    # "view":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_5
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v6

    goto :goto_3
.end method

.method public setDraggable(Z)V
    .locals 2
    .param p1, "isDraggable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "draggable"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/component/list/DragHelper;->setDraggable(Z)V

    .line 424
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set draggable : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 427
    :cond_1
    return-void
.end method

.method public setOffsetAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetAccuracy"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    .line 416
    .local v0, "real":F
    float-to-int v1, v0

    iput v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    .line 417
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 380
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 401
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    :cond_1
    :goto_1
    :pswitch_0
    return v4

    .line 380
    :sswitch_0
    const-string/jumbo v7, "loadmoreoffset"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "scrollable"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "offsetAccuracy"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "draggable"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "showScrollbar"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 385
    .local v3, "scrollable":Z
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setScrollable(Z)V

    goto :goto_1

    .line 388
    .end local v3    # "scrollable":Z
    :pswitch_2
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    .local v0, "accuracy":I
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setOffsetAccuracy(I)V

    goto :goto_1

    .line 392
    .end local v0    # "accuracy":I
    :pswitch_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 393
    .local v1, "draggable":Z
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setDraggable(Z)V

    goto :goto_1

    .line 396
    .end local v1    # "draggable":Z
    :pswitch_4
    const/4 v5, 0x0

    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 397
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setShowScrollbar(Z)V

    goto/16 :goto_1

    .line 380
    :sswitch_data_0
    .sparse-switch
        -0x12260273 -> :sswitch_3
        -0xd52a857 -> :sswitch_4
        -0x6b59672 -> :sswitch_0
        -0x55c154 -> :sswitch_2
        0x3f94da7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    .line 407
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 408
    .local v0, "inner":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method public setShowScrollbar(Z)V
    .locals 2
    .param p1, "show"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 431
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 491
    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 495
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 496
    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 356
    .local p0, "this":Lcom/taobao/weex/ui/component/list/BasicListComponent;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v1, p1, v2}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    .line 357
    const-class v1, Lcom/taobao/weex/ui/component/WXHeader;

    invoke-virtual {p0, p1, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findTypeParent(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXHeader;

    .line 358
    .local v0, "cell":Lcom/taobao/weex/ui/component/WXHeader;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1, v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 361
    :cond_0
    return-void
.end method
