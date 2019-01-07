.class Lcom/alivc/component/capture/VideoPusher$4;
.super Ljava/lang/Object;
.source "VideoPusher.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/VideoPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 949
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    const v11, 0x3f19999a    # 0.6f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 897
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v3}, Lcom/alivc/component/capture/VideoPusher;->isPreviewRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v3

    if-eqz v3, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v9, :cond_4

    .line 901
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1200(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    .line 902
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1202(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 903
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1302(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 904
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1402(Lcom/alivc/component/capture/VideoPusher;F)F

    goto :goto_0

    .line 907
    :cond_2
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1200(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 908
    .local v0, "deltaX":F
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1300(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 909
    .local v1, "deltaY":F
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1400(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 910
    .local v2, "deltaZ":F
    cmpl-float v3, v0, v7

    if-gtz v3, :cond_3

    cmpl-float v3, v1, v7

    if-gtz v3, :cond_3

    cmpl-float v3, v2, v7

    if-lez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1500(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 911
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1600(Lcom/alivc/component/capture/VideoPusher;)V

    .line 912
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1202(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 913
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1302(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 914
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1402(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 917
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "deltaZ":F
    :cond_4
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 918
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1700(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v3, v3, v6

    if-nez v3, :cond_5

    .line 919
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1702(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 920
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1802(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 921
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1902(Lcom/alivc/component/capture/VideoPusher;F)F

    goto/16 :goto_0

    .line 924
    :cond_5
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1700(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 925
    .restart local v0    # "deltaX":F
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1800(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 926
    .restart local v1    # "deltaY":F
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1900(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 928
    .restart local v2    # "deltaZ":F
    mul-float v3, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v3, v6

    mul-float v6, v2, v2

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 929
    .local v4, "value":D
    const-wide v6, 0x3ff6666660000000L    # 1.399999976158142

    cmpl-double v3, v4, v6

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1500(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 930
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1600(Lcom/alivc/component/capture/VideoPusher;)V

    .line 931
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1702(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 932
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1802(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 933
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1902(Lcom/alivc/component/capture/VideoPusher;F)F

    goto/16 :goto_0

    .line 937
    :cond_6
    cmpl-float v3, v0, v11

    if-gtz v3, :cond_7

    cmpl-float v3, v1, v11

    if-gtz v3, :cond_7

    cmpl-float v3, v2, v11

    if-lez v3, :cond_0

    :cond_7
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1500(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 938
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$1600(Lcom/alivc/component/capture/VideoPusher;)V

    .line 939
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1702(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 940
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1802(Lcom/alivc/component/capture/VideoPusher;F)F

    .line 941
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    invoke-static {v3, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1902(Lcom/alivc/component/capture/VideoPusher;F)F

    goto/16 :goto_0
.end method
