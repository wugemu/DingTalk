.class public Leyh;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "UserMobileDataSourceImpl.java"


# static fields
.field static a:Leyh;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Leyh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leyh;->b:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Leyh;->a:Leyh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 57
    return-void
.end method

.method public static a()Leyh;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Leyh;->a:Leyh;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Leyg;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Leyh;->a:Leyh;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Leyh;

    invoke-direct {v0}, Leyh;-><init>()V

    sput-object v0, Leyh;->a:Leyh;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Leyh;->a:Leyh;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Leyh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leyh;

    .prologue
    .line 38
    invoke-virtual {p0}, Leyh;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Leyh;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Leyh;

    .prologue
    .line 38
    iget-object v0, p0, Leyh;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Leyh;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "mobileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    const/4 v1, 0x0

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    :goto_0
    return v1

    .line 64
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 65
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Leyh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Leyh;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leyh$1;

    invoke-direct {v3, p0, p1, v0}, Leyh$1;-><init>(Leyh;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 146
    iget-object v0, p0, Leyh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Leyh;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    const-string/jumbo v3, "tbusermobile"

    const-class v4, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 148
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    if-eqz v9, :cond_1

    .line 151
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v10, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    invoke-direct {v10}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;-><init>()V

    .line 153
    .local v10, "entry":Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 154
    invoke-static {v10}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->fromeDbEntry(Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    .end local v10    # "entry":Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    return-object v11
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 107
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v12

    .line 108
    .local v12, "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "user_uid"

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in ("

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 109
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 110
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v11, v0, :cond_0

    .line 112
    const-string/jumbo v0, ","

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 109
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const-string/jumbo v0, ") "

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p0, Leyh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Leyh;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    const-string/jumbo v3, "tbusermobile"

    const-class v4, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    move-object v8, v6

    .line 118
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 120
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v13, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;>;"
    if-eqz v9, :cond_3

    .line 123
    :goto_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    new-instance v10, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    invoke-direct {v10}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;-><init>()V

    .line 125
    .local v10, "entry":Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 126
    invoke-static {v10}, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;->fromeDbEntry(Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 129
    .end local v10    # "entry":Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_3
    return-object v13
.end method

.method public final c(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v6, v8

    .line 142
    :cond_1
    return v6

    .line 138
    :cond_2
    const/4 v6, 0x0

    .line 139
    .local v6, "result":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 140
    .local v7, "uid":Ljava/lang/Long;
    iget-object v0, p0, Leyh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Leyh;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/teleconf/sdk/datasource/UserMobileEntry;

    const-string/jumbo v3, "tbusermobile"

    const-string/jumbo v4, "user_uid = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 141
    goto :goto_0
.end method
