.class public final enum Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;
.super Ljava/lang/Enum;
.source "FCLifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

.field public static final enum INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

.field private static final TAG:Ljava/lang/String; = "FCLifeCycleManager"


# instance fields
.field private mAppStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private mLoginStateReceiver:Landroid/content/BroadcastReceiver;

.field private mReturnFromCameraActivity2Receiver:Landroid/content/BroadcastReceiver;

.field private returnFromCameraActivity2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->returnFromCameraActivity2:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->returnFromCameraActivity2:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->returnFromCameraActivity2:Z

    return p1
.end method

.method private registerAppStateListener()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 66
    .local v0, "monitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mAppStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mAppStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 101
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mAppStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 103
    :cond_0
    return-void
.end method

.method private registerLoginStateReceiver()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mLoginStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 110
    new-instance v3, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$2;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$2;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)V

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mLoginStateReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.workapp.user.logout"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v3, "com.workapp.user.login"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 134
    .local v0, "app":Landroid/app/Application;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mLoginStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "FCLifeCycleManager"

    const-string/jumbo v4, "registerLoginStateReceiver"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerReturnFromCameraActivity2Receiver()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mReturnFromCameraActivity2Receiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$3;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mReturnFromCameraActivity2Receiver:Landroid/content/BroadcastReceiver;

    .line 158
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 159
    .local v0, "app":Landroid/app/Application;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->mReturnFromCameraActivity2Receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "action_return_from_camera_activity2"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "app":Landroid/app/Application;
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "FCLifeCycleManager"

    const-string/jumbo v3, "registerReturnFromCameraActivity2Receiver"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "error"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    return-object v0
.end method


# virtual methods
.method public final init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "init start"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->registerAppStateListener()V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->registerLoginStateReceiver()V

    .line 44
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->registerReturnFromCameraActivity2Receiver()V

    .line 47
    new-instance v0, Lhhg;

    const-string/jumbo v1, "biz/new_oa_check_in"

    invoke-direct {v0, v1}, Lhhg;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lhhh;

    const-string/jumbo v1, "biz/new_oa_notify"

    invoke-direct {v0, v1}, Lhhh;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "init degraded"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->fetch()V

    .line 56
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->init()V

    .line 58
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->start()V

    goto :goto_0
.end method
