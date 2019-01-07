.class public final Lfmz;
.super Lcjk;
.source "UserDataSourceFactory.java"


# static fields
.field static a:Lfmz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcjk;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lfmz;
    .locals 4

    .prologue
    .line 41
    const-class v1, Lfmz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfmz;->a:Lfmz;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lfmz;

    invoke-direct {v0}, Lfmz;-><init>()V

    .line 43
    sput-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfne;->a:Ljava/lang/String;

    const-class v3, Lfne;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfnl;->a:Ljava/lang/String;

    const-class v3, Lfnl;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfnm;->a:Ljava/lang/String;

    const-class v3, Lfnm;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfnb;->a:Ljava/lang/String;

    const-class v3, Lfnb;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfni;->a:Ljava/lang/String;

    const-class v3, Lfni;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfnc;->a:Ljava/lang/String;

    const-class v3, Lfnc;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfnd;->a:Ljava/lang/String;

    const-class v3, Lfnd;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfnj;->a:Ljava/lang/String;

    const-class v3, Lfnj;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    sget-object v0, Lfmz;->a:Lfmz;

    sget-object v2, Lfnh;->a:Ljava/lang/String;

    const-class v3, Lfnh;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    sget-object v0, Lfmz;->a:Lfmz;

    const-string/jumbo v2, "OrgEmployeeClosestDataSourceImpl"

    const-class v3, Lfng;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    sget-object v0, Lfmz;->a:Lfmz;

    const-string/jumbo v2, "SafeOplogDataSourceImpl"

    const-class v3, Lfnk;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    sget-object v0, Lfmz;->a:Lfmz;

    const-string/jumbo v2, "LoginUserDataSourceImpl"

    const-class v3, Lfnf;

    invoke-virtual {v0, v2, v3}, Lfmz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    :cond_0
    sget-object v0, Lfmz;->a:Lfmz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Lfmr;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    sget-object v1, Lfne;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 62
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmr;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final c()Lfna;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    sget-object v1, Lfnm;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 73
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfna;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final d()Lfmo;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    sget-object v1, Lfnb;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 78
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmo;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final e()Lfmp;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 87
    sget-object v1, Lfnc;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 88
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmp;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final f()Lfmq;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 92
    sget-object v1, Lfnd;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 93
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmq;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final g()Lfmw;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 97
    sget-object v1, Lfnj;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 98
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmw;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final h()Lfmu;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 102
    sget-object v1, Lfnh;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 103
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmu;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final i()Lfmt;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v1, "OrgEmployeeClosestDataSourceImpl"

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 108
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmt;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final j()Lfmx;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 112
    const-string/jumbo v1, "SafeOplogDataSourceImpl"

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 113
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfmx;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method

.method public final k()Lfms;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 117
    const-string/jumbo v1, "LoginUserDataSourceImpl"

    invoke-virtual {p0, v1}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 118
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lfms;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method
