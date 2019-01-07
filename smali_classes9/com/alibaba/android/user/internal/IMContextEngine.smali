.class public Lcom/alibaba/android/user/internal/IMContextEngine;
.super Ljava/lang/Object;
.source "IMContextEngine.java"


# static fields
.field static a:Lcom/alibaba/android/user/internal/IMContextEngine;


# instance fields
.field public b:Landroid/content/Context;

.field private c:J

.field private d:Lfbn;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->b:Landroid/content/Context;

    .line 56
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/android/user/internal/IMContextEngine;
    .locals 3

    .prologue
    .line 41
    const-class v1, Lcom/alibaba/android/user/internal/IMContextEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/android/user/internal/IMContextEngine;->a:Lcom/alibaba/android/user/internal/IMContextEngine;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alibaba/android/user/internal/IMContextEngine;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/user/internal/IMContextEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/android/user/internal/IMContextEngine;->a:Lcom/alibaba/android/user/internal/IMContextEngine;

    .line 45
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/internal/IMContextEngine;->a:Lcom/alibaba/android/user/internal/IMContextEngine;
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

.method public static d()J
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a(J)Z
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 133
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 62
    .line 1100
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    .line 62
    iput-wide v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->c:J

    .line 63
    iget-wide v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 64
    iget-wide v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->c:J

    .line 2069
    invoke-static {}, Loh;->a()Loh;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Loh;->b_(Ljava/lang/String;)V

    .line 2074
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    if-nez v0, :cond_0

    .line 2075
    new-instance v0, Lfbn;

    invoke-direct {v0}, Lfbn;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    invoke-virtual {v0}, Lfbn;->a()Z

    .line 66
    :cond_1
    return-void
.end method

.method public final declared-synchronized b(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 96
    .line 2082
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    if-nez v0, :cond_0

    .line 2083
    new-instance v0, Lfbn;

    invoke-direct {v0}, Lfbn;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    .line 2219
    iget-object v0, v0, Lfbn;->a:Lfbn$a;

    invoke-virtual {v0}, Lfbn$a;->a()V

    .line 2086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;

    .line 97
    return-void
.end method

.method public final declared-synchronized c(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lfbn;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lfbn;

    invoke-direct {v0}, Lfbn;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->d:Lfbn;

    return-object v0
.end method

.method public final declared-synchronized f()Z
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->e()Lfmp;

    move-result-object v1

    invoke-interface {v1}, Lfmp;->a()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "t":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/alibaba/android/user/internal/IMContextEngine;->e:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v0    # "t":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
