.class public Lcom/alibaba/lightapp/runtime/service/LightAppService;
.super Landroid/app/Service;
.source "LightAppService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Boolean;


# instance fields
.field private c:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/lightapp/runtime/service/LightAppService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->d:I

    .line 141
    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    iget v0, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->d:I

    if-gtz v0, :cond_1

    .line 76
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const-string/jumbo v2, "give up service start retry"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->b:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->stopSelf()V

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/service/LightAppService$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService$1;-><init>(Lcom/alibaba/lightapp/runtime/service/LightAppService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1116
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1117
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "health_step_count"

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_key_step_config_status"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1123
    :goto_1
    if-eqz v0, :cond_4

    .line 1124
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->c:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->startStepCount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->b:Ljava/lang/Boolean;

    .line 1132
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->stopSelf()V

    goto :goto_0

    .line 1120
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_key_step_config_status"

    invoke-static {v0, v1, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    .line 1128
    :cond_4
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const-string/jumbo v2, "Config switch off"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/service/LightAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/service/LightAppService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->a()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->c:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .line 71
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->a()V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    .line 1136
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->c:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService;->c:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->stopStepCount()V

    .line 102
    :cond_0
    sget-object v1, Lcom/alibaba/lightapp/runtime/service/LightAppService;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2046
    :try_start_0
    const-string/jumbo v1, "alarm"

    .line 2047
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 2048
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2049
    const/16 v3, 0xd

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 2050
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 2055
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/alibaba/lightapp/runtime/service/LightAppService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2056
    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2050
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "step"

    const-string/jumbo v2, "stepcount"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CoreService destroy error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
