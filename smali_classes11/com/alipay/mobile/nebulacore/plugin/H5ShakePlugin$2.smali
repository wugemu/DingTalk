.class Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;
.super Ljava/lang/Object;
.source "H5ShakePlugin.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->getListener()Landroid/hardware/SensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 163
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "intent"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/high16 v10, 0x41400000    # 12.0f

    .line 134
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 135
    .local v2, "values":[F
    aget v3, v2, v0

    .line 136
    .local v3, "x":F
    aget v4, v2, v6

    .line 137
    .local v4, "y":F
    const/4 v7, 0x2

    aget v5, v2, v7

    .line 138
    .local v5, "z":F
    const-string/jumbo v7, "H5ShakePlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onSensorChanged x "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " y "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " z "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v10

    if-gtz v7, :cond_0

    .line 141
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v10

    if-gtz v7, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v10

    if-lez v7, :cond_1

    :cond_0
    move v0, v6

    .line 142
    .local v0, "shaked":Z
    :cond_1
    if-nez v0, :cond_3

    .line 158
    :cond_2
    :goto_0
    return-void

    .line 146
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$800(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    .line 148
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Liny;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 149
    const-string/jumbo v6, "h5_use_watchShake"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v6, "no"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 151
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Liny;

    move-result-object v6

    invoke-interface {v6}, Liny;->sendSuccess()V

    .line 156
    :goto_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v6, v11}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$902(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;Liny;)Liny;

    goto :goto_0

    .line 153
    :cond_4
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Liny;

    move-result-object v6

    invoke-interface {v6, v11}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_1
.end method
