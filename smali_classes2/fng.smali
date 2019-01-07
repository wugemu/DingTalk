.class public Lfng;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "OrgEmployeeClosestDataSourceImpl.java"

# interfaces
.implements Lfmt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lfng;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfng;

    .prologue
    .line 19
    invoke-virtual {p0}, Lfng;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfng;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfng;

    .prologue
    .line 19
    iget-object v0, p0, Lfng;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v0, p0, Lfng;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfng;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    const-string/jumbo v3, "tb_org_employee_closest"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;>;"
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 25
    iget-object v0, p0, Lfng;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfng;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    const-string/jumbo v3, "tb_org_employee_closest"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v7

    .line 52
    :goto_0
    return v0

    .line 29
    :cond_1
    const/4 v0, 0x1

    new-array v6, v0, [I

    aput v7, v6, v7

    .line 30
    .local v6, "result":[I
    iget-object v0, p0, Lfng;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfng;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfng$1;

    invoke-direct {v2, p0, p1, v6}, Lfng$1;-><init>(Lfng;Ljava/util/List;[I)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 52
    aget v0, v6, v7

    goto :goto_0
.end method

.method public final a(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    .locals 13
    .param p1, "uid"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 62
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v7

    .line 65
    :cond_1
    iget-object v0, p0, Lfng;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfng;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    const-string/jumbo v3, "tb_org_employee_closest"

    const-class v4, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    .line 66
    invoke-static {v4}, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "uid"

    aput-object v6, v5, v11

    const-string/jumbo v6, " = ?"

    aput-object v6, v5, v8

    .line 67
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    .line 68
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    move-object v8, v7

    .line 65
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 69
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 71
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    new-instance v10, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    invoke-direct {v10}, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;-><init>()V

    .line 73
    .local v10, "entry":Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 74
    invoke-virtual {v10}, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->toOrgEmployeeClosestObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10    # "entry":Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
