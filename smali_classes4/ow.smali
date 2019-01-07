.class public Low;
.super Ljava/lang/Object;
.source "JniGLRender.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final q:Ljava/lang/String;


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

.field public c:J

.field public d:Z

.field public e:Landroid/hardware/Camera;

.field public f:[B

.field public g:I

.field public h:I

.field i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

.field public final j:[F

.field public k:[F

.field public l:Loz;

.field public m:Loy;

.field public n:Lox;

.field public o:I

.field public p:I

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Low;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Low;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/dt/ar/core/ArJniWrapper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jniWrapper"    # Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .prologue
    const/16 v3, 0x10

    const/4 v2, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Low;->c:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Low;->d:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Low;->e:Landroid/hardware/Camera;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Low;->r:J

    .line 49
    new-array v0, v3, [F

    iput-object v0, p0, Low;->j:[F

    .line 50
    new-array v0, v3, [F

    iput-object v0, p0, Low;->k:[F

    .line 61
    iput v2, p0, Low;->o:I

    .line 62
    iput v2, p0, Low;->p:I

    .line 65
    iput-object p1, p0, Low;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 67
    instance-of v0, p1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 73
    :cond_0
    new-instance v0, Loy;

    invoke-direct {v0}, Loy;-><init>()V

    iput-object v0, p0, Low;->m:Loy;

    .line 74
    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    iput-object v0, p0, Low;->n:Lox;

    .line 77
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-wide v14, v0, Low;->c:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Low;->d:Z

    if-eqz v13, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 2428
    iget v13, v13, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c:F

    .line 207
    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 2706
    iget-object v14, v14, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 3041
    iget-object v14, v14, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 207
    invoke-virtual {v14}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetPixelHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 3706
    iget-object v14, v14, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 4041
    iget-object v14, v14, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 207
    invoke-virtual {v14}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v5, v13, v14

    .line 208
    .local v5, "top":F
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 4435
    iget v13, v13, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->d:F

    .line 208
    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 4706
    iget-object v14, v14, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 5041
    iget-object v14, v14, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 208
    invoke-virtual {v14}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetPixelHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 5706
    iget-object v14, v14, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 6041
    iget-object v14, v14, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 208
    invoke-virtual {v14}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v3, v13, v14

    .line 210
    .local v3, "bottom":F
    const/4 v4, 0x1

    .line 211
    .local v4, "isDown":Z
    cmpl-float v13, v5, v3

    if-lez v13, :cond_2

    .line 213
    move v5, v3

    .line 215
    const/4 v4, 0x0

    .line 218
    :cond_2
    if-eqz v4, :cond_5

    .line 219
    const/high16 v13, 0x43960000    # 300.0f

    sub-float v5, v3, v13

    .line 222
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "onNativeRender "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Low;->c:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    move-object/from16 v0, p0

    iget v13, v0, Low;->o:I

    if-ltz v13, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-wide v14, v0, Low;->c:J

    move-object/from16 v0, p0

    iget v0, v0, Low;->o:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Low;->p:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeOnTouch(JII)Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;

    move-result-object v2

    .line 226
    .local v2, "action":Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->l:Loz;

    .line 6074
    if-eqz v2, :cond_3

    .line 6077
    iget v14, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;->type:I

    const/16 v15, 0xd

    if-ne v14, v15, :cond_7

    .line 6078
    iget-object v13, v13, Loz;->a:Low;

    .line 6292
    iget-object v14, v13, Low;->n:Lox;

    .line 7098
    iget-boolean v13, v14, Lox;->d:Z

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v14, Lox;->d:Z

    .line 227
    :cond_3
    :goto_3
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Low;->o:I

    .line 228
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Low;->p:I

    .line 229
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Low;->p:I

    .line 232
    .end local v2    # "action":Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->l:Loz;

    iget-boolean v13, v13, Loz;->h:Z

    if-eqz v13, :cond_8

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-wide v14, v0, Low;->c:J

    float-to-int v0, v5

    move/from16 v16, v0

    float-to-int v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeRender(JII)I

    .line 237
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 240
    .local v6, "startt":J
    monitor-enter p0

    .line 241
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Low;->d:Z

    if-eqz v13, :cond_9

    .line 242
    monitor-exit p0

    goto/16 :goto_0

    .line 249
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 221
    .end local v6    # "startt":J
    :cond_5
    const/high16 v13, 0x43960000    # 300.0f

    add-float v3, v5, v13

    goto/16 :goto_1

    .line 7098
    .restart local v2    # "action":Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .line 6080
    :cond_7
    iget v14, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;->type:I

    const/16 v15, 0xc

    if-ne v14, v15, :cond_3

    .line 6081
    iget-object v14, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;->to:Ljava/lang/String;

    if-eqz v14, :cond_3

    iget-object v14, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;->to:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    .line 6082
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "dingtalk://dingtalkclient/page/link?url="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;->to:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 6083
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6088
    iget-object v13, v13, Loz;->a:Low;

    .line 7149
    iget-object v13, v13, Low;->a:Landroid/content/Context;

    .line 6088
    invoke-virtual {v13, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 235
    .end local v2    # "action":Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObjectAction;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-wide v14, v0, Low;->c:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeRender(JII)I

    goto :goto_4

    .line 243
    .restart local v6    # "startt":J
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-wide v14, v0, Low;->c:J

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->Jni_AddFrame(J)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

    move-result-object v12

    .line 244
    .local v12, "trackResults":[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v6

    .line 245
    .local v8, "t1":J
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->l:Loz;

    .line 8070
    iput-object v12, v13, Loz;->c:[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->l:Loz;

    move-object/from16 v0, p0

    iget-object v14, v0, Low;->l:Loz;

    iget-object v14, v14, Loz;->c:[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

    invoke-virtual {v13, v14}, Loz;->a([Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;)V

    .line 249
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v6

    .line 251
    .local v10, "t2":J
    move-object/from16 v0, p0

    iget-object v13, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-wide v14, v0, Low;->c:J

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeDrawEngineRender(J)I

    .line 252
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Render use time = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", t2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", t1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "frame"    # [B
    .param p2, "arg1"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Preview Frame received. Frame size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-wide v2, p0, Low;->c:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onCameraAddFrame(J[B)J

    .line 198
    iget-object v0, p0, Low;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Low;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Low;->f:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 200
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->UpdateGyroData(FFFJ)I

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v7, 0x812f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x8d65

    .line 189
    .line 1134
    iget-wide v0, p0, Low;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeInitEngine(II)J

    move-result-wide v0

    iput-wide v0, p0, Low;->c:J

    .line 1137
    iput-boolean v5, p0, Low;->d:Z

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initEngine: width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",engine address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Low;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1139
    new-instance v0, Loz;

    iget-object v1, p0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-direct {v0, p0, v1}, Loz;-><init>(Low;Lcom/alibaba/dt/ar/core/ArJniWrapper;)V

    iput-object v0, p0, Low;->l:Loz;

    .line 1141
    iget-object v0, p0, Low;->m:Loy;

    .line 2066
    new-array v1, v6, [I

    iput-object v1, v0, Loy;->g:[I

    .line 2067
    iget-object v1, v0, Loy;->g:[I

    invoke-static {v6, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2068
    iget-object v1, v0, Loy;->g:[I

    aget v1, v1, v5

    iput v1, v0, Loy;->c:I

    .line 2069
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "textureId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Loy;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2070
    iget v0, v0, Loy;->c:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2071
    const-string/jumbo v0, "glBindTexture mTextureID"

    invoke-static {v0}, Loy;->a(Ljava/lang/String;)V

    .line 2072
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2074
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2076
    const/16 v0, 0x2802

    invoke-static {v4, v0, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2078
    const/16 v0, 0x2803

    invoke-static {v4, v0, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2080
    const-string/jumbo v0, "glTexParameter"

    invoke-static {v0}, Loy;->a(Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 185
    return-void
.end method
