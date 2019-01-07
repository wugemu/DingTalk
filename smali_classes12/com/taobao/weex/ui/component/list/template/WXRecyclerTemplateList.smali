.class public Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/Scrollable;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;",
        ">;",
        "Lcom/taobao/weex/ui/component/Scrollable;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener",
        "<",
        "Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPEAR_CHANGE_RUNNABLE_DELAY:J = 0x32L

.field private static final EMPTY_HOLDER_TEMPLATE_KEY:Ljava/lang/String; = ""

.field public static final ENABLE_TRACE_LOG:Z = true

.field private static final NAME_HAS_FIXED_SIZE:Ljava/lang/String; = "hasFixedSize"

.field private static final NAME_ITEM_VIEW_CACHE_SIZE:Ljava/lang/String; = "itemViewCacheSize"

.field private static final NAME_TEMPLATE_CACHE_SIZE:Ljava/lang/String; = "templateCacheSize"

.field public static final TAG:Ljava/lang/String; = "WXRecyclerTemplateList"


# instance fields
.field private cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

.field private cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

.field private defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

.field private defaultTemplateKey:Ljava/lang/String;

.field private hasAppendTreeDone:Z

.field private hasLayoutDone:Z

.field private isScrollable:Z

.field private listDataIndexKey:Ljava/lang/String;

.field private listDataItemKey:Ljava/lang/String;

.field private listDataKey:Ljava/lang/String;

.field private listDataTemplateKey:Ljava/lang/String;

.field private listUpdateRunnable:Ljava/lang/Runnable;

.field private mAppearChangeRunnable:Ljava/lang/Runnable;

.field private mAppearHelpers:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDisAppearWatchList:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mPaddingLeft:F

.field private mPaddingRight:F

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

.field private mTemplateSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateViewTypes:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateCache;",
            ">;"
        }
    .end annotation
.end field

.field private mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

.field private orientation:I

.field private templateCacheSize:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 5
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 111
    iput v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    .line 112
    iput v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    .line 113
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    .line 114
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    .line 118
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    .line 119
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    .line 120
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    .line 126
    iput v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 131
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isScrollable:Z

    .line 132
    const/16 v0, 0xa

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    .line 133
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    .line 134
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    .line 138
    const-string/jumbo v0, "listData"

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataKey:Ljava/lang/String;

    .line 139
    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    .line 140
    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "case"

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    .line 155
    const-string/jumbo v0, "@default_template_cell"

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 172
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    .line 180
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Lfk;

    .line 182
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    .line 184
    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 190
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 195
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    .line 199
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initRecyclerTemplateList(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/action/BasicComponentData;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/CellDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->checkAppendDone(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->shouldReport(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireScrollEvent(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method private calcContentSize()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1631
    const/4 v2, 0x0

    .line 1632
    .local v2, "totalHeight":I
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v3, v3, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v3, :cond_0

    .line 1633
    const/4 v3, 0x0

    .line 1641
    :goto_0
    return v3

    .line 1635
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v3, v3, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1636
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    .line 1637
    .local v0, "child":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v0, :cond_1

    .line 1638
    int-to-float v3, v2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 1635
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "child":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_2
    move v3, v2

    .line 1641
    goto :goto_0
.end method

.method private checkAppendDone(Z)V
    .locals 4
    .param p1, "listDone"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 696
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 700
    .local v0, "cells":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 701
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 705
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;"
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 706
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_0
.end method

.method public static doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "component"    # Lcom/taobao/weex/ui/component/list/WXCell;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "inPreload"    # Z

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1817
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1818
    .local v0, "start":J
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/taobao/weex/ui/component/binding/Statements;->initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 1819
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1820
    const-string/jumbo v2, "WXRecyclerTemplateList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " doCreateCellViewBindData "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in preload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " used "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    .end local v0    # "start":J
    :cond_1
    return-void
.end method

.method private doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;
    .locals 10
    .param p1, "cell"    # Lcom/taobao/weex/ui/component/list/WXCell;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1309
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->clear()V

    .line 1310
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v5, v5, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1311
    .local v1, "item":Ljava/lang/Object;
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v5, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v0

    .line 1312
    .local v0, "cellRenderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iput-object v0, v5, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 1313
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iput-object p0, v5, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 1314
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iput p2, v5, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    .line 1316
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iget-object v3, v5, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 1317
    .local v3, "stack":Lcom/taobao/weex/el/parse/ArrayStack;
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iget-object v2, v5, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->map:Ljava/util/Map;

    .line 1318
    .local v2, "map":Ljava/util/Map;
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v5, v5, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_1

    .line 1319
    invoke-virtual {v3, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 1320
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v6, v6, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1322
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    new-instance v6, Lcom/taobao/weex/ui/component/list/template/PositionRef;

    invoke-direct {v6, v0}, Lcom/taobao/weex/ui/component/list/template/PositionRef;-><init>(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    :cond_0
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1325
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_1
    :goto_0
    iget-wide v6, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 1331
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemId(I)J

    .line 1333
    :cond_2
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-static {p1, v5}, Lcom/taobao/weex/ui/component/binding/Statements;->doRender(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)Ljava/util/List;

    move-result-object v4

    .line 1334
    .local v4, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1335
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->resetDirty()V

    .line 1337
    :cond_3
    return-object v4

    .line 1327
    .end local v4    # "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    :cond_4
    invoke-virtual {v3, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    :goto_0
    instance-of v1, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v1, :cond_0

    .line 435
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 439
    .end local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :goto_1
    return-object p1

    .line 438
    .restart local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    .local v0, "parent":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_2

    .line 439
    .end local v0    # "parent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 441
    .restart local v0    # "parent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_2
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
    .line 1074
    const-string/jumbo v0, "scroll"

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollEvent(Landroid/support/v7/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1075
    return-void
.end method

.method private getCellTemplateFromCache(Ljava/lang/String;)Lcom/taobao/weex/ui/component/list/WXCell;
    .locals 8
    .param p1, "template"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 1752
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    .line 1753
    .local v2, "cache":Lcom/taobao/weex/ui/component/list/template/TemplateCache;
    const/4 v3, 0x0

    .line 1754
    .local v3, "component":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1755
    iget-object v5, v2, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "component":Lcom/taobao/weex/ui/component/list/WXCell;
    check-cast v3, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 1757
    .restart local v3    # "component":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v5, v2, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    if-nez v5, :cond_3

    .line 1758
    :cond_1
    if-nez v2, :cond_2

    .line 1759
    new-instance v2, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    .end local v2    # "cache":Lcom/taobao/weex/ui/component/list/template/TemplateCache;
    invoke-direct {v2}, Lcom/taobao/weex/ui/component/list/template/TemplateCache;-><init>()V

    .line 1760
    .restart local v2    # "cache":Lcom/taobao/weex/ui/component/list/template/TemplateCache;
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    :cond_2
    iput-boolean v7, v2, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    .line 1763
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 1764
    .local v4, "source":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v4, :cond_3

    .line 1765
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v5

    const-string/jumbo v6, "preload"

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1766
    .local v0, "allowPreload":Z
    if-eqz v0, :cond_3

    .line 1767
    new-instance v1, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-direct {v1, p1, v4, p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;-><init>(Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    .line 1768
    .local v1, "asyncCellLoadTask":Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->startTask()V

    .line 1772
    .end local v0    # "allowPreload":Z
    .end local v1    # "asyncCellLoadTask":Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;
    .end local v4    # "source":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_3
    return-object v3
.end method

.method private getCellTemplateItemType(Lcom/taobao/weex/ui/component/list/WXCell;)I
    .locals 6
    .param p1, "cell"    # Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 1393
    if-nez p1, :cond_1

    move v2, v3

    .line 1408
    :cond_0
    :goto_0
    return v2

    .line 1396
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1397
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "case"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1398
    .local v1, "templateId":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, "template":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-ne p1, v4, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 1402
    :cond_2
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    invoke-virtual {v4, v0}, Lfk;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 1403
    .local v2, "type":I
    if-gez v2, :cond_0

    move v2, v3

    .line 1404
    goto :goto_0

    .line 1408
    .end local v0    # "template":Ljava/lang/String;
    .end local v1    # "templateId":Ljava/lang/Object;
    .end local v2    # "type":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initRecyclerTemplateList(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/action/BasicComponentData;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 3
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 207
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    .line 208
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 211
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    .line 212
    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "switch"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "case"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "alias"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    .line 217
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "listData"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 246
    return-void
.end method

.method private parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1851
    :try_start_0
    instance-of v2, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_0

    .line 1852
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .line 1861
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 1854
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1855
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "listData"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object p1, v0

    .line 1856
    goto :goto_0

    .line 1858
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v1

    .line 1859
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WXRecyclerTemplateList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseListDataException"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    goto :goto_0
.end method

.method private removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 1150
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_1

    .line 1151
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0
.end method

.method private declared-synchronized renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 4
    .param p1, "cell"    # Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1791
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1792
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1793
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1794
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1795
    invoke-static {p1}, Lcom/taobao/weex/ui/component/binding/Statements;->parseStatementsToken(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1796
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1797
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 1798
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1799
    .local v0, "data":Ljava/lang/Object;
    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;

    .line 1800
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutHeight()F

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutSync(Lcom/taobao/weex/ui/component/list/WXCell;FF)V

    .line 1801
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/list/WXCell;->setRenderData(Ljava/lang/Object;)V

    .line 1806
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1809
    :cond_1
    monitor-exit p0

    return-void

    .line 1796
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1806
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1791
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private safeGetListData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1613
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "{}"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .locals 8
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "event"    # I
    .param p3, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v5, v5, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    if-eqz v5, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    .line 451
    .local v0, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellTemplateItemType(Lcom/taobao/weex/ui/component/list/WXCell;)I

    move-result v4

    .line 452
    .local v4, "type":I
    if-ltz v4, :cond_0

    .line 455
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 456
    .local v3, "mAppearListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    if-nez v3, :cond_2

    .line 457
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "mAppearListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .restart local v3    # "mAppearListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_2
    const/4 v1, 0x0

    .line 461
    .local v1, "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 462
    .local v2, "mAppearListener":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 463
    move-object v1, v2

    .line 467
    .end local v2    # "mAppearListener":Lcom/taobao/weex/ui/component/AppearanceHelper;
    :cond_4
    if-eqz v1, :cond_5

    .line 468
    invoke-virtual {v1, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    goto :goto_0

    .line 470
    :cond_5
    new-instance v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .end local v1    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-direct {v1, p1, v4}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 471
    .restart local v1    # "item":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-virtual {v1, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 472
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 6
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x64

    const/4 v2, 0x1

    .line 1124
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 1126
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 1145
    :goto_0
    return v0

    .line 1135
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 1137
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 1143
    goto :goto_0

    .line 1145
    :cond_1
    const/4 v0, 0x0

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
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 1099
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_0

    .line 1100
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 1101
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    .line 1114
    :goto_0
    return v2

    .line 1105
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1106
    .local v0, "gapX":I
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1108
    .local v1, "gapY":I
    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    if-lt v1, v3, :cond_2

    .line 1109
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 1110
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1114
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateRecyclerAttr()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getLayoutType()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    .line 821
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    .line 822
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getColumnGap()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    .line 823
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getColumnWidth()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    .line 824
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingLeft:F

    .line 825
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingRight:F

    .line 827
    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 623
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 624
    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 4
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 636
    instance-of v2, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v2, :cond_0

    .line 637
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 639
    :cond_0
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v2, :cond_2

    .line 689
    .end local p1    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    :goto_0
    return-void

    .line 642
    .restart local p1    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_2
    instance-of v2, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v2, :cond_1

    .line 643
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 644
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "case"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 645
    .local v1, "templateId":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "switch"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 647
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v2, :cond_3

    move-object v2, p1

    .line 648
    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 650
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 668
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 675
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    invoke-virtual {v2, v0}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 677
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    invoke-virtual {v3}, Lfk;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "templateId":Ljava/lang/Object;
    :cond_4
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    .end local p1    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    new-instance v2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/component/list/WXCell;->setCellAppendTreeListener(Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;)V

    goto :goto_0

    .line 652
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "templateId":Ljava/lang/Object;
    .restart local p1    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 653
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "case"

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 657
    :cond_6
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v2, :cond_7

    .line 658
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_7
    move-object v2, p1

    .line 659
    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 661
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    goto :goto_1

    .line 663
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "case"

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1025
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    .line 1026
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    if-nez v1, :cond_0

    .line 1030
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    .line 1031
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 1032
    .local v0, "innerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    new-instance v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1071
    .end local v0    # "innerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 730
    return-void
.end method

.method public appendData(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 3
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 900
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_2

    .line 904
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v2, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 906
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 907
    .local v0, "position":I
    if-gez v0, :cond_3

    .line 908
    const/4 v0, 0x0

    .line 910
    :cond_3
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_4

    .line 911
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 913
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method public appendRange(ILcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 935
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->insertRange(ILcom/alibaba/fastjson/JSONArray;)V

    .line 936
    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 478
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 479
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 491
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    :cond_1
    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 497
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 498
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 510
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    :cond_1
    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    const-class v1, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0, p1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 407
    .local v0, "template":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_0
.end method

.method public calcContentOffset(Landroid/support/v7/widget/RecyclerView;)I
    .locals 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1645
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 1646
    .local v4, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v7, v4, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v7, :cond_4

    move-object v7, v4

    .line 1647
    check-cast v7, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1648
    .local v1, "firstVisibleItemPosition":I
    const/4 v5, 0x0

    .line 1649
    .local v5, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1650
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    .line 1651
    .local v0, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v0, :cond_0

    .line 1654
    int-to-float v7, v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 1649
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1657
    .end local v0    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_1
    instance-of v7, v4, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v7, :cond_2

    move-object v7, v4

    .line 1658
    check-cast v7, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v6

    .line 1659
    .local v6, "spanCount":I
    div-int/2addr v5, v6

    .line 1661
    .end local v6    # "spanCount":I
    :cond_2
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1662
    .local v2, "firstVisibleView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1663
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v5, v7

    .line 1685
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "offset":I
    :cond_3
    :goto_1
    return v5

    .line 1666
    :cond_4
    instance-of v7, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v7, :cond_7

    move-object v7, v4

    .line 1667
    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v6

    .restart local v6    # "spanCount":I
    move-object v7, v4

    .line 1668
    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v1, v7, v8

    .line 1669
    .restart local v1    # "firstVisibleItemPosition":I
    const/4 v5, 0x0

    .line 1670
    .restart local v5    # "offset":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 1671
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    .line 1672
    .restart local v0    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v0, :cond_5

    .line 1675
    int-to-float v7, v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 1670
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1677
    .end local v0    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_6
    div-int/2addr v5, v6

    .line 1679
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1680
    .restart local v2    # "firstVisibleView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1681
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_1

    .line 1685
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "offset":I
    .end local v6    # "spanCount":I
    :cond_7
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "pointF"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 763
    .local v0, "view":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 764
    return-void
.end method

.method public copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p1, "cell"    # Lcom/taobao/weex/ui/component/list/WXCell;

    .prologue
    .line 1780
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 1781
    invoke-static {p1}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 1782
    .local v0, "component":Lcom/taobao/weex/ui/component/list/WXCell;
    return-object v0
.end method

.method public copyStack(Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Lcom/taobao/weex/el/parse/ArrayStack;)Lcom/taobao/weex/el/parse/ArrayStack;
    .locals 5
    .param p1, "context"    # Lcom/taobao/weex/ui/component/list/template/CellRenderContext;
    .param p2, "stack"    # Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1341
    new-instance v1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    .line 1342
    .local v1, "onceStack":Lcom/taobao/weex/el/parse/ArrayStack;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1343
    invoke-virtual {p2, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1344
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 1345
    new-instance v3, Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .local v3, "value":Ljava/util/HashMap;
    move-object v2, v3

    .line 1347
    .end local v3    # "value":Ljava/util/HashMap;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 1342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public createChildViewAt(I)V
    .locals 3
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 738
    move v1, p1

    .line 739
    .local v1, "indexToCreate":I
    if-gez p1, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->childCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 741
    if-gez v1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 746
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v2, v0, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 748
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1176
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1179
    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1182
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1183
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->setListData(Lcom/alibaba/fastjson/JSONArray;)V

    .line 1189
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-eqz v0, :cond_3

    .line 1190
    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    if-eqz v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1196
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1198
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    if-eqz v0, :cond_6

    .line 1199
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 1201
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Lfk;

    if-eqz v0, :cond_7

    .line 1202
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 1204
    :cond_7
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 1205
    return-void
.end method

.method public findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1706
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1718
    .end local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :goto_0
    return-object p1

    .line 1709
    .restart local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    instance-of v3, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 1710
    check-cast v1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1711
    .local v1, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1712
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1713
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 1714
    goto :goto_0

    .line 1711
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1718
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v2    # "i":I
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public findChildListByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1725
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 1726
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_1

    .line 1727
    const/4 v1, 0x0

    .line 1741
    :cond_0
    :goto_0
    return-object v1

    .line 1729
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    .local v1, "componentList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    .line 1731
    .local v2, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    if-eqz v2, :cond_3

    instance-of v5, v2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-nez v5, :cond_3

    .line 1732
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1733
    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    .line 1734
    .local v3, "element":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1735
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1739
    .end local v3    # "element":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v4    # "i":I
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 1692
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    .end local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :goto_0
    return-object p1

    .line 1695
    .restart local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1696
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findTypeParent(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1698
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    return-object v0
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
    const/4 v2, 0x0

    .line 1159
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1160
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    instance-of v1, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1169
    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return-object v0

    .line 1162
    :cond_0
    if-nez v0, :cond_1

    .line 1163
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0

    .line 1165
    :cond_1
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1166
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1167
    invoke-virtual {v0, p5, v2, p6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1413
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    if-nez v1, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return v0

    .line 1416
    :cond_1
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    if-eqz v1, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    .line 1422
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    invoke-virtual {v1}, Lfk;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 12
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1444
    iget-object v7, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v7, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v1

    .line 1445
    .local v1, "renderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    iget-wide v8, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    .line 1446
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v6

    .line 1447
    .local v6, "template":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1448
    const-wide/16 v8, -0x1

    .line 1459
    .end local v6    # "template":Ljava/lang/String;
    :goto_0
    return-wide v8

    .line 1450
    .restart local v6    # "template":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->safeGetListData(I)Ljava/lang/Object;

    move-result-object v0

    .line 1451
    .local v0, "data":Ljava/lang/Object;
    instance-of v7, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_2

    move-object v7, v0

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v8, "keyItemId"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1452
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "data":Ljava/lang/Object;
    const-string/jumbo v7, "keyItemId"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    .line 1459
    .end local v6    # "template":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-wide v8, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    goto :goto_0

    .line 1454
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v6    # "template":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-long v2, v7

    .line 1455
    .local v2, "id":J
    const/16 v7, 0x18

    shl-long v8, v2, v7

    int-to-long v10, p1

    add-long v4, v8, v10

    .line 1456
    .local v4, "itemId":J
    iput-wide v4, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1296
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, "template":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    invoke-virtual {v2, v0}, Lfk;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 1298
    .local v1, "type":I
    if-gez v1, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lfk;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 1301
    :cond_0
    return v1
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    return v0
.end method

.method public getScrollEvent(Landroid/support/v7/widget/RecyclerView;II)Ljava/util/Map;
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    .line 1078
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->calcContentOffset(Landroid/support/v7/widget/RecyclerView;)I

    move-result v5

    neg-int p3, v5

    .line 1079
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v6

    add-int v3, v5, v6

    .line 1080
    .local v3, "contentWidth":I
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->calcContentSize()I

    move-result v0

    .line 1082
    .local v0, "contentHeight":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 1083
    .local v4, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 1084
    .local v2, "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 1086
    .local v1, "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "width"

    int-to-float v6, v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string/jumbo v5, "height"

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string/jumbo v5, "x"

    int-to-float v6, p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string/jumbo v5, "y"

    int-to-float v6, p3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    const-string/jumbo v5, "contentSize"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string/jumbo v5, "contentOffset"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    return-object v4
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_0

    .line 1827
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 607
    .local v0, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

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
    .line 600
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 601
    .local v0, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollY()I

    move-result v1

    goto :goto_0
.end method

.method public getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1383
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, "template":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    return-object v1
.end method

.method public getTemplateCacheSize()I
    .locals 1

    .prologue
    .line 1833
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    return v0
.end method

.method public getTemplateKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->safeGetListData(I)Ljava/lang/Object;

    move-result-object v0

    .line 1358
    .local v0, "data":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1365
    const/4 v0, 0x0

    .line 1366
    .local v0, "template":Ljava/lang/String;
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 1367
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .end local p1    # "data":Ljava/lang/Object;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v1, :cond_2

    .line 1371
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 1376
    :cond_1
    :goto_0
    return-object v0

    .line 1373
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTemplatesCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 1838
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 250
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    .line 251
    .local v0, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    .line 252
    .local v6, "attrs":Lcom/taobao/weex/dom/WXAttr;
    const-string/jumbo v1, "transform"

    invoke-virtual {v6, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 253
    .local v10, "transforms":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v2

    invoke-static {v2, v10}, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->parseTransforms(ILjava/lang/String;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 258
    const-string/jumbo v1, "templateCacheSize"

    invoke-virtual {v6, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
    const-string/jumbo v1, "templateCacheSize"

    invoke-virtual {v6, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    .line 262
    :cond_1
    const/4 v7, 0x0

    .line 263
    .local v7, "hasFixedSize":Z
    const/4 v8, 0x2

    .line 264
    .local v8, "itemViewCacheSize":I
    const-string/jumbo v1, "itemViewCacheSize"

    invoke-virtual {v6, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "itemViewCacheSize"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v8

    .line 267
    :cond_2
    const-string/jumbo v1, "hasFixedSize"

    invoke-virtual {v6, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 268
    const-string/jumbo v1, "hasFixedSize"

    invoke-virtual {v6, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 270
    :cond_3
    new-instance v9, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-direct {v9, p0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V

    .line 271
    .local v9, "recyclerViewBaseAdapter":Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
    invoke-virtual {v9, v13}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->setHasStableIds(Z)V

    .line 272
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 273
    if-eq v8, v11, :cond_4

    .line 274
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v1, v8}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemViewCacheSize(I)V

    .line 276
    :cond_4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "nestedScrollingEnabled"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setNestedScrollingEnabled(Z)V

    .line 281
    :cond_5
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v1, v7}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHasFixedSize(Z)V

    .line 282
    invoke-virtual {v0, v9}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V

    .line 283
    invoke-virtual {v0, v11}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOverScrollMode(I)V

    .line 284
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->clearOnScrollListeners()V

    .line 285
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 286
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 327
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 342
    new-instance v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    .line 372
    return-object v0
.end method

.method public insertData(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    if-nez p2, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->insertData(ILjava/lang/Object;)Z

    move-result v0

    .line 926
    .local v0, "renderStateChanged":Z
    if-eqz v0, :cond_2

    .line 927
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_0

    .line 929
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method public insertRange(ILcom/alibaba/fastjson/JSONArray;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 946
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->insertRange(ILcom/alibaba/fastjson/JSONArray;)Z

    move-result v0

    .line 953
    .local v0, "renderStateChange":Z
    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_0

    .line 956
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 397
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 398
    .local v1, "screenH":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v2

    .line 399
    .local v2, "weexH":I
    if-lt v2, v1, :cond_0

    .end local v1    # "screenH":I
    :goto_0
    if-le p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAbsoluteY()I

    move-result v3

    sub-int v0, v2, v3

    .line 400
    .local v0, "outHeight":I
    :goto_1
    int-to-float v3, p1

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-super {p0, v3, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object v3

    return-object v3

    .end local v0    # "outHeight":I
    .restart local v1    # "screenH":I
    :cond_0
    move v1, v2

    .line 399
    goto :goto_0

    .end local v1    # "screenH":I
    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public notifyAppearStateChange(IIII)V
    .locals 33
    .param p1, "firstVisible"    # I
    .param p2, "lastVisible"    # I
    .param p3, "directionX"    # I
    .param p4, "directionY"    # I

    .prologue
    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    move-object/from16 v29, v0

    .line 1499
    invoke-virtual/range {v29 .. v29}, Lfk;->size()I

    move-result v29

    if-gtz v29, :cond_1

    .line 1607
    :cond_0
    return-void

    .line 1502
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1504
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 1506
    :cond_2
    if-lez p4, :cond_9

    const-string/jumbo v11, "up"

    .line 1508
    .local v11, "direction":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v29

    if-nez v29, :cond_3

    if-eqz p3, :cond_3

    .line 1509
    if-lez p3, :cond_b

    const-string/jumbo v11, "left"

    .line 1511
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual/range {v29 .. v29}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/RecyclerView;

    .line 1512
    .local v25, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    move/from16 v24, p1

    .local v24, "position":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_e

    .line 1513
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemViewType(I)I

    move-result v28

    .line 1514
    .local v28, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Lfk;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 1515
    .local v19, "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    if-eqz v19, :cond_d

    .line 1518
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 1519
    .local v18, "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 1522
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v20

    check-cast v20, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 1523
    .local v20, "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    if-eqz v20, :cond_d

    invoke-virtual/range {v20 .. v20}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v30

    if-eqz v30, :cond_d

    .line 1526
    invoke-virtual/range {v20 .. v20}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v30

    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildListByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1527
    .local v7, "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v30

    if-eqz v30, :cond_d

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Lfk;

    move-object/from16 v30, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 1532
    .local v12, "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    if-nez v12, :cond_5

    .line 1533
    new-instance v12, Lfk;

    .end local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    invoke-direct {v12}, Lfk;-><init>()V

    .line 1534
    .restart local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Lfk;

    move-object/from16 v30, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1538
    .local v9, "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    if-nez v9, :cond_6

    .line 1539
    new-instance v9, Lfk;

    .end local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-direct {v9}, Lfk;-><init>()V

    .line 1540
    .restart local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v12, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    :cond_6
    const/16 v22, 0x0

    .local v22, "m":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 1544
    move/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/ui/component/WXComponent;

    .line 1545
    .local v6, "childLisener":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_8

    .line 1548
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isViewVisible(Landroid/view/View;)Z

    move-result v3

    .line 1549
    .local v3, "appear":Z
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->hashCode()I

    move-result v21

    .line 1550
    .local v21, "key":I
    if-eqz v3, :cond_c

    .line 1551
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_8

    .line 1552
    const-string/jumbo v30, "appear"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0, v11}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const/4 v13, 0x0

    .line 1554
    .local v13, "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v30

    if-eqz v30, :cond_7

    .line 1555
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Lfk;

    move-result-object v30

    if-eqz v30, :cond_7

    .line 1556
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Lfk;

    move-result-object v30

    const-string/jumbo v31, "disappear"

    invoke-virtual/range {v30 .. v31}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_7

    .line 1557
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Lfk;

    move-result-object v30

    const-string/jumbo v31, "disappear"

    invoke-virtual/range {v30 .. v31}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v13, Ljava/util/List;

    .line 1559
    .restart local v13    # "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v9, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    .end local v3    # "appear":Z
    .end local v13    # "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v21    # "key":I
    :cond_8
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1506
    .end local v6    # "childLisener":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v7    # "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v11    # "direction":Ljava/lang/String;
    .end local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v18    # "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .end local v19    # "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v20    # "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .end local v22    # "m":I
    .end local v24    # "position":I
    .end local v25    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v28    # "type":I
    :cond_9
    if-gez p4, :cond_a

    const-string/jumbo v11, "down"

    goto/16 :goto_0

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1509
    .restart local v11    # "direction":Ljava/lang/String;
    :cond_b
    const-string/jumbo v11, "right"

    goto/16 :goto_1

    .line 1562
    .restart local v3    # "appear":Z
    .restart local v6    # "childLisener":Lcom/taobao/weex/ui/component/WXComponent;
    .restart local v7    # "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .restart local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .restart local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .restart local v18    # "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .restart local v19    # "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .restart local v20    # "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .restart local v21    # "key":I
    .restart local v22    # "m":I
    .restart local v24    # "position":I
    .restart local v25    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .restart local v28    # "type":I
    :cond_c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 1563
    const-string/jumbo v30, "disappear"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0, v11}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1512
    .end local v3    # "appear":Z
    .end local v6    # "childLisener":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v7    # "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v18    # "helper":Lcom/taobao/weex/ui/component/AppearanceHelper;
    .end local v20    # "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .end local v21    # "key":I
    .end local v22    # "m":I
    :cond_d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 1572
    .end local v19    # "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v28    # "type":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemCount()I

    move-result v10

    .line 1573
    .local v10, "count":I
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    if-ge v0, v10, :cond_0

    .line 1574
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_10

    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_10

    .line 1575
    add-int/lit8 v24, p2, 0x1

    .line 1573
    :cond_f
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 1578
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Lfk;

    move-object/from16 v29, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    .line 1579
    .local v23, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    if-eqz v23, :cond_f

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 1583
    .local v27, "template":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v27, :cond_0

    .line 1586
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1587
    .local v4, "cellWatcherEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_11
    :goto_7
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_13

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1588
    .local v5, "cellWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1589
    .local v26, "ref":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v8

    .line 1590
    .local v8, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v8, :cond_11

    .line 1593
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 1594
    .local v16, "eventWatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v16, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v29

    if-eqz v29, :cond_11

    .line 1597
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v17

    .line 1598
    .local v17, "events":Lcom/taobao/weex/dom/WXEvent;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 1599
    .local v14, "eventWatcherEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_12

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1600
    .local v15, "eventWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    const-string/jumbo v32, "disappear"

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXEvent;->putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V

    .line 1601
    const-string/jumbo v29, "disappear"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0, v11}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1603
    .end local v15    # "eventWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    goto :goto_7

    .line 1605
    .end local v5    # "cellWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v8    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v14    # "eventWatcherEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v16    # "eventWatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v17    # "events":Lcom/taobao/weex/dom/WXEvent;
    .end local v26    # "ref":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Lfk;

    move-object/from16 v29, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6
.end method

.method public notifyUpdateList()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1618
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1622
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1623
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1624
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1626
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onBeforeScroll(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->onBeforeScroll(II)V

    .line 1467
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V
    .locals 10
    .param p1, "templateViewHolder"    # Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1214
    if-nez p1, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplate()Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v1

    .line 1218
    .local v1, "component":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v1, :cond_0

    .line 1221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1222
    .local v4, "start":J
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->setHolderPosition(I)V

    .line 1223
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v6, v6, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1224
    .local v2, "data":Ljava/lang/Object;
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v6, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v0

    .line 1225
    .local v0, "cellRenderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isDirty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1226
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1227
    const-string/jumbo v6, "WXRecyclerTemplateList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " onBindViewHolder none data update  component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1228
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1227
    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1232
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;

    move-result-object v3

    .line 1233
    .local v3, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-static {v3}, Lcom/taobao/weex/ui/component/binding/Statements;->doInitCompontent(Ljava/util/List;)V

    .line 1234
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/list/WXCell;->setRenderData(Ljava/lang/Object;)V

    .line 1235
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutAsync(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;Z)V

    .line 1236
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1237
    const-string/jumbo v6, "WXRecyclerTemplateList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " onBindViewHolder used "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1238
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1237
    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .locals 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 1245
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Lfk;

    invoke-virtual {v8, p2}, Lfk;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1246
    .local v3, "template":Ljava/lang/String;
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 1247
    .local v2, "source":Lcom/taobao/weex/ui/component/list/WXCell;
    if-nez v2, :cond_0

    .line 1248
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1249
    .local v7, "view":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1250
    new-instance v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-direct {v6, p0, v7, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroid/view/View;I)V

    .line 1284
    .end local v7    # "view":Landroid/widget/FrameLayout;
    :goto_0
    return-object v6

    .line 1252
    :cond_0
    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellTemplateFromCache(Ljava/lang/String;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v1

    .line 1253
    .local v1, "component":Lcom/taobao/weex/ui/component/list/WXCell;
    const/4 v0, 0x1

    .line 1254
    .local v0, "cacheHit":Z
    if-nez v1, :cond_1

    .line 1255
    const/4 v0, 0x0

    .line 1256
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1257
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/taobao/weex/ui/component/list/WXCell;->setSourceUsed(Z)V

    .line 1258
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 1259
    move-object v1, v2

    .line 1260
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1261
    const-string/jumbo v8, "WXRecyclerTemplateList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " onCreateViewHolder source"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_1
    if-nez v1, :cond_2

    .line 1266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1267
    .local v4, "start":J
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .end local v1    # "component":Lcom/taobao/weex/ui/component/list/WXCell;
    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 1268
    .restart local v1    # "component":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1269
    const-string/jumbo v8, "WXRecyclerTemplateList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " onCreateViewHolder copy used "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .end local v4    # "start":J
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1273
    :cond_3
    invoke-static {v1, v3, v12}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V

    .line 1274
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1275
    const-string/jumbo v8, "WXRecyclerTemplateList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " onCreateViewHolder  cache hit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " view not idle init"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :cond_4
    :goto_1
    new-instance v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-direct {v6, p0, v1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/list/WXCell;I)V

    .line 1284
    .local v6, "templateViewHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    goto/16 :goto_0

    .line 1278
    .end local v6    # "templateViewHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    :cond_5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1279
    const-string/jumbo v8, "WXRecyclerTemplateList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " onCreateViewHolder  cache hit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " view idle init "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1280
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1279
    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 93
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onFailedToRecycleView(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .prologue
    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onHostViewInitialized(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;)V
    .locals 3
    .param p1, "host"    # Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->onHostViewInitialized(Landroid/view/View;)V

    .line 381
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 382
    .local v0, "recyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 383
    :cond_0
    const-string/jumbo v1, "WXRecyclerTemplateList"

    const-string/jumbo v2, "RecyclerView is not found or Adapter is not bound"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_1
    return-void
.end method

.method public onLoadMore(I)V
    .locals 5
    .param p1, "offScreenY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1472
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v1

    .line 1474
    .local v1, "offset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1475
    const-string/jumbo v1, "0"

    .line 1477
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    .line 1479
    .local v2, "offsetParsed":F
    int-to-float v3, p1

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v3, v3, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_2

    .line 1480
    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    if-eqz v3, :cond_2

    .line 1482
    :cond_1
    const-string/jumbo v3, "loadmore"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;)V

    .line 1483
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v3, v3, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    .line 1484
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    .end local v1    # "offset":Ljava/lang/String;
    .end local v2    # "offsetParsed":F
    :cond_2
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WXRecyclerTemplateList onLoadMore : "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onViewRecycled(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .prologue
    .line 1210
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 0
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "destroy"    # Z

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 755
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 756
    return-void
.end method

.method public removeData(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "count"    # I
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 979
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 980
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    if-gtz p2, :cond_2

    .line 984
    const/4 p2, 0x1

    .line 986
    :cond_2
    const/4 v0, 0x0

    .line 987
    .local v0, "removeCount":I
    :goto_1
    if-lez p2, :cond_3

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 988
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->removeData(Ljava/lang/Integer;)V

    .line 989
    add-int/lit8 p2, p2, -0x1

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 992
    :cond_3
    if-lez v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_0
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    .line 1001
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    .line 1002
    return-void
.end method

.method public scrollTo(ILjava/util/Map;)V
    .locals 5
    .param p1, "position"    # I
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 527
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ltz p1, :cond_1

    .line 528
    const/4 v1, 0x1

    .line 529
    .local v1, "smooth":Z
    if-eqz p2, :cond_0

    .line 530
    const-string/jumbo v3, "animated"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 535
    .local v0, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    if-nez v0, :cond_2

    .line 541
    .end local v0    # "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .end local v1    # "smooth":Z
    :cond_1
    :goto_0
    return-void

    .line 538
    .restart local v0    # "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .restart local v1    # "smooth":Z
    :cond_2
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 539
    .local v2, "view":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v4

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V

    goto :goto_0
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .locals 17
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

    .prologue
    .line 546
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 547
    .local v6, "offsetFloat":F
    const/4 v10, 0x1

    .line 548
    .local v10, "smooth":Z
    const/4 v9, -0x1

    .line 549
    .local v9, "position":I
    const/4 v12, -0x1

    .line 550
    .local v12, "typeIndex":I
    if-eqz p2, :cond_1

    .line 551
    const-string/jumbo v15, "offset"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6

    const-string/jumbo v7, "0"

    .line 552
    .local v7, "offsetStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v15, "animated"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 553
    if-eqz v7, :cond_0

    .line 555
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 560
    :cond_0
    :goto_1
    const-string/jumbo v15, "cellIndex"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v9

    .line 561
    const-string/jumbo v15, "typeIndex"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v12

    .line 563
    .end local v7    # "offsetStr":Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v2

    .line 564
    .local v2, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    if-ltz v12, :cond_4

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v15, v15, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 566
    const/4 v13, 0x0

    .line 567
    .local v13, "typePosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v15, v15, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    if-ge v4, v15, :cond_3

    .line 568
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v11

    .line 569
    .local v11, "template":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v11, :cond_7

    .line 572
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 573
    add-int/lit8 v13, v13, 0x1

    .line 575
    :cond_2
    if-le v13, v12, :cond_7

    .line 576
    move v9, v4

    .line 580
    .end local v11    # "template":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_3
    if-gez v9, :cond_4

    .line 581
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v15, v15, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .line 586
    .end local v4    # "i":I
    .end local v13    # "typePosition":I
    :cond_4
    float-to-int v5, v6

    .line 587
    .local v5, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 588
    .local v1, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    if-nez v1, :cond_8

    .line 596
    :cond_5
    :goto_3
    return-void

    .line 551
    .end local v1    # "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .end local v2    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    .end local v5    # "offset":I
    :cond_6
    const-string/jumbo v15, "offset"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 556
    .restart local v7    # "offsetStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 557
    .local v3, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Float parseFloat error :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 567
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "offsetStr":Ljava/lang/String;
    .restart local v2    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    .restart local v4    # "i":I
    .restart local v11    # "template":Lcom/taobao/weex/ui/component/list/WXCell;
    .restart local v13    # "typePosition":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 591
    .end local v4    # "i":I
    .end local v11    # "template":Lcom/taobao/weex/ui/component/list/WXCell;
    .end local v13    # "typePosition":I
    .restart local v1    # "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .restart local v5    # "offset":I
    :cond_8
    if-ltz v9, :cond_5

    .line 592
    move v8, v9

    .line 593
    .local v8, "pos":I
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 594
    .local v14, "view":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v15

    invoke-virtual {v14, v10, v8, v5, v15}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V

    goto :goto_3
.end method

.method public setColumnCount(I)V
    .locals 6
    .param p1, "columnCount"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnCount"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getColumnCount()I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    if-eq v1, v2, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 866
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 867
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 869
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public setColumnGap(F)V
    .locals 6
    .param p1, "columnGap"    # F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnGap"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getColumnGap()F

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 875
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 876
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 878
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 6
    .param p1, "columnCount"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnWidth"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getColumnWidth()F

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 845
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 846
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 848
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setHostLayoutParams(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;IIIIII)V
    .locals 2
    .param p1, "host"    # Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 713
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXVContainer;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 714
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    if-nez v0, :cond_0

    .line 715
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    .line 716
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 717
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    .line 719
    :cond_0
    return-void
.end method

.method public setListData(Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Object;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 888
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 889
    .local p1, "param":Lcom/alibaba/fastjson/JSONArray;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 890
    .local v0, "update":Z
    :goto_0
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    .line 891
    if-eqz v0, :cond_0

    .line 892
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .end local p1    # "param":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->setListData(Lcom/alibaba/fastjson/JSONArray;)V

    .line 893
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    .line 896
    :cond_0
    return-void

    .line 889
    .end local v0    # "update":Z
    .restart local p1    # "param":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 814
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    .line 815
    .local v0, "real":F
    float-to-int v1, v0

    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    .line 816
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x1

    .line 768
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 808
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .line 768
    :sswitch_0
    const-string/jumbo v6, "listData"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "alias"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "index"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "switch"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "case"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "loadmoreoffset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "scrollable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "scrollDirection"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v6, "showScrollbar"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v6, "itemViewCacheSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v6, "hasFixedSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v6, "offsetAccuracy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v4, 0xb

    goto/16 :goto_0

    .line 770
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setListData(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 774
    :pswitch_2
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 777
    :pswitch_3
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 781
    :pswitch_4
    const-string/jumbo v4, "case"

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 786
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 787
    .local v2, "scrollable":Z
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setScrollable(Z)V

    goto/16 :goto_1

    .line 790
    .end local v2    # "scrollable":Z
    :pswitch_6
    if-eqz p2, :cond_1

    .line 791
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setScrollDirection(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 795
    :pswitch_7
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 796
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 797
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setShowScrollbar(Z)V

    goto/16 :goto_1

    .line 804
    .end local v1    # "result":Ljava/lang/Boolean;
    :pswitch_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 805
    .local v0, "accuracy":I
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setOffsetAccuracy(I)V

    goto/16 :goto_1

    .line 768
    nop

    :sswitch_data_0
    .sparse-switch
        -0x350448cc -> :sswitch_3
        -0x2a89f2d5 -> :sswitch_9
        -0x142fc3e5 -> :sswitch_a
        -0xd52a857 -> :sswitch_8
        -0x6b59672 -> :sswitch_5
        -0x55c154 -> :sswitch_b
        0x2e7b30 -> :sswitch_4
        0x3f94da7 -> :sswitch_6
        0x5899650 -> :sswitch_1
        0x5fb28d2 -> :sswitch_2
        0x502d9568 -> :sswitch_0
        0x603e9732 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public setScrollDirection(Ljava/lang/String;)V
    .locals 6
    .param p1, "direction"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollDirection"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 832
    iget v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 834
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 835
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 836
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 839
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
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
    .line 882
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 883
    .local v0, "inner":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    .line 884
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
    .line 852
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 856
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 517
    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 522
    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    const-class v1, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0, p1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 422
    .local v0, "template":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-nez v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_0
.end method

.method public updateData(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 963
    if-nez p2, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 969
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v1, p2, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->updateData(Ljava/lang/Object;I)Z

    move-result v0

    .line 970
    .local v0, "onlyDataChange":Z
    if-eqz v0, :cond_2

    .line 971
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 973
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_0
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1007
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->updateProperties(Ljava/util/Map;)V

    .line 1008
    const-string/jumbo v1, "padding"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "paddingLeft"

    .line 1009
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "paddingRight"

    .line 1010
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1012
    :cond_0
    iget v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingLeft:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingRight:F

    .line 1013
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 1014
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 1015
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 1016
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 1019
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_2
    return-void
.end method
