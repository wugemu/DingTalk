.class public Lcom/ut/mini/exposure/TrackerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TrackerFrameLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;,
        Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
    }
.end annotation


# static fields
.field private static final CLICK_LIMIT:F = 20.0f

.field private static final HasExposrueObjectLock:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "TrackerFrameLayout"

.field public static TIME_INTERVAL:J = 0x0L

.field public static final TRIGGER_VIEW_CHANGED:I = 0x0

.field public static final TRIGGER_VIEW_STATUS_CHANGED:I = 0x3

.field public static final TRIGGER_WINDOW_CHANGED:I = 0x1

.field private static final UT_EXPORSURE_MAX_LENGTH:I = 0x6400

.field private static final UT_SCM_TAG:Ljava/lang/String; = "scm"

.field private static final UT_SPM_TAG:Ljava/lang/String; = "spm"

.field private static final eventId:I = 0x899

.field private static mCommonInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasExposrueDataLength:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasExposrueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasExposureSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mHasExposureViewTagSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mImmediatelyCommitBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/exposure/ExposureView;",
            ">;"
        }
    .end annotation
.end field

.field private lastDispatchDrawSystemTimeMillis:J

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mOriX:F

.field private mOriY:F

.field private traceTask:Ljava/lang/Runnable;

.field private traverseTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->TIME_INTERVAL:J

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->HasExposrueObjectLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mImmediatelyCommitBlockList:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;

    invoke-direct {v0}, Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;-><init>()V

    invoke-static {v0}, Lcom/ut/mini/UTPageHitHelper;->addPageChangerListener(Lcom/ut/mini/UTPageHitHelper$PageChangeListener;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->lastDispatchDrawSystemTimeMillis:J

    .line 101
    iput v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriX:F

    .line 102
    iput v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriY:F

    .line 103
    new-instance v0, Lcom/ut/mini/exposure/TrackerFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/ut/mini/exposure/TrackerFrameLayout$1;-><init>(Lcom/ut/mini/exposure/TrackerFrameLayout;)V

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 118
    invoke-direct {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->addCommonArgsInfo()V

    .line 119
    invoke-static {}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/ut/mini/exposure/TrackerFrameLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/ut/mini/exposure/TrackerFrameLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    return-object v0
.end method

.method private addCommonArgsInfo()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, "decorView":Landroid/view/View;
    sget-object v3, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 256
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v3

    iget-object v1, v3, Lcom/ut/mini/exposure/TrackerManager;->commonInfoMap:Ljava/util/HashMap;

    .line 257
    .local v1, "commonInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 258
    sget-object v3, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 262
    :cond_0
    const/16 v3, -0x426b

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 263
    .local v0, "commonInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    sget-object v3, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 265
    const-string/jumbo v3, "TrackerFrameLayout"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "addCommonArgsInfo mCommonInfo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_1
    const-string/jumbo v3, "TrackerFrameLayout"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "addCommonArgsInfo all mCommonInfo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .end local v0    # "commonInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "commonInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "decorView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private addToCommit(Lcom/ut/mini/exposure/ExposureView;)V
    .locals 22
    .param p1, "ev"    # Lcom/ut/mini/exposure/ExposureView;

    .prologue
    .line 544
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/ut/mini/exposure/ExposureView;->block:Ljava/lang/String;

    .line 545
    .local v12, "block":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    .line 546
    .local v10, "viewId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/ut/mini/exposure/TrackerFrameLayout;->setExposuredTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ut/mini/exposure/ExposureView;->viewData:Ljava/util/Map;

    move-object/from16 v20, v0

    .line 549
    .local v20, "viewData":Ljava/util/Map;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 550
    .local v5, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ut/mini/exposure/TrackerManager;->getExposureViewHandle()Lcom/ut/mini/internal/ExposureViewHandle;

    move-result-object v15

    .line 551
    .local v15, "handler":Lcom/ut/mini/internal/ExposureViewHandle;
    if-eqz v15, :cond_1

    .line 552
    const/16 v19, 0x0

    .line 553
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 554
    .local v13, "currentActivity":Landroid/content/Context;
    if-eqz v13, :cond_0

    .line 555
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/ut/mini/UTPageHitHelper;->getPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 557
    :cond_0
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    move-object/from16 v0, v19

    invoke-interface {v15, v0, v6}, Lcom/ut/mini/internal/ExposureViewHandle;->getExposureViewProperties(Ljava/lang/String;Landroid/view/View;)Ljava/util/Map;

    move-result-object v18

    .line 558
    .local v18, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v18, :cond_1

    .line 559
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 562
    .end local v13    # "currentActivity":Landroid/content/Context;
    .end local v18    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "url":Ljava/lang/String;
    :cond_1
    if-eqz v20, :cond_2

    const-string/jumbo v6, "UT_EXPROSURE_ARGS"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 563
    const-string/jumbo v6, "UT_EXPROSURE_ARGS"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 564
    .local v11, "argstemp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 565
    invoke-interface {v5, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 568
    .end local v11    # "argstemp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v3, 0x0

    .line 569
    .local v3, "spm":Ljava/lang/String;
    const/4 v4, 0x0

    .line 571
    .local v4, "scm":Ljava/lang/String;
    const-string/jumbo v6, "spm"

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "spm":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 572
    .restart local v3    # "spm":Ljava/lang/String;
    const-string/jumbo v6, "scm"

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scm":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 575
    .restart local v4    # "scm":Ljava/lang/String;
    sget-object v21, Lcom/ut/mini/exposure/TrackerFrameLayout;->HasExposrueObjectLock:Ljava/lang/Object;

    monitor-enter v21

    .line 576
    :try_start_0
    sget-object v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 577
    .local v14, "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    if-nez v14, :cond_3

    .line 578
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .restart local v14    # "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    sget-object v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v6, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_3
    new-instance v2, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    sub-long/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/ut/mini/exposure/ExposureView;->area:D

    invoke-direct/range {v2 .. v10}, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JDLjava/lang/String;)V

    .line 582
    .local v2, "entity":Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 584
    .local v17, "lengthInteger":Ljava/lang/Integer;
    if-nez v17, :cond_4

    .line 585
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 587
    :cond_4
    invoke-virtual {v2}, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->length()I

    move-result v16

    .line 588
    .local v16, "length":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v6, v6, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 589
    sget-object v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x6400

    if-le v6, v7, :cond_6

    .line 591
    sget-object v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-static {v12, v6}, Lcom/ut/mini/exposure/TrackerFrameLayout;->commitToUT(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 595
    :cond_5
    :goto_0
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    const-string/jumbo v6, "TrackerFrameLayout"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "\u63d0\u4ea4\u5143\u7d20viewId "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "block"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v12, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "spm"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v3, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "scm"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v4, v7, v8

    const/16 v8, 0x8

    const-string/jumbo v9, "args"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    return-void

    .line 592
    :cond_6
    :try_start_1
    sget-object v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->mImmediatelyCommitBlockList:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 593
    sget-object v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-static {v12, v6}, Lcom/ut/mini/exposure/TrackerFrameLayout;->commitToUT(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 595
    .end local v2    # "entity":Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
    .end local v14    # "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    .end local v16    # "length":I
    .end local v17    # "lengthInteger":Ljava/lang/Integer;
    :catchall_0
    move-exception v6

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private checkViewState(ILcom/ut/mini/exposure/ExposureView;)V
    .locals 6
    .param p1, "triggerType"    # I
    .param p2, "exposureView"    # Lcom/ut/mini/exposure/ExposureView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 437
    iget-object v1, p2, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->isVisableToUser(Landroid/view/View;)Z

    move-result v0

    .line 438
    .local v0, "needExposureProcess":Z
    if-eqz v0, :cond_3

    .line 439
    iget v1, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    packed-switch v1, :pswitch_data_0

    .line 474
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Lcom/ut/mini/exposure/ExposureView;->isSatisfyTimeRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    invoke-direct {p0, p2}, Lcom/ut/mini/exposure/TrackerFrameLayout;->addToCommit(Lcom/ut/mini/exposure/ExposureView;)V

    .line 476
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    iget-object v2, p2, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_1
    :goto_1
    return-void

    .line 442
    :pswitch_1
    iput v4, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    goto :goto_0

    .line 448
    :pswitch_2
    if-eq p1, v4, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 449
    :cond_2
    iput v5, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->endTime:J

    goto :goto_0

    .line 455
    :pswitch_3
    iput v4, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    goto :goto_0

    .line 460
    :cond_3
    iget v1, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 465
    :pswitch_4
    iput v5, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ut/mini/exposure/ExposureView;->endTime:J

    goto :goto_0

    .line 477
    :cond_4
    iget v1, p2, Lcom/ut/mini/exposure/ExposureView;->lastState:I

    if-ne v1, v5, :cond_1

    .line 478
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    iget-object v2, p2, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v1, "TrackerFrameLayout"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u65f6\u95f4\u4e0d\u6ee1\u8db3\uff0c\u5143\u7d20:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 439
    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private checkViewsStates(I)V
    .locals 6
    .param p1, "triggerType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    invoke-static {}, Lamu;->b()V

    .line 424
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 425
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 426
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ut/mini/exposure/ExposureView;

    iget-object v3, v4, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    .line 427
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/exposure/ExposureView;

    .line 428
    .local v1, "exposureView":Lcom/ut/mini/exposure/ExposureView;
    invoke-direct {p0, p1, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->checkViewState(ILcom/ut/mini/exposure/ExposureView;)V

    goto :goto_0

    .line 431
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "exposureView":Lcom/ut/mini/exposure/ExposureView;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static commitExposureData()V
    .locals 5

    .prologue
    .line 820
    sget-object v3, Lcom/ut/mini/exposure/TrackerFrameLayout;->HasExposrueObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 821
    :try_start_0
    sget-object v2, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 822
    .local v1, "keys":[Ljava/lang/Object;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ut/mini/exposure/TrackerFrameLayout;->mCommonInfo:Ljava/util/HashMap;

    invoke-static {v2, v4}, Lcom/ut/mini/exposure/TrackerFrameLayout;->commitToUT(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    .end local v0    # "i":I
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static commitToUT(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p0, "block"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "commonInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 603
    invoke-static {}, Lamu;->b()V

    .line 604
    sget-object v2, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 605
    .local v7, "es":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v6, "outPutArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 607
    invoke-static {p1}, Lamw;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 609
    :cond_0
    const-string/jumbo v2, "expdata"

    invoke-static {v7}, Lcom/ut/mini/exposure/TrackerFrameLayout;->getExpData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "pageName":Ljava/lang/String;
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v2, 0x899

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 612
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 615
    sget-object v2, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueDataLength:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method private static getExpData(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "es":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;>;"
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 620
    .local v0, "js":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 621
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isExposured(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "block"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 524
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 525
    const/4 v1, 0x0

    .line 527
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private isVisableToUser(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->viewSize(Landroid/view/View;)D

    move-result-wide v0

    sget-wide v2, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refreshExposureData()V
    .locals 1

    .prologue
    .line 779
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 780
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 781
    return-void
.end method

.method public static refreshExposureData(Ljava/lang/String;)V
    .locals 4
    .param p0, "block"    # Ljava/lang/String;

    .prologue
    .line 789
    const-string/jumbo v0, "TrackerFrameLayout"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[refreshExposureData]block"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 793
    :cond_0
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "block"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 803
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 810
    .local v0, "set":Ljava/util/Set;
    if-eqz v0, :cond_0

    .line 811
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setCommitImmediatelyExposureBlock(Ljava/lang/String;)V
    .locals 1
    .param p0, "block"    # Ljava/lang/String;

    .prologue
    .line 834
    sget-object v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mImmediatelyCommitBlockList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    return-void
.end method

.method private setExposuredTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "block"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 531
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 532
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 534
    .restart local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 537
    return-void
.end method

.method private trace(IZ)V
    .locals 11
    .param p1, "triggerType"    # I
    .param p2, "isForceTraverse"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 276
    move-object v1, p0

    .line 277
    .local v1, "view":Landroid/view/View;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 278
    .local v2, "triggerTime":J
    if-nez p2, :cond_0

    .line 279
    iget-wide v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseTime:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/ut/mini/exposure/TrackerFrameLayout;->TIME_INTERVAL:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 280
    const-string/jumbo v4, "TrackerFrameLayout"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "triggerTime interval is too close to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->TIME_INTERVAL:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .end local v2    # "triggerTime":J
    :goto_0
    return-void

    .line 284
    .restart local v2    # "triggerTime":J
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "\u626b\u63cf\u5f00\u59cb"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iput-wide v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseTime:J

    .line 286
    invoke-direct {p0, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseViewTree(Landroid/view/View;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->checkViewsStates(I)V

    .line 288
    const-string/jumbo v4, "TrackerFrameLayout"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u626b\u63cf\u7ed3\u675f\uff0c\u8017\u65f6:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v2    # "triggerTime":J
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "TrackerFrameLayout"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private traverseViewTree(Landroid/view/View;)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isShown()Z

    move-result v22

    if-nez v22, :cond_2

    .line 306
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "view invisalbe,return"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->isIngoneExposureView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 310
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "view ingone by user,return. view:"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    :cond_3
    const/4 v2, 0x0

    .line 314
    .local v2, "block":Ljava/lang/String;
    const/16 v21, 0x0

    .line 315
    .local v21, "viewId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 316
    .local v6, "dataMap":Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->isExposureViewForWeex(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 318
    .local v4, "currentActivity":Landroid/content/Context;
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/exposure/TrackerManager;->getExposureViewHandle()Lcom/ut/mini/internal/ExposureViewHandle;

    move-result-object v11

    .line 319
    .local v11, "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    if-eqz v11, :cond_6

    .line 320
    const/16 v20, 0x0

    .line 321
    .local v20, "url":Ljava/lang/String;
    if-eqz v4, :cond_4

    instance-of v0, v4, Landroid/app/Activity;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 322
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTPageHitHelper;->getPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 323
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 324
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "Cannot get Current Page Url"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v4, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_4
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v11, v0, v1}, Lcom/ut/mini/internal/ExposureViewHandle;->getExposureViewTag(Ljava/lang/String;Landroid/view/View;)Lcom/ut/mini/internal/ExposureViewTag;

    move-result-object v15

    .line 328
    .local v15, "tag":Lcom/ut/mini/internal/ExposureViewTag;
    if-eqz v15, :cond_5

    .line 329
    iget-object v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->block:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    iget-object v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->viewId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 330
    iget-object v2, v15, Lcom/ut/mini/internal/ExposureViewTag;->block:Ljava/lang/String;

    .line 331
    iget-object v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->viewId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 341
    :cond_5
    :goto_1
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "weex block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .end local v4    # "currentActivity":Landroid/content/Context;
    .end local v11    # "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    .end local v15    # "tag":Lcom/ut/mini/internal/ExposureViewTag;
    .end local v20    # "url":Ljava/lang/String;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->isExposureView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 346
    const/16 v22, -0x4269

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 347
    .local v5, "data":Ljava/lang/Object;
    if-eqz v5, :cond_7

    .line 348
    instance-of v0, v5, Ljava/util/Map;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object v6, v5

    .line 349
    check-cast v6, Ljava/util/Map;

    .line 352
    const-string/jumbo v22, "UT_EXPROSURE_BLOCK"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "block":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 353
    .restart local v2    # "block":Ljava/lang/String;
    const-string/jumbo v22, "UT_EXPROSURE_VIEWID"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "viewId":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 356
    .restart local v21    # "viewId":Ljava/lang/String;
    :cond_7
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "native block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    .end local v5    # "data":Ljava/lang/Object;
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 361
    sget-object v22, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    .line 362
    .local v14, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v14, :cond_9

    .line 363
    new-instance v14, Ljava/util/HashSet;

    .end local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 365
    .restart local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v22, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ut/mini/exposure/ExposureView;

    .line 370
    .local v8, "ev":Lcom/ut/mini/exposure/ExposureView;
    if-eqz v8, :cond_e

    .line 371
    iget-object v0, v8, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-virtual {v8}, Lcom/ut/mini/exposure/ExposureView;->isSatisfyTimeRequired()Z

    move-result v22

    if-nez v22, :cond_c

    .line 373
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this view has existed block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 333
    .end local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .end local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "currentActivity":Landroid/content/Context;
    .restart local v11    # "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    .restart local v15    # "tag":Lcom/ut/mini/internal/ExposureViewTag;
    .restart local v20    # "url":Ljava/lang/String;
    :cond_a
    iget-boolean v0, v15, Lcom/ut/mini/internal/ExposureViewTag;->notExposure:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 334
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/exposure/ExposureUtils;->clearExposureForWeex(Landroid/view/View;)V

    .line 335
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "clear exposure tag. view"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_b
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "block or viewId is valid,plase check input params!"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 376
    .end local v4    # "currentActivity":Landroid/content/Context;
    .end local v11    # "handle":Lcom/ut/mini/internal/ExposureViewHandle;
    .end local v15    # "tag":Lcom/ut/mini/internal/ExposureViewTag;
    .end local v20    # "url":Ljava/lang/String;
    .restart local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .restart local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this view status has change or time > timeThreshold, block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, " new viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    const/16 v24, 0x4

    const-string/jumbo v25, "old viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    iget-object v0, v8, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/ut/mini/exposure/TrackerFrameLayout;->checkViewState(ILcom/ut/mini/exposure/ExposureView;)V

    .line 388
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->isExposured(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 389
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this view has exposured block"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 381
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ut/mini/exposure/ExposureView;

    .line 382
    .local v9, "exposureView":Lcom/ut/mini/exposure/ExposureView;
    iget-object v0, v9, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 383
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "this viewId has existed current view:"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "oldView:"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    iget-object v0, v9, Lcom/ut/mini/exposure/ExposureView;->view:Landroid/view/View;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const-string/jumbo v25, "viewId"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    aput-object v21, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 392
    .end local v9    # "exposureView":Lcom/ut/mini/exposure/ExposureView;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->viewSize(Landroid/view/View;)D

    move-result-wide v16

    .line 393
    .local v16, "size":D
    sget-wide v22, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    cmpl-double v22, v16, v22

    if-ltz v22, :cond_12

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 395
    .local v18, "time":J
    new-instance v7, Lcom/ut/mini/exposure/ExposureView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/ut/mini/exposure/ExposureView;-><init>(Landroid/view/View;)V

    .line 396
    .local v7, "eView":Lcom/ut/mini/exposure/ExposureView;
    move-wide/from16 v0, v18

    iput-wide v0, v7, Lcom/ut/mini/exposure/ExposureView;->beginTime:J

    .line 397
    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/ut/mini/exposure/ExposureView;->tag:Ljava/lang/String;

    .line 398
    iput-object v2, v7, Lcom/ut/mini/exposure/ExposureView;->block:Ljava/lang/String;

    .line 399
    iput-object v6, v7, Lcom/ut/mini/exposure/ExposureView;->viewData:Ljava/util/Map;

    .line 400
    move-wide/from16 v0, v18

    iput-wide v0, v7, Lcom/ut/mini/exposure/ExposureView;->lastCalTime:J

    .line 401
    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/ut/mini/exposure/ExposureView;->area:D

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "\u627e\u5230\u5143\u7d20"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    .end local v7    # "eView":Lcom/ut/mini/exposure/ExposureView;
    .end local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .end local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "size":D
    .end local v18    # "time":J
    :cond_11
    :goto_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v10, p1

    .line 410
    check-cast v10, Landroid/view/ViewGroup;

    .line 411
    .local v10, "group":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 412
    .local v3, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_0

    .line 413
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->traverseViewTree(Landroid/view/View;)V

    .line 412
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 405
    .end local v3    # "childCount":I
    .end local v10    # "group":Landroid/view/ViewGroup;
    .end local v12    # "i":I
    .restart local v8    # "ev":Lcom/ut/mini/exposure/ExposureView;
    .restart local v14    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "size":D
    :cond_12
    const-string/jumbo v22, "TrackerFrameLayout"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "\u627e\u5230\u5143\u7d20"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",\u4f46\u4e0d\u6ee1\u8db3\u66dd\u5149\u6761\u4ef6"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private viewSize(Landroid/view/View;)D
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 507
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 508
    .local v0, "height":I
    iget-object v6, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 509
    .local v1, "isVisibleRect":Z
    mul-int v2, v5, v0

    .line 511
    .local v2, "size":I
    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    .line 513
    iget-object v6, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 514
    .local v4, "visibleWidth":I
    iget-object v6, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 516
    .local v3, "visibleHeight":I
    mul-int v6, v4, v3

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    int-to-double v8, v2

    div-double/2addr v6, v8

    .line 518
    .end local v3    # "visibleHeight":I
    .end local v4    # "visibleWidth":I
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    const-string/jumbo v2, "TrackerFrameLayout"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dispatchDraw"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    .local v0, "time":J
    iget-wide v2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->lastDispatchDrawSystemTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 179
    iput-wide v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->lastDispatchDrawSystemTimeMillis:J

    .line 181
    invoke-direct {p0}, Lcom/ut/mini/exposure/TrackerFrameLayout;->addCommonArgsInfo()V

    .line 183
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 184
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 125
    const-string/jumbo v1, "TrackerFrameLayout"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "action:"

    aput-object v5, v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 128
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriX:F

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriY:F

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriX:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->mOriY:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_2

    .line 135
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 136
    .local v2, "time":J
    const-string/jumbo v1, "TrackerFrameLayout"

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, " begin"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, v8, v8}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 138
    const-string/jumbo v1, "TrackerFrameLayout"

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "end costTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "--\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    .end local v2    # "time":J
    :cond_2
    const-string/jumbo v1, "TrackerFrameLayout"

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "onInterceptTouchEvent ACTION_MOVE but not in click limit"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/exposure/TrackerManager;->getThreadHandle()Landroid/os/Handler;

    move-result-object v0

    .line 146
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 9
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 236
    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    .line 237
    const-string/jumbo v2, "TrackerFrameLayout"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "begin"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 239
    .local v0, "ts":J
    invoke-direct {p0, v5, v8}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 240
    const-string/jumbo v2, "TrackerFrameLayout"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "end costTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .end local v0    # "ts":J
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 245
    return-void

    .line 242
    :cond_0
    const-string/jumbo v2, "TrackerFrameLayout"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "visibility ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 9
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 195
    const-string/jumbo v2, "TrackerFrameLayout"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "begin"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 197
    .local v0, "ts":J
    invoke-direct {p0, v5, v8}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 198
    const-string/jumbo v2, "TrackerFrameLayout"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "end"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowFocusChanged(Z)V

    .line 200
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 166
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 167
    const-string/jumbo v2, "TrackerFrameLayout"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "begin"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, "ts":J
    invoke-direct {p0, v8, v8}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 170
    const-string/jumbo v2, "TrackerFrameLayout"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "end costTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 218
    return-void
.end method

.method public onPageDisAppear()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 674
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ut/mini/exposure/TrackerManager;->getThreadHandle()Landroid/os/Handler;

    move-result-object v2

    .line 675
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 676
    iget-object v8, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->traceTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 678
    :cond_0
    invoke-direct {p0, v9, v9}, Lcom/ut/mini/exposure/TrackerFrameLayout;->trace(IZ)V

    .line 680
    invoke-static {}, Lcom/ut/mini/exposure/TrackerFrameLayout;->commitExposureData()V

    .line 681
    sget-object v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposrueMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 685
    :try_start_0
    sget-object v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 686
    .local v4, "ks":[Ljava/lang/Object;
    array-length v8, v4

    if-lez v8, :cond_2

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v4

    if-ge v3, v8, :cond_1

    .line 689
    sget-object v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    aget-object v9, v4, v3

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 691
    :cond_1
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v8, "ut_exposure_test"

    invoke-direct {v0, v8}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, "builder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "]"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\["

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, "viewids":Ljava/lang/String;
    const-string/jumbo v8, "viewids"

    invoke-virtual {v0, v8, v7}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 694
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v6

    .line 695
    .local v6, "tracker":Lcom/ut/mini/UTTracker;
    if-eqz v6, :cond_2

    .line 696
    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local v0    # "builder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "tracker":Lcom/ut/mini/UTTracker;
    .end local v7    # "viewids":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 705
    .end local v4    # "ks":[Ljava/lang/Object;
    :goto_1
    sget-object v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->mImmediatelyCommitBlockList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 706
    iget-object v8, p0, Lcom/ut/mini/exposure/TrackerFrameLayout;->currentViews:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 708
    sget-boolean v8, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z

    if-nez v8, :cond_3

    .line 711
    sget-object v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureSet:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 713
    :cond_3
    return-void

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    sget-object v8, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    sget-object v9, Lcom/ut/mini/exposure/TrackerFrameLayout;->mHasExposureViewTagSet:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    throw v8
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    const-string/jumbo v0, "TrackerFrameLayout"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "action:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
