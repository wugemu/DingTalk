.class public Lbhj;
.super Ljava/lang/Object;
.source "DingPegDraftManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhj$b;,
        Lbhj$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile d:Lbhj;


# instance fields
.field public b:Lbhj$a;

.field public c:Lbhj$b;

.field private e:Lbhb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lbhj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhj;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lbhj$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbhj$b;-><init>(Lbhj;B)V

    iput-object v0, p0, Lbhj;->c:Lbhj$b;

    .line 55
    new-instance v0, Lbhc;

    invoke-direct {v0}, Lbhc;-><init>()V

    iput-object v0, p0, Lbhj;->e:Lbhb;

    .line 56
    return-void
.end method

.method static synthetic a(Lbhj;)Lbhj$a;
    .locals 1
    .param p0, "x0"    # Lbhj;

    .prologue
    .line 32
    iget-object v0, p0, Lbhj;->b:Lbhj$a;

    return-object v0
.end method

.method public static a()Lbhj;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lbhj;->d:Lbhj;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lbhj;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lbhj;->d:Lbhj;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lbhj;

    invoke-direct {v0}, Lbhj;-><init>()V

    sput-object v0, Lbhj;->d:Lbhj;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lbhj;->d:Lbhj;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lbhj;)Lbhb;
    .locals 1
    .param p0, "x0"    # Lbhj;

    .prologue
    .line 32
    iget-object v0, p0, Lbhj;->e:Lbhb;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lbhj;->a:Ljava/lang/String;

    return-object v0
.end method
