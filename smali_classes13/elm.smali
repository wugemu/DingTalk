.class public Lelm;
.super Ljava/lang/Object;
.source "AlertNotificationManager.java"


# static fields
.field private static volatile b:Lelm;


# instance fields
.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lelm;->a:Ljava/util/HashSet;

    .line 33
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lelo;

    invoke-direct {v0}, Lelo;-><init>()V

    .line 38
    return-void
.end method

.method public static b()Lelm;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lelm;->b:Lelm;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lelm;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lelm;->b:Lelm;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lelm;

    invoke-direct {v0}, Lelm;-><init>()V

    sput-object v0, Lelm;->b:Lelm;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lelm;->b:Lelm;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v1

    .line 2392
    :try_start_0
    const-string/jumbo v0, "alert"

    const/4 v2, 0x0

    const-string/jumbo v3, "clear alert notify"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const/16 v0, 0x7a8

    :goto_0
    const/16 v2, 0x7aa

    if-gt v0, v2, :cond_0

    .line 2394
    iget-object v2, v1, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2398
    :cond_0
    return-void
.end method
