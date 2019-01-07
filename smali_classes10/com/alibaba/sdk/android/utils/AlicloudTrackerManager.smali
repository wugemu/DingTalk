.class public Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;
.super Ljava/lang/Object;
.source "AlicloudTrackerManager.java"


# static fields
.field private static a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;


# instance fields
.field private a:Lcom/alibaba/sdk/android/utils/c;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/utils/AlicloudTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/alibaba/sdk/android/utils/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/utils/c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->a:Lcom/alibaba/sdk/android/utils/c;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 23
    const-string/jumbo v1, "kVersion"

    const-string/jumbo v2, "1.1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v1, "packageName"

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/sdk/android/utils/c;->a(Landroid/app/Application;Ljava/util/Map;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->c:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 41
    :goto_0
    monitor-exit v1

    return-object v0

    .line 38
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    .line 41
    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getTracker(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/utils/AlicloudTracker;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    const-string/jumbo v0, "AlicloudTrackerManager"

    const-string/jumbo v1, "sdkId or sdkVersion is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    goto :goto_0

    .line 60
    :cond_2
    new-instance v0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    iget-object v2, p0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->a:Lcom/alibaba/sdk/android/utils/c;

    invoke-direct {v0, v2, p1, p2}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;-><init>(Lcom/alibaba/sdk/android/utils/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
