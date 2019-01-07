.class public final Leya;
.super Ljava/lang/Object;
.source "CloudCallAPIImpl.java"


# static fields
.field private static volatile a:Leya;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Leya;->a:Leya;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static declared-synchronized a()Leya;
    .locals 2

    .prologue
    .line 40
    const-class v1, Leya;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leya;->a:Leya;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Leya;

    invoke-direct {v0}, Leya;-><init>()V

    sput-object v0, Leya;->a:Leya;

    .line 43
    :cond_0
    sget-object v0, Leya;->a:Leya;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
