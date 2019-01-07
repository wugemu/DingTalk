.class public Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Accelerometer.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field private static final FREQUENCY_KEY:Ljava/lang/String; = "frequency"

.field private static final SENSITIVITY_KEY:Ljava/lang/String; = "sensitivity"

.field private static final SHAKE_INTERVAL_KEY:Ljava/lang/String; = "shakeInterval"


# instance fields
.field handler:Landroid/os/Handler;

.field private mCallbackId:Ljava/lang/String;

.field private mShakeDetector:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->handler:Landroid/os/Handler;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mCallbackId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearShake(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mShakeDetector:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->stop()V

    .line 63
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 64
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 66
    return-object v0
.end method

.method public hearShake()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 73
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 74
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 33
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mShakeDetector:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mShakeDetector:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->stop()V

    .line 40
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 41
    return-void
.end method

.method public watchShake(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mCallbackId:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 49
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v3, "sensitivity"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "sensitivity":I
    const-string/jumbo v3, "frequency"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 51
    const-string/jumbo v3, "shakeInterval"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 52
    .local v2, "shakeInterval":I
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mShakeDetector:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    invoke-virtual {v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->setShakeThreshold(I)V

    .line 53
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mShakeDetector:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    invoke-virtual {v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->setShakeInterval(I)V

    .line 54
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Accelerometer;->mShakeDetector:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->start()Z

    .line 56
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    return-object v3
.end method
