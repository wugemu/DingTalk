.class Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;
.super Ljava/lang/Object;
.source "H5ShakePlugin.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->getListenerDelayed()Landroid/hardware/SensorEventListener;
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
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "intent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    .local v2, "currentUpdateTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)J

    move-result-wide v16

    sub-long v10, v2, v16

    .line 67
    .local v10, "timeInterval":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$100()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v10, v16

    if-gez v15, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$002(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;J)J

    .line 74
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v12, v15, v16

    .line 75
    .local v12, "x":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v13, v15, v16

    .line 76
    .local v13, "y":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v14, v15, v16

    .line 79
    .local v14, "z":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F

    move-result v15

    sub-float v4, v12, v15

    .line 80
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$300(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F

    move-result v15

    sub-float v5, v13, v15

    .line 81
    .local v5, "deltaY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$400(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F

    move-result v15

    sub-float v6, v14, v15

    .line 84
    .local v6, "deltaZ":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15, v12}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$202(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15, v13}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$302(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F

    .line 86
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15, v14}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$402(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F

    .line 88
    mul-float v15, v4, v4

    mul-float v16, v5, v5

    add-float v15, v15, v16

    mul-float v16, v6, v6

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    long-to-double v0, v10

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide v18, 0x40c3880000000000L    # 10000.0

    mul-double v8, v16, v18

    .line 89
    .local v8, "speed":D
    const-string/jumbo v15, "H5ShakePlugin"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "onSensorChanged x "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " y "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " z "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v15, "H5ShakePlugin"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "speed "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$500()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    cmpg-double v15, v8, v16

    if-ltz v15, :cond_0

    .line 95
    const-string/jumbo v15, "H5ShakePlugin"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "counts"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$600(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$600(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I

    move-result v15

    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$700()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$608(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I

    goto/16 :goto_0

    .line 101
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$602(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;I)I

    .line 103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$800(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Liny;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 106
    const-string/jumbo v15, "h5_use_watchShake"

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v15, "no"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Liny;

    move-result-object v15

    invoke-interface {v15}, Liny;->sendSuccess()V

    .line 114
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$902(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;Liny;)Liny;

    goto/16 :goto_0

    .line 110
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Liny;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_1
.end method
