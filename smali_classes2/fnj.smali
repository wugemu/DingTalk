.class public Lfnj;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "QuotaDataSourceImpl.java"

# interfaces
.implements Lfmw;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lfmw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lfnj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfnj;

    .prologue
    .line 23
    invoke-virtual {p0}, Lfnj;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfnj;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfnj;

    .prologue
    .line 23
    iget-object v0, p0, Lfnj;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lfnj;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnj;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/QuotaEntry;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;J)I
    .locals 8
    .param p2, "updateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfs;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .local p1, "modelList":Ljava/util/List;, "Ljava/util/List<Lcfs;>;"
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 33
    .local v6, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v0, p0, Lfnj;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnj;->k()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lfnj$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lfnj$1;-><init>(Lfnj;Ljava/util/List;JLjava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 55
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v15, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v15

    .line 64
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    .line 66
    .local v14, "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "quotaType"

    invoke-virtual {v14, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in ("

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 67
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_3

    .line 68
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 69
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v13, v1, :cond_2

    .line 70
    const-string/jumbo v1, ", "

    invoke-virtual {v14, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 67
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 72
    :cond_2
    const-string/jumbo v1, ")"

    invoke-virtual {v14, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 75
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lfnj;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnj;->k()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/user/entry/QuotaEntry;

    const-string/jumbo v4, "tb_quota_entry"

    const-class v5, Lcom/alibaba/android/user/entry/QuotaEntry;

    invoke-static {v5}, Lcom/alibaba/android/user/entry/QuotaEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 75
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 77
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 79
    :goto_3
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    new-instance v12, Lcom/alibaba/android/user/entry/QuotaEntry;

    invoke-direct {v12}, Lcom/alibaba/android/user/entry/QuotaEntry;-><init>()V

    .line 81
    .local v12, "entry":Lcom/alibaba/android/user/entry/QuotaEntry;
    invoke-virtual {v12, v10}, Lcom/alibaba/android/user/entry/QuotaEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 82
    invoke-static {v12}, Lcom/alibaba/android/user/entry/QuotaEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/QuotaEntry;)Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 84
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/QuotaEntry;
    :catch_0
    move-exception v11

    .line 85
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method
