.class public Lbhk;
.super Ljava/lang/Object;
.source "DingRecentManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile c:Lbhk;


# instance fields
.field private b:Lbhd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lbhk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhk;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lbhe;

    invoke-direct {v0}, Lbhe;-><init>()V

    iput-object v0, p0, Lbhk;->b:Lbhd;

    .line 41
    return-void
.end method

.method static synthetic a(Lbhk;)Lbhd;
    .locals 1
    .param p0, "x0"    # Lbhk;

    .prologue
    .line 33
    iget-object v0, p0, Lbhk;->b:Lbhd;

    return-object v0
.end method

.method public static a()Lbhk;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lbhk;->c:Lbhk;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lbhk;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lbhk;->c:Lbhk;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    sput-object v0, Lbhk;->c:Lbhk;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lbhk;->c:Lbhk;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lbfx;)V
    .locals 1
    .param p1, "recentDingObject"    # Lbfx;

    .prologue
    .line 83
    iget-object v0, p0, Lbhk;->b:Lbhd;

    invoke-interface {v0, p1}, Lbhd;->a(Lbfx;)I

    .line 84
    return-void
.end method
