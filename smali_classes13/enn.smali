.class public final Lenn;
.super Lcjk;
.source "SearchDataSourceFactory.java"


# static fields
.field static a:Lenn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcjk;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lenn;
    .locals 4

    .prologue
    .line 32
    const-class v1, Lenn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lenn;->a:Lenn;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lenn;

    invoke-direct {v0}, Lenn;-><init>()V

    .line 34
    sput-object v0, Lenn;->a:Lenn;

    sget-object v2, Lenp;->a:Ljava/lang/String;

    const-class v3, Lenp;

    invoke-virtual {v0, v2, v3}, Lenn;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    sget-object v0, Lenn;->a:Lenn;

    sget-object v2, Leno;->a:Ljava/lang/String;

    const-class v3, Leno;

    invoke-virtual {v0, v2, v3}, Lenn;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    :cond_0
    sget-object v0, Lenn;->a:Lenn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Lenm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    sget-object v1, Lenp;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lenn;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 42
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    check-cast v0, Lenm;

    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    return-object v0
.end method
