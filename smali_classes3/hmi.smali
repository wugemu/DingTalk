.class public final Lhmi;
.super Lcjk;
.source "MiniDataSourceFactory.java"


# static fields
.field static a:Lhmi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcjk;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lhmi;
    .locals 4

    .prologue
    .line 16
    const-class v1, Lhmi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmi;->a:Lhmi;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lhmi;

    invoke-direct {v0}, Lhmi;-><init>()V

    .line 18
    sput-object v0, Lhmi;->a:Lhmi;

    const-string/jumbo v2, "LocalResSourceImpl"

    const-class v3, Lhmk;

    invoke-virtual {v0, v2, v3}, Lhmi;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    :cond_0
    sget-object v0, Lhmi;->a:Lhmi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Lhme;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 24
    const-string/jumbo v1, "LocalResSourceImpl"

    invoke-virtual {p0, v1}, Lhmi;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 25
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lhme;

    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Lhme;

    .line 29
    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    :goto_0
    return-object v0

    .restart local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
