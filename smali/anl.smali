.class public final Lanl;
.super Ljava/lang/Object;
.source "UTBuildInfo.java"


# static fields
.field private static a:Lanl;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lanl;->a:Lanl;

    .line 10
    const-string/jumbo v0, "6.5.6.21"

    sput-object v0, Lanl;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized a()Lanl;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lanl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanl;->a:Lanl;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lanl;

    invoke-direct {v0}, Lanl;-><init>()V

    sput-object v0, Lanl;->a:Lanl;

    .line 20
    :cond_0
    sget-object v0, Lanl;->a:Lanl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lanl;->b:Ljava/lang/String;

    return-object v0
.end method
