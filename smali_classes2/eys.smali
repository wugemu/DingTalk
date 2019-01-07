.class public Leys;
.super Ljava/lang/Object;
.source "HeadsetButtonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leys$a;
    }
.end annotation


# static fields
.field private static volatile b:Leys;


# instance fields
.field public a:Leys$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Leys;->a:Leys$a;

    .line 75
    return-void
.end method

.method public static a()Leys;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Leys;->b:Leys;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Leys;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Leys;->b:Leys;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Leys;

    invoke-direct {v0}, Leys;-><init>()V

    sput-object v0, Leys;->b:Leys;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Leys;->b:Leys;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Leys$a;)V
    .locals 5
    .param p1, "listener"    # Leys$a;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 46
    iput-object p1, p0, Leys;->a:Leys$a;

    .line 48
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 50
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 51
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "name":Landroid/content/ComponentName;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 63
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 64
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "name":Landroid/content/ComponentName;
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Leys;->a:Leys$a;

    .line 70
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
