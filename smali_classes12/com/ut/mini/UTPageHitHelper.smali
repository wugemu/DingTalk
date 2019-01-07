.class public Lcom/ut/mini/UTPageHitHelper;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/UTPageHitHelper$PageChangeListener;,
        Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;,
        Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    }
.end annotation


# static fields
.field private static final MAX_SKIP_CLEAR_PAGE_OBJECT_CACHE_CAPACITY:I = 0x64

.field private static final MAX_SPM_OBJECT_CACHE_CAPACITY:I = 0x32

.field static final SKIPBK:Ljava/lang/String; = "skipbk"

.field static final UTPARAM_CNT:Ljava/lang/String; = "utparam-cnt"

.field private static mPageChangerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ut/mini/UTPageHitHelper$PageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static s_instance:Lcom/ut/mini/UTPageHitHelper;


# instance fields
.field private mBackupNextPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearUTPageStateObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPage:Ljava/lang/String;

.field private mCurrentPageCacheKey:Ljava/lang/String;

.field private mIsTurnOff:Z

.field private mLastCacheKey:Ljava/lang/String;

.field private mLastCacheKeyScmUrl:Ljava/lang/String;

.field private mLastCacheKeySpmUrl:Ljava/lang/String;

.field private mLastCacheKeyUtParam:Ljava/lang/String;

.field private mLastCacheKeyUtParamCnt:Ljava/lang/String;

.field private mNextPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPageSkipBack:Z

.field private mPageEventObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStateObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSPMObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSPMObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipClearPageObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/ut/mini/UTPageHitHelper;

    invoke-direct {v0}, Lcom/ut/mini/UTPageHitHelper;-><init>()V

    sput-object v0, Lcom/ut/mini/UTPageHitHelper;->s_instance:Lcom/ut/mini/UTPageHitHelper;

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    .line 176
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    .line 359
    iput-boolean v2, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    .line 363
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 365
    iput-boolean v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    .line 366
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 367
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    .line 372
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    .line 385
    return-void
.end method

.method private _clearPageDisAppearContext()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 876
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 877
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 879
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 880
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTVariables;->setBackupH5Url(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method private declared-synchronized _clearUTPageEventObjectCache(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 2
    .param p1, "aPageEventObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_0
    monitor-exit p0

    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized _getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :goto_0
    monitor-exit p0

    return-object v2

    .line 517
    :cond_0
    :try_start_1
    new-instance v1, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    invoke-direct {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;-><init>()V

    .line 518
    .local v1, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setCacheKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 520
    goto :goto_0

    .line 513
    .end local v0    # "lCacheKey":Ljava/lang/String;
    .end local v1    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static _getOutsideTTID(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "pUri"    # Landroid/net/Uri;

    .prologue
    .line 1545
    if-eqz p0, :cond_1

    .line 1546
    const-string/jumbo v3, "ttid"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1547
    .local v1, "lResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 1548
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1549
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1550
    const-string/jumbo v3, "%40"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1558
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private _getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 483
    check-cast v1, Ljava/lang/String;

    .line 487
    .local v1, "lPageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 488
    .local v0, "lHashCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 485
    .end local v0    # "lHashCode":I
    .end local v1    # "lPageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "lPageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static _getPageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 1562
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1563
    .local v0, "lPageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1564
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1567
    .end local v0    # "lPageName":Ljava/lang/String;
    .local v1, "lPageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "lPageName":Ljava/lang/String;
    .restart local v0    # "lPageName":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .end local v0    # "lPageName":Ljava/lang/String;
    .restart local v1    # "lPageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private _getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "lUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1630
    const-string/jumbo v2, "spm"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15205
    .local v1, "lSPM":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1631
    if-eqz v2, :cond_0

    .line 1633
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1634
    const-string/jumbo v2, "spm"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 16205
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1641
    if-eqz v2, :cond_1

    .line 1642
    const-string/jumbo v2, "spm_url"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1643
    if-eqz v2, :cond_1

    .line 1645
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1646
    const-string/jumbo v2, "spm_url"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1653
    :cond_1
    :goto_1
    return-object v1

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lamu;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1647
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1648
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lamu;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private declared-synchronized _putUTPageEventObjectToCache(Ljava/lang/String;Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 1
    .param p1, "aCacheKey"    # Ljava/lang/String;
    .param p2, "aPageObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized _releaseUTPageStateObject()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1617
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 1618
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_1

    .line 1619
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1620
    .local v1, "lPCacheKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1621
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1622
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1627
    .end local v0    # "i":I
    .end local v1    # "lPCacheKey":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 1617
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized _removeUTPageEventObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_0
    monitor-exit p0

    return-void

    .line 536
    .end local v0    # "lCacheKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized addPageChangerListener(Lcom/ut/mini/UTPageHitHelper$PageChangeListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/ut/mini/UTPageHitHelper$PageChangeListener;

    .prologue
    .line 376
    const-class v1, Lcom/ut/mini/UTPageHitHelper;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 383
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 380
    :cond_1
    :try_start_0
    sget-object v0, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    sget-object v0, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearUTPageStateObject(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1658
    .local p1, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1659
    const-string/jumbo v0, "spm-cnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    const-string/jumbo v0, "spm-url"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    const-string/jumbo v0, "spm-pre"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    const-string/jumbo v0, "utparam-cnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    const-string/jumbo v0, "utparam-url"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    const-string/jumbo v0, "utparam-pre"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    const-string/jumbo v0, "scm-pre"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    :cond_0
    return-void
.end method

.method private copyUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .locals 2
    .param p1, "pageStateObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    invoke-direct {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;-><init>()V

    .line 153
    .local v0, "utPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 154
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 155
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 157
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 158
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    .line 159
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    .line 161
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 162
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 163
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 165
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 166
    iget-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    iput-object v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    .line 168
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 169
    iget-boolean v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    goto :goto_0
.end method

.method static declared-synchronized disPathcherPageChangerEvent(ILjava/lang/Object;)V
    .locals 5
    .param p0, "eventType"    # I
    .param p1, "pageObject"    # Ljava/lang/Object;

    .prologue
    .line 392
    const-class v4, Lcom/ut/mini/UTPageHitHelper;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 393
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 394
    sget-object v3, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;

    .line 395
    .local v1, "pageChangeListener":Lcom/ut/mini/UTPageHitHelper$PageChangeListener;
    if-eqz v1, :cond_0

    .line 399
    if-nez p0, :cond_1

    .line 400
    invoke-interface {v1, p1}, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;->onPageAppear(Ljava/lang/Object;)V

    .line 393
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    invoke-interface {v1, p1}, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;->onPageDisAppear(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 392
    .end local v0    # "i":I
    .end local v1    # "pageChangeListener":Lcom/ut/mini/UTPageHitHelper$PageChangeListener;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 405
    .restart local v0    # "i":I
    .restart local v2    # "size":I
    :cond_2
    monitor-exit v4

    return-void
.end method

.method public static encodeUtParam(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "pageStatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1324
    if-nez p0, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-object p0

    .line 1329
    :cond_1
    :try_start_0
    const-string/jumbo v4, "utparam-cnt"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1330
    .local v1, "utparamCnt":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1331
    const-string/jumbo v4, "utparam-cnt"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1337
    .end local v1    # "utparamCnt":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_1
    const-string/jumbo v4, "utparam-url"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1338
    .local v3, "utparamUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1339
    const-string/jumbo v4, "utparam-url"

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1345
    .end local v3    # "utparamUrl":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_2
    const-string/jumbo v4, "utparam-pre"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1346
    .local v2, "utparamPre":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1347
    const-string/jumbo v4, "utparam-pre"

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1349
    .end local v2    # "utparamPre":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Throwable;
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1333
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1334
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1341
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1342
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static getInstance()Lcom/ut/mini/UTPageHitHelper;
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/ut/mini/UTPageHitHelper;->s_instance:Lcom/ut/mini/UTPageHitHelper;

    return-object v0
.end method

.method private parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1768
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "lPageStateObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .param p3, "lUrlSPM"    # Ljava/lang/String;
    .param p4, "lUrlUtParam"    # Ljava/lang/String;
    .param p5, "lUrlSCM"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1674
    .local p2, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "spm-cnt"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1675
    .local v2, "spmcnt":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1676
    iput-object v2, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 1683
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1684
    iput-object p3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 1698
    :goto_1
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1699
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 1704
    :goto_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1705
    iput-object p5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    .line 1710
    :goto_3
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1711
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    .line 1716
    :goto_4
    const-string/jumbo v5, "utparam-cnt"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1717
    .local v4, "utparamcnt":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1718
    iput-object v4, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 1724
    :goto_5
    const-string/jumbo v3, ""

    .line 1725
    .local v3, "utparam":Ljava/lang/String;
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1726
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    .line 1728
    :cond_0
    const-string/jumbo v5, "utparam-url"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1729
    invoke-virtual {p0, p4, v3}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1730
    iput-object v3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 1733
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1734
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 1738
    :goto_6
    return-void

    .line 1679
    .end local v3    # "utparam":Ljava/lang/String;
    .end local v4    # "utparamcnt":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "spm_cnt"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    goto :goto_0

    .line 1686
    :cond_2
    const-string/jumbo v5, "spm-url"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1688
    .local v0, "spm0":Ljava/lang/String;
    const-string/jumbo v5, "spm_url"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1689
    .local v1, "spm1":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1690
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 1691
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1692
    iput-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 1694
    :cond_4
    const-string/jumbo v5, "spm"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 1701
    .end local v0    # "spm0":Ljava/lang/String;
    .end local v1    # "spm1":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    goto/16 :goto_2

    .line 1707
    :cond_6
    const-string/jumbo v5, "scm"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 1713
    :cond_7
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    goto/16 :goto_4

    .line 1720
    .restart local v4    # "utparamcnt":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    goto/16 :goto_5

    .line 1736
    .restart local v3    # "utparam":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method declared-synchronized _releaseSPMCacheObj(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCacheKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_2

    .line 451
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    .local v1, "lPCacheKey":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 453
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "i":I
    .end local v1    # "lPCacheKey":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized _releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 4
    .param p1, "aPageEventObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->resetPropertiesWithoutSkipFlagAndH5Flag()V

    .line 429
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_2

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    .line 434
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    .line 435
    .local v1, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    if-eqz v1, :cond_1

    .line 436
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "i":I
    .end local v1    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_2
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCurrentPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyScmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeySpmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyUtParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyUtParamCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 416
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 417
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getNextPageProperties()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 419
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1598
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 1599
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1600
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1601
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1603
    :cond_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1604
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    .end local v0    # "lCacheKey":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1606
    .restart local v0    # "lCacheKey":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    invoke-direct {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;-><init>()V

    .line 1607
    .local v1, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 1608
    goto :goto_0

    .line 1611
    .end local v0    # "lCacheKey":Ljava/lang/String;
    .end local v1    # "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1598
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getPageAllProperties(Landroid/app/Activity;)Ljava/util/Map;
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1233
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1234
    :cond_0
    const-string/jumbo v0, "getPagePropertiesWithSpmAndUtparam"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "activity or CurrentPageCacheKey is null"

    aput-object v13, v11, v12

    invoke-static {v0, v11}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1239
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v9

    .line 1240
    .local v9, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v9}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isPageAppearCalled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    const-string/jumbo v0, "getPagePropertiesWithSpmAndUtparam"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "activity isPageAppearCalled is false"

    aput-object v13, v11, v12

    invoke-static {v0, v11}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1233
    .end local v9    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1246
    .restart local v9    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v9}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v11

    if-ne v0, v11, :cond_3

    .line 1248
    const-string/jumbo v0, "getPagePropertiesWithSpmAndUtparam"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "activity is UT_H5_IN_WebView"

    aput-object v13, v11, v12

    invoke-static {v0, v11}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1253
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ut/mini/UTPageHitHelper;->copyUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v1

    .line 1254
    .local v1, "pageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-nez v1, :cond_4

    .line 1255
    const-string/jumbo v0, "getPagePropertiesWithSpmAndUtparam"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "getOrNewUTPageStateObject is null"

    aput-object v13, v11, v12

    invoke-static {v0, v11}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1259
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1260
    .local v2, "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1261
    invoke-virtual {v9}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1262
    invoke-virtual {v9}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1265
    :cond_5
    const-string/jumbo v3, ""

    .line 1266
    .local v3, "lUrlSPM":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 1267
    .local v4, "lUrlUtParam":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 1269
    .local v5, "lUrlSCM":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v10

    .line 1270
    .local v10, "pageUri":Landroid/net/Uri;
    if-nez v10, :cond_6

    .line 1271
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1272
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_6

    .line 1273
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 1276
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    if-eqz v10, :cond_7

    .line 1279
    :try_start_3
    invoke-direct {p0, v10}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 1284
    :goto_1
    :try_start_4
    const-string/jumbo v0, "utparam"

    invoke-virtual {v10, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 1289
    :goto_2
    :try_start_5
    const-string/jumbo v0, "scm"

    invoke-virtual {v10, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 1295
    :cond_7
    :goto_3
    :try_start_6
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1296
    .local v8, "isFromFragment":Z
    iget-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v0, :cond_d

    .line 1299
    const-string/jumbo v0, "1"

    const-string/jumbo v11, "skipbk"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v0, :cond_9

    .line 1302
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 1307
    :cond_9
    iget-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v0, :cond_b

    if-eqz v8, :cond_b

    :cond_a
    move-object v0, p0

    .line 1308
    invoke-direct/range {v0 .. v5}, Lcom/ut/mini/UTPageHitHelper;->refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_b
    :goto_4
    iget-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v0, :cond_c

    .line 1317
    invoke-direct {p0, v2}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1319
    :cond_c
    invoke-virtual {v1, v8}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1280
    .end local v8    # "isFromFragment":Z
    :catch_0
    move-exception v6

    .line 1281
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "getPagePropertiesWithSpmAndUtparam"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v6, v11}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1285
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 1286
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "getPagePropertiesWithSpmAndUtparam"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v6, v11}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1290
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .line 1291
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "getPagePropertiesWithSpmAndUtparam"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v6, v11}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1312
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v8    # "isFromFragment":Z
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1313
    invoke-direct {p0, v2}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method public getPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 716
    if-nez p1, :cond_1

    .line 717
    const/4 v2, 0x0

    .line 728
    :cond_0
    :goto_0
    return-object v2

    .line 719
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 720
    .local v2, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 721
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 723
    :cond_2
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 724
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v1

    .line 725
    .local v1, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 726
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method declared-synchronized getPageScmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1486
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1487
    :try_start_0
    const-string/jumbo v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1490
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v2

    .line 1492
    .local v2, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 1494
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1497
    :cond_2
    const-string/jumbo v4, ""

    .line 1499
    .local v4, "scmPre":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v3

    .line 1500
    .local v3, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v3, :cond_6

    .line 1501
    iget-boolean v0, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1502
    .local v0, "isBack":Z
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v5, :cond_8

    .line 1504
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v5, :cond_3

    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v5, :cond_4

    .line 1505
    :cond_3
    const/4 v0, 0x0

    .line 1509
    :cond_4
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1510
    .local v1, "isFromFragment":Z
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 1511
    const/4 v0, 0x0

    .line 1515
    :cond_5
    if-nez v0, :cond_7

    .line 1516
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1517
    iget-object v4, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    .line 1528
    .end local v0    # "isBack":Z
    .end local v1    # "isFromFragment":Z
    :cond_6
    :goto_1
    if-nez v4, :cond_0

    .line 1529
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1520
    .restart local v0    # "isBack":Z
    .restart local v1    # "isFromFragment":Z
    :cond_7
    iget-object v4, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;

    goto :goto_1

    .line 1524
    .end local v1    # "isFromFragment":Z
    :cond_8
    iget-object v4, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmPre:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1486
    .end local v0    # "isBack":Z
    .end local v2    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v3    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .end local v4    # "scmPre":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized getPageSpmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1437
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1438
    :try_start_0
    const-string/jumbo v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1441
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v2

    .line 1443
    .local v2, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 1445
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1448
    :cond_2
    const-string/jumbo v4, ""

    .line 1450
    .local v4, "spmPre":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v3

    .line 1451
    .local v3, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v3, :cond_6

    .line 1452
    iget-boolean v0, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1453
    .local v0, "isBack":Z
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v5, :cond_8

    .line 1455
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v5, :cond_3

    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v5, :cond_4

    .line 1456
    :cond_3
    const/4 v0, 0x0

    .line 1460
    :cond_4
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1461
    .local v1, "isFromFragment":Z
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 1462
    const/4 v0, 0x0

    .line 1466
    :cond_5
    if-nez v0, :cond_7

    .line 1467
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1468
    iget-object v4, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    .line 1479
    .end local v0    # "isBack":Z
    .end local v1    # "isFromFragment":Z
    :cond_6
    :goto_1
    if-nez v4, :cond_0

    .line 1480
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1471
    .restart local v0    # "isBack":Z
    .restart local v1    # "isFromFragment":Z
    :cond_7
    iget-object v4, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    goto :goto_1

    .line 1475
    .end local v1    # "isFromFragment":Z
    :cond_8
    iget-object v4, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1437
    .end local v0    # "isBack":Z
    .end local v2    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v3    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .end local v4    # "spmPre":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized getPageSpmUrl(Landroid/app/Activity;)Ljava/lang/String;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1356
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1357
    :try_start_0
    const-string/jumbo v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1360
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v3

    .line 1362
    .local v3, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v10

    if-eqz v10, :cond_2

    sget-object v10, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 1364
    const-string/jumbo v9, ""

    goto :goto_0

    .line 1368
    :cond_2
    const-string/jumbo v9, ""

    .line 1371
    .local v9, "spmUrl":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v6

    .line 1372
    .local v6, "lUrl":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 1373
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1374
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 1375
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1379
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v6, :cond_4

    .line 1381
    :try_start_2
    invoke-direct {p0, v6}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 1388
    :cond_4
    :goto_1
    :try_start_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1393
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v5

    .line 1394
    .local v5, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v5, :cond_8

    .line 1395
    iget-boolean v1, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1396
    .local v1, "isBack":Z
    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v10, :cond_c

    .line 1398
    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v10, :cond_5

    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v10, :cond_6

    .line 1399
    :cond_5
    const/4 v1, 0x0

    .line 1403
    :cond_6
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1404
    .local v2, "isFromFragment":Z
    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v10, :cond_7

    if-eqz v2, :cond_7

    .line 1405
    const/4 v1, 0x0

    .line 1409
    :cond_7
    if-nez v1, :cond_b

    .line 1410
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v4

    .line 1411
    .local v4, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "spm-url"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1413
    .local v7, "spm0":Ljava/lang/String;
    const-string/jumbo v10, "spm_url"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1414
    .local v8, "spm1":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1415
    move-object v9, v7

    .line 1430
    .end local v1    # "isBack":Z
    .end local v2    # "isFromFragment":Z
    .end local v4    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "spm0":Ljava/lang/String;
    .end local v8    # "spm1":Ljava/lang/String;
    :cond_8
    :goto_2
    if-nez v9, :cond_0

    .line 1431
    const-string/jumbo v9, ""

    goto/16 :goto_0

    .line 1416
    .restart local v1    # "isBack":Z
    .restart local v2    # "isFromFragment":Z
    .restart local v4    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "spm0":Ljava/lang/String;
    .restart local v8    # "spm1":Ljava/lang/String;
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1417
    move-object v9, v8

    goto :goto_2

    .line 1419
    :cond_a
    const-string/jumbo v10, "spm"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "spmUrl":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1421
    .restart local v9    # "spmUrl":Ljava/lang/String;
    goto :goto_2

    .line 1422
    .end local v4    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "spm0":Ljava/lang/String;
    .end local v8    # "spm1":Ljava/lang/String;
    :cond_b
    iget-object v9, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto :goto_2

    .line 1426
    .end local v2    # "isFromFragment":Z
    :cond_c
    iget-object v9, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1    # "isBack":Z
    .end local v5    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 1356
    .end local v3    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v6    # "lUrl":Landroid/net/Uri;
    .end local v9    # "spmUrl":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized getPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 772
    monitor-enter p0

    if-nez p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 775
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 776
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 772
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isH52001(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 492
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 493
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 494
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    sget-object v2, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 496
    const/4 v1, 0x1

    .line 500
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pageAppear(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pageAppear(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aCustomPageName"    # Ljava/lang/String;

    .prologue
    .line 676
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 19
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aCustomPageName"    # Ljava/lang/String;
    .param p3, "aIsDonotSkipFlag"    # Z

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lamu;->b()V

    .line 555
    if-eqz p1, :cond_c

    .line 557
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "lPageCacheKey":Ljava/lang/String;
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-eqz v14, :cond_1

    .line 673
    .end local v7    # "lPageCacheKey":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 563
    .restart local v7    # "lPageCacheKey":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 564
    const-string/jumbo v14, "lost 2001"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Last page requires leave("

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v6

    .line 568
    .local v6, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    if-nez p3, :cond_3

    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 569
    const-string/jumbo v14, "skip page[pageAppear]"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "page name:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 553
    .end local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v7    # "lPageCacheKey":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 573
    .restart local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v7    # "lPageCacheKey":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/ut/mini/UTPageHitHelper;->disPathcherPageChangerEvent(ILjava/lang/Object;)V

    .line 574
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "pageAppear:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/ut/mini/module/UTOperationStack;->addAction(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTVariables;->getH5Url()Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "lH5Url":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 580
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/ut/mini/UTVariables;->setBackupH5Url(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    :try_start_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 586
    .local v13, "lUrl":Landroid/net/Uri;
    const-string/jumbo v14, "spm"

    invoke-virtual {v13, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 587
    .local v11, "lSpm":Ljava/lang/String;
    const-string/jumbo v14, "scm"

    invoke-virtual {v13, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 588
    .local v10, "lScm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    const-string/jumbo v15, "spm"

    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    const-string/jumbo v15, "scm"

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
    .end local v10    # "lScm":Ljava/lang/String;
    .end local v11    # "lSpm":Ljava/lang/String;
    .end local v13    # "lUrl":Landroid/net/Uri;
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 597
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, "lCurPage":Ljava/lang/String;
    sget-boolean v14, Lcom/ut/mini/extend/UTExtendSwitch;->bJTrackExtend:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_6

    .line 602
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ut/mini/extend/JTrackExtend;->getPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 603
    .local v8, "lPageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 605
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "activity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 606
    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x8

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 608
    :cond_5
    const-string/jumbo v14, "JTrack"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "getPageName:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 609
    move-object v3, v8

    .line 2205
    .end local v8    # "lPageName":Ljava/lang/String;
    :cond_6
    :goto_2
    :try_start_6
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 616
    if-nez v14, :cond_7

    .line 617
    move-object/from16 v3, p2

    .line 619
    :cond_7
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v14

    .line 3205
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 619
    if-nez v14, :cond_8

    .line 620
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v3

    .line 622
    :cond_8
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 623
    invoke-virtual {v6, v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageName(Ljava/lang/String;)V

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageAppearTimestamp(J)V

    .line 625
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStayTimstamp(J)V

    .line 626
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setRefPage(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageAppearCalled()V

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-eqz v14, :cond_9

    .line 631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 633
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-virtual {v6, v14}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setNextPageProperties(Ljava/util/Map;)V

    .line 635
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v9

    .line 636
    .local v9, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_b

    .line 637
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-virtual {v6, v14}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V

    .line 645
    .end local v9    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 646
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 648
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    if-eqz v14, :cond_a

    .line 650
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v12

    .line 651
    .local v12, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v12, :cond_a

    .line 652
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 653
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    .line 658
    .end local v12    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ut/mini/UTPageHitHelper;->_clearUTPageEventObjectCache(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 660
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/ut/mini/UTPageHitHelper;->_putUTPageEventObjectToCache(Ljava/lang/String;Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 664
    if-eqz p3, :cond_0

    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 665
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v12

    .line 666
    .restart local v12    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v12, :cond_0

    .line 667
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    goto/16 :goto_0

    .line 590
    .end local v3    # "lCurPage":Ljava/lang/String;
    .end local v12    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catch_0
    move-exception v2

    .line 591
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 639
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v3    # "lCurPage":Ljava/lang/String;
    .restart local v9    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v5, "lNewPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {v5, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 642
    invoke-virtual {v6, v5}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V

    goto :goto_3

    .line 671
    .end local v3    # "lCurPage":Ljava/lang/String;
    .end local v4    # "lH5Url":Ljava/lang/String;
    .end local v5    # "lNewPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v7    # "lPageCacheKey":Ljava/lang/String;
    .end local v9    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v14, "pageAppear"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "The page object should not be null"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .restart local v3    # "lCurPage":Ljava/lang/String;
    .restart local v4    # "lH5Url":Ljava/lang/String;
    .restart local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v7    # "lPageCacheKey":Ljava/lang/String;
    :catch_1
    move-exception v14

    goto/16 :goto_2
.end method

.method pageAppearByAuto(Landroid/app/Activity;)V
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pageDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1581
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1583
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    :cond_0
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1588
    :cond_1
    invoke-direct {p0}, Lcom/ut/mini/UTPageHitHelper;->_releaseUTPageStateObject()V

    .line 1589
    return-void
.end method

.method public declared-synchronized pageDisAppear(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1541
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    monitor-exit p0

    return-void

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V
    .locals 48
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aTrackerInstance"    # Lcom/ut/mini/UTTracker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 890
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lamu;->b()V

    .line 891
    if-eqz p1, :cond_34

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 894
    const-string/jumbo v4, "pageDisAppear"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "UT has already recorded the page disappear event on this page"

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    :goto_0
    monitor-exit p0

    return-void

    .line 898
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v28

    .line 900
    .local v28, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isPageAppearCalled()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 901
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v4

    new-instance v44, Ljava/lang/StringBuilder;

    const-string/jumbo v45, "pageDisAppear:"

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lcom/ut/mini/module/UTOperationStack;->addAction(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v44

    move-object/from16 v0, v44

    if-ne v4, v0, :cond_4

    .line 904
    const/4 v4, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatusCode()I

    move-result v44

    move/from16 v0, v44

    if-ne v4, v0, :cond_1

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 907
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v4

    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/ut/mini/UTVariables;->getBackupH5Url()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 910
    :cond_1
    const/4 v4, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatusCode()I

    move-result v44

    move/from16 v0, v44

    if-eq v4, v0, :cond_2

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isH5Called()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 912
    :cond_2
    const-string/jumbo v4, "pageDisAppear"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "UTTracker.PAGE_STATUS_CODE_302 or PageEventObject.isH5Called"

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v5

    .line 915
    .local v5, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v5, :cond_3

    .line 916
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsH5Page:Z

    .line 920
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/ut/mini/UTPageHitHelper;->_clearPageDisAppearContext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 890
    .end local v5    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .end local v28    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 927
    .restart local v28    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_4
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageAppearTimestamp()J

    move-result-wide v26

    .line 928
    .local v26, "lPageApearTimeStamp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStayTimstamp()J

    move-result-wide v46

    sub-long v32, v44, v46

    .line 930
    .local v32, "lPageStayConsume":J
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_c

    .line 931
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/ut/mini/UTPageHitHelper;->disPathcherPageChangerEvent(ILjava/lang/Object;)V

    .line 933
    invoke-static {}, Lamu;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 934
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 936
    const-string/jumbo v44, "pageDisAppear"

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uri="

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v45, v46

    invoke-static/range {v44 .. v45}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    :cond_5
    const/16 v20, 0x0

    .line 943
    .local v20, "lIsNeedRefreshUri":Z
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v22

    .line 944
    .local v22, "lPEOUrl":Landroid/net/Uri;
    const/16 v23, 0x0

    .line 945
    .local v23, "lPEOUrlString":Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 946
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    .line 948
    :cond_6
    const/16 v25, 0x0

    .line 950
    .local v25, "lPOUrlString":Ljava/lang/String;
    const/16 v24, 0x0

    .line 951
    .local v24, "lPOUrl":Landroid/net/Uri;
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 952
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_7

    .line 953
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 956
    :cond_7
    if-eqz v24, :cond_8

    .line 957
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    .line 960
    :cond_8
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    if-eqz v25, :cond_b

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 962
    :cond_a
    const/16 v20, 0x1

    .line 965
    :cond_b
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_c

    if-eqz v20, :cond_c

    .line 966
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageUrl(Landroid/net/Uri;)V

    .line 970
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "lIsNeedRefreshUri":Z
    .end local v22    # "lPEOUrl":Landroid/net/Uri;
    .end local v23    # "lPEOUrlString":Ljava/lang/String;
    .end local v24    # "lPOUrl":Landroid/net/Uri;
    .end local v25    # "lPOUrlString":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v29

    .line 971
    .local v29, "lPageName":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getRefPage()Ljava/lang/String;

    move-result-object v34

    .line 972
    .local v34, "lRefPage":Ljava/lang/String;
    if-eqz v34, :cond_d

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 973
    :cond_d
    const-string/jumbo v34, "-"

    .line 976
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 978
    .local v6, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_f

    .line 979
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 982
    .restart local v6    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    sget-boolean v4, Lcom/ut/mini/extend/UTExtendSwitch;->bJTrackExtend:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_14

    .line 985
    :try_start_3
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_14

    .line 986
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 987
    .local v16, "lArgsUri":Landroid/net/Uri;
    if-eqz v16, :cond_10

    .line 988
    const-string/jumbo v4, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "uri:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    :cond_10
    const/4 v15, 0x0

    .line 992
    .local v15, "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v4

    .line 6205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 992
    if-nez v4, :cond_11

    .line 993
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/ut/mini/extend/JTrackExtend;->getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v15

    .line 994
    const-string/jumbo v4, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "getArgsMap by pagename:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 997
    :cond_11
    if-eqz v15, :cond_12

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_13

    .line 998
    :cond_12
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/ut/mini/extend/JTrackExtend;->getArgsMap(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v15

    .line 999
    const-string/jumbo v4, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "getArgsMap by activity:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    :cond_13
    if-eqz v15, :cond_14

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 1004
    invoke-interface {v6, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1005
    const-string/jumbo v4, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "ArgsMap:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lane;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1013
    .end local v15    # "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "lArgsUri":Landroid/net/Uri;
    :cond_14
    :goto_1
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 1014
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1020
    :cond_15
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/ut/mini/IUTPageTrack;

    if-eqz v4, :cond_18

    .line 1021
    move-object/from16 v0, p1

    check-cast v0, Lcom/ut/mini/IUTPageTrack;

    move-object/from16 v37, v0

    .line 1023
    .local v37, "lUTActivity":Lcom/ut/mini/IUTPageTrack;
    invoke-interface/range {v37 .. v37}, Lcom/ut/mini/IUTPageTrack;->getReferPage()Ljava/lang/String;

    move-result-object v14

    .line 7205
    .local v14, "lARefPage":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1024
    if-nez v4, :cond_16

    .line 1025
    move-object/from16 v34, v14

    .line 1028
    :cond_16
    invoke-interface/range {v37 .. v37}, Lcom/ut/mini/IUTPageTrack;->getPageProperties()Ljava/util/Map;

    move-result-object v30

    .line 1030
    .local v30, "lPageProperties2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v30, :cond_17

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_17

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    move-object/from16 v0, v30

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 1036
    :cond_17
    invoke-interface/range {v37 .. v37}, Lcom/ut/mini/IUTPageTrack;->getPageName()Ljava/lang/String;

    move-result-object v38

    .line 8205
    .local v38, "lUTPageName":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1037
    if-nez v4, :cond_18

    .line 1038
    move-object/from16 v29, v38

    .line 1042
    .end local v14    # "lARefPage":Ljava/lang/String;
    .end local v30    # "lPageProperties2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v37    # "lUTActivity":Lcom/ut/mini/IUTPageTrack;
    .end local v38    # "lUTPageName":Ljava/lang/String;
    :cond_18
    const-string/jumbo v7, ""

    .line 1043
    .local v7, "lUrlSPM":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 1044
    .local v8, "lUrlUtParam":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 1046
    .local v9, "lUrlSCM":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v39

    .line 1047
    .local v39, "lUrl":Landroid/net/Uri;
    if-eqz v39, :cond_1f

    .line 1050
    :try_start_5
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1051
    .local v18, "lEMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v35

    .line 9205
    .local v35, "lSPM":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1053
    if-nez v4, :cond_1a

    .line 1054
    const/16 v40, 0x0

    .line 1055
    .local v40, "mIsSPMSkip":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1057
    .local v17, "lCacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1059
    const/16 v40, 0x1

    .line 1062
    :cond_19
    if-nez v40, :cond_1a

    .line 1063
    const-string/jumbo v4, "spm"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_releaseSPMCacheObj(Ljava/lang/String;)V

    .line 1068
    .end local v17    # "lCacheKey":Ljava/lang/String;
    .end local v40    # "mIsSPMSkip":Z
    :cond_1a
    move-object/from16 v7, v35

    .line 1069
    const-string/jumbo v4, "utparam"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1070
    const-string/jumbo v4, "scm"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10205
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1071
    if-nez v4, :cond_1b

    .line 1072
    const-string/jumbo v4, "scm"

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    :cond_1b
    const-string/jumbo v4, "pg1stepk"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 11205
    .local v41, "pg1stepk":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1076
    if-nez v4, :cond_1c

    .line 1077
    const-string/jumbo v4, "pg1stepk"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :cond_1c
    const-string/jumbo v4, "point"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 12205
    .local v31, "lPoint":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1082
    if-nez v4, :cond_1d

    .line 1083
    const-string/jumbo v4, "issb"

    const-string/jumbo v44, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    :cond_1d
    invoke-static/range {v39 .. v39}, Lcom/ut/mini/UTPageHitHelper;->_getOutsideTTID(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 13205
    .local v21, "lOutsideTTID":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1087
    if-nez v4, :cond_1e

    .line 1088
    invoke-static {}, Laju;->a()Laju;

    move-result-object v4

    .line 14058
    move-object/from16 v0, v21

    iput-object v0, v4, Laju;->e:Ljava/lang/String;

    .line 1091
    :cond_1e
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1f

    .line 1092
    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1100
    .end local v18    # "lEMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "lOutsideTTID":Ljava/lang/String;
    .end local v31    # "lPoint":Ljava/lang/String;
    .end local v35    # "lSPM":Ljava/lang/String;
    .end local v41    # "pg1stepk":Ljava/lang/String;
    :cond_1f
    :goto_2
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v5

    .line 1101
    .restart local v5    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v5, :cond_21

    .line 1103
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v4

    if-eqz v4, :cond_27

    sget-object v4, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v44

    move-object/from16 v0, v44

    if-ne v4, v0, :cond_27

    .line 1105
    iget-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v4, :cond_20

    .line 1106
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1108
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1136
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKey(Ljava/lang/String;)V

    .line 1137
    iget-object v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeySpmUrl(Ljava/lang/String;)V

    .line 1138
    iget-object v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mScmUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyScmUrl(Ljava/lang/String;)V

    .line 1139
    iget-object v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParam(Ljava/lang/String;)V

    .line 1140
    iget-object v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParamCnt(Ljava/lang/String;)V

    .line 1141
    const-string/jumbo v4, ""

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "mLastCacheKey:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ",mLastCacheKeySpmUrl:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ",mLastCacheKeyUtParam:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ",mLastCacheKeyUtParamCnt:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1146
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1151
    :cond_21
    :try_start_7
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v6}, Lakk;->a(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v36

    .line 14205
    .local v36, "lTPKString":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1152
    if-nez v4, :cond_22

    .line 1153
    const-string/jumbo v4, "_tpk"

    move-object/from16 v0, v36

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1162
    .end local v36    # "lTPKString":Ljava/lang/String;
    :cond_22
    :goto_4
    :try_start_8
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v44, "_allow_override_value"

    move-object/from16 v0, v44

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1164
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1165
    const-string/jumbo v4, "_allow_override_value"

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_23
    const-string/jumbo v4, "Page_Webview"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1170
    if-eqz v39, :cond_26

    .line 1171
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1172
    .local v42, "temp":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1173
    const-string/jumbo v4, "?"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 1174
    .local v11, "index":I
    move-object/from16 v43, v42

    .line 1175
    .local v43, "urlForPageName":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v11, v4, :cond_24

    .line 1176
    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 1178
    :cond_24
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1179
    move-object/from16 v29, v43

    .line 1181
    :cond_25
    const-string/jumbo v4, ""

    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "temp"

    aput-object v46, v44, v45

    const/16 v45, 0x1

    aput-object v42, v44, v45

    const/16 v45, 0x2

    const-string/jumbo v46, "urlForPageName"

    aput-object v46, v44, v45

    const/16 v45, 0x3

    aput-object v43, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    .end local v11    # "index":I
    .end local v42    # "temp":Ljava/lang/String;
    .end local v43    # "urlForPageName":Ljava/lang/String;
    :cond_26
    new-instance v19, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v19, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setReferPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setDurationOnPage(J)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 1193
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 1194
    const-string/jumbo v4, "_priority"

    const-string/jumbo v44, "4"

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 1199
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 1201
    if-nez p2, :cond_2e

    .line 1202
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v44, "Tracker instance is null,please init sdk first."

    move-object/from16 v0, v44

    invoke-direct {v4, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1094
    .end local v5    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .end local v19    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    :catch_0
    move-exception v10

    .line 1095
    .local v10, "e":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 1110
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v5    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :cond_27
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1111
    .local v13, "isFromFragment":Z
    iget-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v4, :cond_2d

    .line 1114
    const-string/jumbo v4, "1"

    const-string/jumbo v44, "skipbk"

    move-object/from16 v0, v44

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v4, :cond_28

    iget-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v4, :cond_29

    .line 1117
    :cond_28
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1118
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 1122
    :cond_29
    iget-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v4, :cond_2a

    iget-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v4, :cond_2b

    if-eqz v13, :cond_2b

    :cond_2a
    move-object/from16 v4, p0

    .line 1123
    invoke-direct/range {v4 .. v9}, Lcom/ut/mini/UTPageHitHelper;->refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :cond_2b
    :goto_5
    iget-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    if-eqz v4, :cond_2c

    .line 1132
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1134
    :cond_2c
    invoke-virtual {v5, v13}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_3

    .line 1127
    :cond_2d
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1128
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    goto :goto_5

    .line 1155
    .end local v13    # "isFromFragment":Z
    :catch_1
    move-exception v10

    .line 1156
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1204
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v19    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    :cond_2e
    invoke-virtual/range {v19 .. v19}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->build()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 1206
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_2f

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/app/Fragment;

    if-nez v4, :cond_2f

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_30

    .line 1209
    :cond_2f
    invoke-static {}, Lcom/ut/mini/internal/UTPageMappingTrack;->getInstance()Lcom/ut/mini/internal/UTPageMappingTrack;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v4, v0, v1}, Lcom/ut/mini/internal/UTPageMappingTrack;->putPageMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    .end local v5    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .end local v6    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "lUrlSPM":Ljava/lang/String;
    .end local v8    # "lUrlUtParam":Ljava/lang/String;
    .end local v9    # "lUrlSCM":Ljava/lang/String;
    .end local v19    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    .end local v26    # "lPageApearTimeStamp":J
    .end local v29    # "lPageName":Ljava/lang/String;
    .end local v32    # "lPageStayConsume":J
    .end local v34    # "lRefPage":Ljava/lang/String;
    .end local v39    # "lUrl":Landroid/net/Uri;
    :cond_30
    :goto_6
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1218
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 1226
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/ut/mini/UTPageHitHelper;->_clearPageDisAppearContext()V

    goto/16 :goto_0

    .line 1213
    :cond_31
    const-string/jumbo v4, "UT"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "Please call pageAppear first("

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ")."

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 1219
    :cond_32
    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v4

    if-eqz v4, :cond_33

    sget-object v4, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual/range {v28 .. v28}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v44

    move-object/from16 v0, v44

    if-ne v4, v0, :cond_33

    .line 1222
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    goto :goto_7

    .line 1224
    :cond_33
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_removeUTPageEventObject(Ljava/lang/Object;)V

    goto :goto_7

    .line 1228
    .end local v28    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_34
    const-string/jumbo v4, "pageDisAppear"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "The page object should not be null"

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .restart local v6    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "lPageApearTimeStamp":J
    .restart local v28    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v29    # "lPageName":Ljava/lang/String;
    .restart local v32    # "lPageStayConsume":J
    .restart local v34    # "lRefPage":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method

.method pageDisAppearByAuto(Landroid/app/Activity;)V
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 836
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V

    goto :goto_0
.end method

.method public pageSwitchBackground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    .line 1595
    :cond_0
    return-void
.end method

.method public refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "utParam"    # Ljava/lang/String;
    .param p2, "targetUtParam"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1742
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1762
    .end local p2    # "targetUtParam":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 1745
    .restart local p2    # "targetUtParam":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1746
    .local v2, "utParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1750
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p2, p1

    .line 1751
    goto :goto_0

    .line 1753
    :cond_2
    invoke-direct {p0, p2}, Lcom/ut/mini/UTPageHitHelper;->parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1754
    .local v1, "targetUtParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    move-object p2, p1

    .line 1755
    goto :goto_0

    .line 1758
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1759
    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 1760
    .end local v1    # "targetUtParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "utParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method declared-synchronized setH5Called(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 505
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 506
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setH5Called()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_0
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setLastCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKey"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setLastCacheKeyScmUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKeyScmUrl"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyScmUrl:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setLastCacheKeySpmUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKeySpmUrl"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setLastCacheKeyUtParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKeyUtParam"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setLastCacheKeyUtParamCnt(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKeyUtParamCnt"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    .line 200
    return-void
.end method

.method declared-synchronized setPageStatusCode(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageStatusCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 825
    monitor-enter p0

    if-nez p1, :cond_0

    .line 830
    :goto_0
    monitor-exit p0

    return-void

    .line 828
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 829
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStatusCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 825
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized skipBack(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 848
    monitor-enter p0

    if-nez p1, :cond_1

    .line 856
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 852
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v0

    .line 853
    .local v0, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v0, :cond_0

    .line 854
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 848
    .end local v0    # "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized skipBackForever(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "skipback"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 863
    monitor-enter p0

    if-nez p1, :cond_1

    .line 871
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 867
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v0

    .line 868
    .local v0, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v0, :cond_0

    .line 869
    iput-boolean p2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 863
    .end local v0    # "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized skipNextPageBack()V
    .locals 1

    .prologue
    .line 859
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    monitor-exit p0

    return-void

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized skipPage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 840
    monitor-enter p0

    if-nez p1, :cond_0

    .line 845
    :goto_0
    monitor-exit p0

    return-void

    .line 843
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 844
    .local v0, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setToSkipPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 840
    .end local v0    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized turnOffAutoPageTrack()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateNextPageProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 792
    .local p1, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 793
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 794
    .local v0, "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 795
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 796
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    .end local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 798
    .restart local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v3, "utparam-url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 799
    .local v1, "pageUtparam":Ljava/lang/String;
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 800
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v3, "utparam-url"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 792
    .end local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pageUtparam":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized updateNextPageUtparam(Ljava/lang/String;)V
    .locals 5
    .param p1, "aPageUtparam"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 809
    const-string/jumbo v0, ""

    .line 810
    .local v0, "pageUtparam":Ljava/lang/String;
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 811
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v4, "utparam-url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pageUtparam":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 815
    .restart local v0    # "pageUtparam":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "targetPageUtparam":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 817
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 818
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "utparam-url"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    .end local v0    # "pageUtparam":Ljava/lang/String;
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "targetPageUtparam":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 813
    .restart local v0    # "pageUtparam":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 808
    .end local v0    # "pageUtparam":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized updatePageName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 755
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 5205
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 755
    if-eqz v1, :cond_1

    .line 761
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 758
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 759
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageName(Ljava/lang/String;)V

    .line 760
    iput-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 755
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 696
    .local p2, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 697
    :cond_0
    const-string/jumbo v4, ""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "failed to update project properties"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    :goto_0
    monitor-exit p0

    return-void

    .line 700
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v0, "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 702
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v2

    .line 703
    .local v2, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v3

    .line 704
    .local v3, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 705
    invoke-virtual {v2, v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 696
    .end local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v3    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 707
    .restart local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v3    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 708
    .local v1, "lNewPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 709
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 710
    invoke-virtual {v2, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updatePageProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 687
    .local p1, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :cond_0
    monitor-exit p0

    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updatePageStatus(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageStatus"    # Lcom/ut/mini/UTPageStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 784
    monitor-enter p0

    if-nez p1, :cond_0

    .line 789
    :goto_0
    monitor-exit p0

    return-void

    .line 787
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 788
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 784
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aUrl"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 764
    monitor-enter p0

    if-nez p1, :cond_0

    .line 769
    :goto_0
    monitor-exit p0

    return-void

    .line 767
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 768
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageUrl(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 764
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageUtparam"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 732
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 4205
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 732
    if-eqz v4, :cond_1

    .line 746
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 735
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 736
    .local v0, "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, ""

    .line 737
    .local v1, "pageUtparamCnt":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 738
    const-string/jumbo v4, "utparam-cnt"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pageUtparamCnt":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 740
    .restart local v1    # "pageUtparamCnt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "targetPageUtparamCnt":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 742
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 743
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "utparam-cnt"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-virtual {p0, p1, v2}, Lcom/ut/mini/UTPageHitHelper;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 732
    .end local v0    # "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pageUtparamCnt":Ljava/lang/String;
    .end local v2    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "targetPageUtparamCnt":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
