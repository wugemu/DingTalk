.class Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;
.super Ljava/lang/Object;
.source "H5SystemInfoPlugin.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "intent"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v10, :cond_0

    iget-object v10, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-nez v10, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v10, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    .line 76
    .local v6, "type":I
    const/4 v10, 0x2

    if-eq v6, v10, :cond_2

    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    .line 80
    :cond_2
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v12}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$100(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object v12, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v12}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$200(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 85
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$102(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;Ljava/lang/Long;)Ljava/lang/Long;

    .line 87
    const/4 v10, 0x2

    if-ne v6, v10, :cond_3

    .line 88
    :try_start_0
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v10, v11}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$302(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;[F)[F

    .line 91
    :cond_3
    const/4 v10, 0x1

    if-ne v6, v10, :cond_4

    .line 92
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v10, v11}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$402(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;[F)[F

    .line 95
    :cond_4
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$400(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$300(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F

    move-result-object v10

    if-eqz v10, :cond_0

    .line 97
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$400(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F

    move-result-object v10

    const/4 v11, 0x0

    aget v7, v10, v11

    .line 98
    .local v7, "x":F
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$400(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F

    move-result-object v10

    const/4 v11, 0x1

    aget v8, v10, v11

    .line 99
    .local v8, "y":F
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$400(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F

    move-result-object v10

    const/4 v11, 0x2

    aget v9, v10, v11

    .line 100
    .local v9, "z":F
    const-string/jumbo v10, "H5SystemInfoPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "onSensorChanged x "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " y "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " z "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$500(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Liop;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 102
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 103
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "x"

    neg-float v11, v7

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v10, "y"

    neg-float v11, v8

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v10, "z"

    neg-float v11, v9

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 108
    .local v5, "param":Lcom/alibaba/fastjson/JSONObject;
    const/4 v10, 0x3

    new-array v1, v10, [F

    .line 109
    .local v1, "calValues":[F
    const/16 v10, 0x9

    new-array v0, v10, [F

    .line 110
    .local v0, "R":[F
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v11}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$400(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v12}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$300(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F

    move-result-object v12

    invoke-static {v0, v10, v11, v12}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 111
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 112
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v11, v12

    aput v11, v1, v10

    .line 113
    const/4 v10, 0x0

    aget v10, v1, v10

    const/high16 v11, 0x43b40000    # 360.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x43b40000    # 360.0f

    rem-float/2addr v10, v11

    float-to-int v2, v10

    .line 132
    .local v2, "direction":I
    const-string/jumbo v10, "H5SystemInfoPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "direction:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v10, "direction"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$600(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 139
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$500(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Liop;

    move-result-object v10

    invoke-interface {v10}, Liop;->getBridge()Linx;

    move-result-object v10

    const-string/jumbo v11, "accelerometerChange"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v4, v12}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 144
    :cond_5
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$700(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 146
    iget-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$500(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Liop;

    move-result-object v10

    invoke-interface {v10}, Liop;->getBridge()Linx;

    move-result-object v10

    const-string/jumbo v11, "compassChange"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v5, v12}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 150
    .end local v0    # "R":[F
    .end local v1    # "calValues":[F
    .end local v2    # "direction":I
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "z":F
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "H5SystemInfoPlugin"

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
