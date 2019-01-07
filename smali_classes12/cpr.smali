.class public final Lcpr;
.super Ljava/lang/Object;
.source "SmallSecretStringCache.java"


# static fields
.field private static final a:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lfq;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    sput-object v0, Lcpr;->a:Lfq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "plain"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget-object v2, Lcpr;->a:Lfq;

    monitor-enter v2

    .line 20
    :try_start_0
    sget-object v1, Lcpr;->a:Lfq;

    invoke-virtual {v1, p0}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 22
    monitor-exit v2

    goto :goto_0

    .line 27
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v1, Lcpr;->a:Lfq;

    invoke-static {p0}, Lcom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 31
    sget-object v1, Lcpr;->a:Lfq;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcpr;->a:Lfq;

    invoke-virtual {v0}, Lfq;->evictAll()V

    .line 33
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
