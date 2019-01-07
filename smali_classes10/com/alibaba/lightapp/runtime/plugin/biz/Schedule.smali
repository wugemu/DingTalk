.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;
    }
.end annotation


# instance fields
.field private mCallbackId:Ljava/lang/String;

.field private mScheduleReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private createSchedule(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;)V
    .locals 3
    .param p1, "jsScheduleModel"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "scheduleCreateModel":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->toScheduleCreateModel()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v0

    .line 105
    :cond_1
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mScheduleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mScheduleReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action_schedule_create_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mScheduleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mScheduleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mScheduleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mScheduleReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 85
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mCallbackId:Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;

    invoke-static {v3, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;

    .line 89
    .local v2, "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->createSchedule(Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v2    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    return-object v3

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->mCallbackId:Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 35
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->registerReceiver()V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;->unregisterReceiver()V

    .line 41
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 42
    return-void
.end method
