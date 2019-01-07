.class public Lanr;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "AdsPositionDataSourceImpl.java"

# interfaces
.implements Lanq;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lanq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic a(Lanr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lanr;

    .prologue
    .line 34
    invoke-virtual {p0}, Lanr;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lanr;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lanr;

    .prologue
    .line 34
    iget-object v0, p0, Lanr;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)I
    .locals 5
    .param p1, "adsPositionObject"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return v1

    .line 121
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 122
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lanr;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lanr;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lanr$1;

    invoke-direct {v3, p0, p1, v0}, Lanr$1;-><init>(Lanr;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v0, p0, Lanr;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lanr;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ads/db/AdsPositionEntry;

    const-string/jumbo v3, "tb_ads_position"

    const-class v4, Lcom/alibaba/android/ads/db/AdsPositionEntry;

    .line 71
    invoke-static {v4}, Lcom/alibaba/android/ads/db/AdsPositionEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 70
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 72
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v10, "adsPositionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;>;"
    if-eqz v11, :cond_1

    .line 75
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v12, Lcom/alibaba/android/ads/db/AdsPositionEntry;

    invoke-direct {v12}, Lcom/alibaba/android/ads/db/AdsPositionEntry;-><init>()V

    .line 77
    .local v12, "entry":Lcom/alibaba/android/ads/db/AdsPositionEntry;
    invoke-virtual {v12, v11}, Lcom/alibaba/android/ads/db/AdsPositionEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 78
    invoke-static {v12}, Lcom/alibaba/android/ads/db/AdsPositionEntry;->fromDBEntry(Lcom/alibaba/android/ads/db/AdsPositionEntry;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    move-result-object v9

    .line 79
    .local v9, "adsPositionObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v9    # "adsPositionObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    .end local v12    # "entry":Lcom/alibaba/android/ads/db/AdsPositionEntry;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_1
    return-object v10
.end method
