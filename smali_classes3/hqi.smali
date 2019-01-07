.class public Lhqi;
.super Ljava/lang/Object;
.source "PreloadManager.java"


# static fields
.field private static volatile b:Lhqi;


# instance fields
.field public a:Lhqj;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lhqj;

    invoke-direct {v0}, Lhqj;-><init>()V

    iput-object v0, p0, Lhqi;->a:Lhqj;

    .line 34
    iget-object v0, p0, Lhqi;->a:Lhqj;

    .line 1013
    iget-object v1, v0, Lhqj;->a:Lhqh;

    if-nez v1, :cond_0

    .line 1014
    new-instance v1, Lhqk;

    invoke-direct {v1}, Lhqk;-><init>()V

    iput-object v1, v0, Lhqj;->a:Lhqh;

    .line 1016
    :cond_0
    iget-object v0, v0, Lhqj;->a:Lhqh;

    .line 35
    return-void
.end method

.method public static a()Lhqi;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lhqi;->b:Lhqi;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lhqi;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lhqi;->b:Lhqi;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lhqi;

    invoke-direct {v0}, Lhqi;-><init>()V

    sput-object v0, Lhqi;->b:Lhqi;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lhqi;->b:Lhqi;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .param p1, "preloadInstance"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    iget-object v1, p0, Lhqi;->a:Lhqj;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lhqi;->a:Lhqj;

    .line 2020
    iget-object v0, v1, Lhqj;->a:Lhqh;

    .line 94
    .local v0, "preloadInterface":Lhqh;
    if-eqz p1, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lhqh;->a(Ljava/lang/Object;)I

    move-result v1

    .line 98
    .end local v0    # "preloadInterface":Lhqh;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Z
    .locals 2
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 61
    iget-object v1, p0, Lhqi;->a:Lhqj;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lhqi;->a:Lhqj;

    .line 1020
    iget-object v0, v1, Lhqj;->a:Lhqh;

    .line 63
    .local v0, "preloadInterface":Lhqh;
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lhqh;->b(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Z

    move-result v1

    .line 68
    .end local v0    # "preloadInterface":Lhqh;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 102
    iget-object v1, p0, Lhqi;->a:Lhqj;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lhqi;->a:Lhqj;

    .line 3020
    iget-object v0, v1, Lhqj;->a:Lhqh;

    .line 104
    .local v0, "preloadInterface":Lhqh;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lhqh;->a()V

    .line 108
    .end local v0    # "preloadInterface":Lhqh;
    :cond_0
    return-void
.end method
