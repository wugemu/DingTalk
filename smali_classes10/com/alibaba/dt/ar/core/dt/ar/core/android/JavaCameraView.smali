.class public Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;
.super Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;
.source "JavaCameraView.java"

# interfaces
.implements Lgwv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView$a;
    }
.end annotation


# instance fields
.field protected m:Landroid/hardware/Camera;

.field protected n:F

.field private o:Landroid/graphics/SurfaceTexture;

.field private p:Z

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->n:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->p:Z

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->q:J

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->r:Z

    .line 70
    invoke-virtual {p0, p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setCvCameraViewListener(Lgwv;)V

    .line 71
    return-void
.end method

.method private b(II)Z
    .locals 23
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 75
    const/16 v21, 0x1

    .line 76
    .local v21, "result":Z
    monitor-enter p0

    .line 77
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    .line 79
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 82
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    if-nez v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_2

    .line 88
    const/4 v14, 0x0

    .line 89
    .local v14, "connected":Z
    const/4 v12, 0x0

    .local v12, "camIdx":I
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    if-ge v12, v5, :cond_2

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Trying to open camera with new open("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :try_start_3
    invoke-static {v12}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    const/4 v14, 0x1

    .line 97
    :goto_2
    if-nez v14, :cond_2

    .line 89
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 83
    .end local v12    # "camIdx":I
    .end local v14    # "connected":Z
    :catch_0
    move-exception v15

    .line 84
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v5, "JavaCameraView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Camera is not available (in use or does not exist): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lpe;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 94
    .restart local v12    # "camIdx":I
    .restart local v14    # "connected":Z
    :catch_1
    move-exception v15

    .line 95
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string/jumbo v5, "JavaCameraView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Camera #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "failed to open: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lpe;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 101
    .end local v12    # "camIdx":I
    .end local v14    # "connected":Z
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->i:I

    move/from16 v17, v0

    .line 103
    .local v17, "localCameraIndex":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->i:I

    const/16 v6, 0x63

    if-ne v5, v6, :cond_4

    .line 105
    new-instance v13, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v13}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 106
    .local v13, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v12, 0x0

    .restart local v12    # "camIdx":I
    :goto_3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    if-ge v12, v5, :cond_1

    .line 107
    invoke-static {v12, v13}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 108
    iget v5, v13, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_3

    .line 109
    move/from16 v17, v12

    .line 124
    .end local v12    # "camIdx":I
    .end local v13    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    :goto_4
    const/16 v5, 0x63

    move/from16 v0, v17

    if-ne v0, v5, :cond_6

    .line 125
    const-string/jumbo v5, "JavaCameraView"

    const-string/jumbo v6, "Back camera not found!"

    invoke-static {v5, v6}, Lpe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v17    # "localCameraIndex":I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    if-nez v5, :cond_8

    .line 140
    const/4 v5, 0x0

    monitor-exit p0

    .line 204
    :goto_6
    return v5

    .line 106
    .restart local v12    # "camIdx":I
    .restart local v13    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .restart local v17    # "localCameraIndex":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 113
    .end local v12    # "camIdx":I
    .end local v13    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->i:I

    const/16 v6, 0x62

    if-ne v5, v6, :cond_1

    .line 115
    new-instance v13, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v13}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 116
    .restart local v13    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v12, 0x0

    .restart local v12    # "camIdx":I
    :goto_7
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    if-ge v12, v5, :cond_1

    .line 117
    invoke-static {v12, v13}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 118
    iget v5, v13, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 119
    move/from16 v17, v12

    .line 120
    goto :goto_4

    .line 116
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 126
    .end local v12    # "camIdx":I
    .end local v13    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_6
    const/16 v5, 0x62

    move/from16 v0, v17

    if-ne v0, v5, :cond_7

    .line 127
    const-string/jumbo v5, "JavaCameraView"

    const-string/jumbo v6, "Front camera not found!"

    invoke-static {v5, v6}, Lpe;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 129
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Trying to open camera with new open("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    :try_start_6
    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 132
    :catch_2
    move-exception v15

    .line 133
    .restart local v15    # "e":Ljava/lang/RuntimeException;
    :try_start_7
    const-string/jumbo v5, "JavaCameraView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Camera #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "failed to open: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lpe;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 144
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "localCameraIndex":I
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    .line 146
    .local v19, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    .line 148
    .local v22, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v22, :cond_c

    .line 150
    new-instance v5, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView$a;

    invoke-direct {v5}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView$a;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->a(Ljava/util/List;Lgww;II)Lgwy;

    move-result-object v16

    .line 152
    .local v16, "frameSize":Lgwy;
    const/16 v5, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Set preview size to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v6, v0, Lgwy;->a:D

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-wide v6, v0, Lgwy;->b:D

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    move-object/from16 v0, v16

    iget-wide v6, v0, Lgwy;->a:D

    double-to-int v5, v6

    move-object/from16 v0, v16

    iget-wide v6, v0, Lgwy;->b:D

    double-to-int v6, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 156
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_9

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v6, "GT-I9100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 157
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 159
    :cond_9
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v20, v0

    .line 160
    .local v20, "range":[I
    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 161
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    .line 162
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 163
    .local v4, "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_a

    const-string/jumbo v5, "continuous-picture"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 164
    const-string/jumbo v5, "continuous-picture"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 167
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    .line 170
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->c:I

    .line 171
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->d:I

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 1706
    iget-object v5, v5, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 2041
    iget-object v5, v5, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 173
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->c:I

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->SetWidthHeight(IIII)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getRenderer()Low;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    .line 2081
    iput-object v6, v5, Low;->e:Landroid/hardware/Camera;

    .line 2082
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    iput v6, v5, Low;->g:I

    .line 2083
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    iput v6, v5, Low;->h:I

    .line 2085
    iget v6, v5, Low;->g:I

    iget v7, v5, Low;->h:I

    mul-int/2addr v6, v7

    .line 2086
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x8

    .line 2087
    new-array v6, v6, [B

    iput-object v6, v5, Low;->f:[B

    .line 2089
    iget-object v6, v5, Low;->e:Landroid/hardware/Camera;

    iget-object v7, v5, Low;->f:[B

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 2090
    iget-object v6, v5, Low;->e:Landroid/hardware/Camera;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getRenderer()Low;

    move-result-object v9

    .line 2145
    iget-object v5, v9, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-wide v6, v9, Low;->c:J

    iget v8, v9, Low;->h:I

    iget v9, v9, Low;->g:I

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeSetGlobalParam(JIIII)I

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->f()V

    .line 179
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_b

    .line 180
    new-instance v5, Landroid/graphics/SurfaceTexture;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->o:Landroid/graphics/SurfaceTexture;

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 188
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 195
    .end local v4    # "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "frameSize":Lgwy;
    .end local v19    # "params":Landroid/hardware/Camera$Parameters;
    .end local v20    # "range":[I
    .end local v22    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_9
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    .line 198
    .restart local v19    # "params":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setUpCamera(Landroid/hardware/Camera$Parameters;)V

    .line 199
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->n:F

    .line 200
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->n:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 2706
    iget-object v5, v5, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 3041
    iget-object v5, v5, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 201
    invoke-virtual {v5}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameWidth()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->l:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 3706
    iget-object v5, v5, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e:Lgwu;

    .line 4041
    iget-object v5, v5, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 201
    invoke-virtual {v5}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameHeight()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    .line 200
    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v18, v0

    .line 202
    .local v18, "mVerticalFov":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->k:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lgwx;->a(Ljava/util/ArrayList;ILjava/lang/Object;)V

    move/from16 v5, v21

    .line 204
    goto/16 :goto_6

    .line 183
    .end local v18    # "mVerticalFov":F
    .restart local v4    # "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "frameSize":Lgwy;
    .restart local v20    # "range":[I
    .restart local v22    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_8

    .line 191
    .end local v4    # "FocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "frameSize":Lgwy;
    .end local v19    # "params":Landroid/hardware/Camera$Parameters;
    .end local v20    # "range":[I
    .end local v22    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_3
    move-exception v15

    .line 192
    .local v15, "e":Ljava/lang/Exception;
    const/16 v21, 0x0

    .line 193
    :try_start_b
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_9

    .line 190
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v22    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_9
.end method

.method private setUpCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setRenderMode(I)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->a:Low;

    sget-object v4, Lcom/alibaba/ailabs/ar/androidar/jnigl/Rotation;->ROTATION_90:Lcom/alibaba/ailabs/ar/androidar/jnigl/Rotation;

    .line 4264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRotation rotation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",flipHorizontal= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",flipVertical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4265
    iget-object v1, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-wide v2, v0, Low;->c:J

    invoke-virtual {v4}, Lcom/alibaba/ailabs/ar/androidar/jnigl/Rotation;->asInt()I

    move-result v4

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeSetRotate(JIZZ)I

    .line 230
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 296
    .local v0, "parameter":Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_1

    .line 297
    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 301
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 299
    :cond_1
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final a(II)Z
    .locals 22
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 241
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->b(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const/4 v2, 0x0

    .line 249
    :goto_0
    return v2

    .line 247
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getRenderer()Low;

    move-result-object v16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->n:F

    .line 5118
    move-object/from16 v0, v16

    iget-object v2, v0, Low;->j:[F

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    iget-object v6, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 5119
    invoke-virtual {v6}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move-object/from16 v0, v16

    iget-object v6, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-virtual {v6}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x461c4000    # 10000.0f

    .line 5118
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 5122
    move-object/from16 v0, v16

    iget-object v5, v0, Low;->k:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 5127
    move-object/from16 v0, v16

    iget-object v3, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, v16

    iget-wide v0, v0, Low;->c:J

    move-wide/from16 v20, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v4

    const/high16 v4, 0x43340000    # 180.0f

    div-float v15, v2, v4

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    iget-object v4, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 5130
    invoke-virtual {v4}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    move-object/from16 v0, v16

    iget-object v4, v0, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-virtual {v4}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->GetFrameHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v16, v2, v4

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x461c4000    # 10000.0f

    move-wide/from16 v4, v20

    .line 5127
    invoke-virtual/range {v3 .. v18}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->SetViewAndProject(JFFFFFFFFFFFFF)I

    .line 249
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    .line 5264
    monitor-enter p0

    .line 5265
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 5266
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 5267
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 5269
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 5271
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->m:Landroid/hardware/Camera;

    .line 5275
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastTargetTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->q:J

    return-wide v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 309
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 310
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getRenderer()Low;

    move-result-object v3

    .line 6176
    monitor-enter v3

    .line 6177
    :try_start_0
    iput v0, v3, Low;->o:I

    .line 6178
    iput v1, v3, Low;->p:I

    .line 6179
    monitor-exit v3

    .line 312
    const/4 v2, 0x1

    .line 314
    :goto_0
    return v2

    .line 6179
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setLastTargetTime(J)V
    .locals 1
    .param p1, "lastTargetTime"    # J

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->q:J

    .line 324
    return-void
.end method

.method public setUseMobileNetwork(Z)V
    .locals 0
    .param p1, "useMobileNetwork"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->r:Z

    .line 332
    return-void
.end method
