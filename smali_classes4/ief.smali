.class public Lief;
.super Ljava/lang/Object;
.source "AVDeviceStateManager.java"


# static fields
.field private static volatile b:Lief;


# instance fields
.field public a:Liey;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Liey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Liey;-><init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Landroid/content/Context;)V

    iput-object v0, p0, Lief;->a:Liey;

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)Lief;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lief;->b:Lief;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lief;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lief;->b:Lief;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lief;

    invoke-direct {v0, p0}, Lief;-><init>(Landroid/content/Context;)V

    sput-object v0, Lief;->b:Lief;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lief;->b:Lief;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
