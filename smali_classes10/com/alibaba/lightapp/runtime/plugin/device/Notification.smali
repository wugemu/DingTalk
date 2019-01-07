.class public Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Notification.java"


# static fields
.field private static final ERROR_MESSAGE_RUNTIME_NOT_VISIBLE:Ljava/lang/String; = "Current runtime is invisible"

.field private static final TOAST_DURATION_LONG:I = 0x1

.field private static final TOAST_DURATION_SHORT:I


# instance fields
.field private mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;I)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->initConfrimWinCallbackValue(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Notification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->initPromptWinCallbackValue(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private initConfrimWinCallbackValue(I)Lorg/json/JSONObject;
    .locals 3
    .param p1, "buttonIndex"    # I

    .prologue
    .line 403
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "buttonIndex"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-object v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initPromptWinCallbackValue(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "buttonIndex"    # I
    .param p2, "callbackValue"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 417
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "buttonIndex"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-object v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private isCurrentRuntimeVisible()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 501
    const-string/jumbo v3, "hybrid_prevent_ui_prompt_in_home"

    invoke-static {v3, v2}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 506
    .local v0, "context":Landroid/content/Context;
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 507
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;)I

    move-result v1

    .line 509
    .local v1, "position":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 513
    .end local v1    # "position":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showActionMenu(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "cancel"    # Ljava/lang/String;
    .param p4, "callbackName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method private showActionSheet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "cancel"    # Ljava/lang/String;
    .param p4, "callbackName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method


# virtual methods
.method public actionSheet(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x3

    .line 286
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v10

    if-nez v10, :cond_0

    .line 287
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v12, "Current runtime is invisible"

    .line 288
    invoke-static {v13, v12}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 314
    :goto_0
    return-object v10

    .line 291
    :cond_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 292
    .local v0, "callbackName":Ljava/lang/String;
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 293
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "title"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v10, "cancelButton"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "cancel":Ljava/lang/String;
    const-string/jumbo v10, "style"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 297
    .local v8, "style":I
    :try_start_0
    const-string/jumbo v10, "otherButtons"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 298
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 299
    .local v5, "itemsLength":I
    new-array v4, v5, [Ljava/lang/String;

    .line 300
    .local v4, "items":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 301
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v3

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 303
    :cond_1
    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 304
    invoke-direct {p0, v9, v4, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->showActionMenu(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_2
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    goto :goto_0

    .line 306
    :cond_2
    :try_start_1
    invoke-direct {p0, v9, v4, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->showActionSheet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 308
    .end local v3    # "i":I
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "itemsLength":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 310
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 311
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public alert(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, 0x3

    const-string/jumbo v3, "Current runtime is invisible"

    .line 68
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 90
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public confirm(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, 0x3

    const-string/jumbo v3, "Current runtime is invisible"

    .line 98
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 122
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public extendModal(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, 0x3

    const-string/jumbo v3, "Current runtime is invisible"

    .line 470
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 491
    :goto_0
    return-object v0

    .line 473
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public hidePreloader(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$6;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 280
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public modal(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, 0x3

    const-string/jumbo v3, "Current runtime is invisible"

    .line 436
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 457
    :goto_0
    return-object v0

    .line 439
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$9;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->mVibrator:Landroid/os/Vibrator;

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 61
    return-void
.end method

.method public prompt(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, 0x3

    const-string/jumbo v3, "Current runtime is invisible"

    .line 130
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 151
    :goto_0
    return-object v0

    .line 133
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public showPreloader(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    const-string/jumbo v4, "Current runtime is invisible"

    .line 243
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 266
    :goto_0
    return-object v1

    .line 246
    :cond_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "text"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "showIcon"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 248
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 266
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public toast(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    .line 189
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->isCurrentRuntimeVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "Current runtime is invisible"

    .line 191
    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 234
    :goto_0
    return-object v5

    .line 195
    :cond_0
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "icon"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "icon":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "duration"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, "duration":I
    const/4 v5, 0x2

    if-le v1, v5, :cond_2

    .line 199
    const/4 v1, 0x1

    .line 203
    :goto_1
    move v0, v1

    .line 204
    .local v0, "d":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$4;

    invoke-direct {v5, p0, v4, v0, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Notification;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    :cond_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0    # "d":I
    .end local v1    # "duration":I
    .end local v3    # "icon":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 233
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 234
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 201
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "duration":I
    .restart local v3    # "icon":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public vibrate(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->mVibrator:Landroid/os/Vibrator;

    if-eqz v8, :cond_2

    .line 159
    :try_start_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "duration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 160
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "duration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 161
    .local v2, "duration":J
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 162
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 183
    .end local v2    # "duration":J
    :goto_0
    return-object v8

    .line 164
    :cond_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "pattern"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 165
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "pattern"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 166
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 167
    .local v5, "length":I
    new-array v6, v5, [J

    .line 168
    .local v6, "pattern":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 169
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v6, v4

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "repeat"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 172
    .local v7, "repeat":I
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8, v6, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 173
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "pattern":[J
    .end local v7    # "repeat":I
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 178
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x3

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/Notification;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 183
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method
