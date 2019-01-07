.class public Lehy;
.super Ljava/lang/Object;
.source "FocusNotificationManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile d:Lehy;


# instance fields
.field public b:Landroid/content/Context;

.field private c:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lehy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lehy;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lehy;->b:Landroid/content/Context;

    .line 56
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lehy;->c:Landroid/app/NotificationManager;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;)Lehy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lehy;->d:Lehy;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lehy;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lehy;->d:Lehy;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lehy;

    invoke-direct {v0, p0}, Lehy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lehy;->d:Lehy;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lehy;->d:Lehy;

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
