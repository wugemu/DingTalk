.class public final Ldhe;
.super Lcjk;
.source "EmotionDatasourceFactory.java"


# static fields
.field static a:Ldhe;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcjk;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Ldhe;
    .locals 4

    .prologue
    .line 14
    const-class v1, Ldhe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldhe;->a:Ldhe;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ldhe;

    invoke-direct {v0}, Ldhe;-><init>()V

    .line 16
    sput-object v0, Ldhe;->a:Ldhe;

    const-class v2, Ldhh;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ldhh;

    invoke-virtual {v0, v2, v3}, Ldhe;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    sget-object v0, Ldhe;->a:Ldhe;

    const-class v2, Ldhj;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ldhj;

    invoke-virtual {v0, v2, v3}, Ldhe;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    sget-object v0, Ldhe;->a:Ldhe;

    const-class v2, Ldhf;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ldhf;

    invoke-virtual {v0, v2, v3}, Ldhe;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    :cond_0
    sget-object v0, Ldhe;->a:Ldhe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Ldhg;
    .locals 1

    .prologue
    .line 28
    const-class v0, Ldhh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldhe;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    check-cast v0, Ldhg;

    return-object v0
.end method

.method public final c()Ldhi;
    .locals 1

    .prologue
    .line 32
    const-class v0, Ldhj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldhe;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    check-cast v0, Ldhi;

    return-object v0
.end method

.method public final d()Ldhd;
    .locals 1

    .prologue
    .line 36
    const-class v0, Ldhf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldhe;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    check-cast v0, Ldhd;

    return-object v0
.end method
