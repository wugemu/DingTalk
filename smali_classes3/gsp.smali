.class public final Lgsp;
.super Ljava/lang/Object;
.source "SmileFaceDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lhyz;[BLandroid/hardware/Camera;I)F
    .locals 9
    .param p0, "faceRecognizer"    # Lhyz;
    .param p1, "yuv"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "angle"    # I

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/high16 v3, -0x40800000    # -1.0f

    .line 83
    :goto_0
    return v3

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v3

    invoke-virtual {v3}, Lgsd;->e()Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 59
    .local v1, "previewsize":Landroid/hardware/Camera$Size;
    if-nez v1, :cond_1

    .line 61
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 67
    :cond_1
    :try_start_2
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {p0, p1, v3, v4, p3}, Lhyz;->a([BIII)Lhza;

    move-result-object v2

    .line 73
    .local v2, "smileDetectResult":Lhza;
    invoke-virtual {v2}, Lhza;->b()I

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    const-string/jumbo v3, "facebox"

    const-string/jumbo v4, "SmileFaceDetector"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[Face] Smile detect failed, result="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 75
    invoke-virtual {v2}, Lhza;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " width="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " height="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " angle="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 74
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "previewsize":Landroid/hardware/Camera$Size;
    .end local v2    # "smileDetectResult":Lhza;
    :goto_1
    const/high16 v3, -0x40800000    # -1.0f

    goto/16 :goto_0

    .line 62
    .restart local v1    # "previewsize":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "facebox"

    const-string/jumbo v4, "SmileFaceDetector"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[Face] Smile detect getPreviewSize err "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/high16 v3, -0x40800000    # -1.0f

    goto/16 :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "smileDetectResult":Lhza;
    :cond_2
    invoke-virtual {v2}, Lhza;->a()F
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto/16 :goto_0

    .line 80
    .end local v1    # "previewsize":Landroid/hardware/Camera$Size;
    .end local v2    # "smileDetectResult":Lhza;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "facebox"

    const-string/jumbo v4, "SmileFaceDetector"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[Face] Smile detect err "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lhyz;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 30
    const-class v5, Lgsp;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lhyy;->a()Lhyz;

    move-result-object v1

    .line 32
    .local v1, "faceRecognizer":Lhyz;
    if-nez v1, :cond_1

    .line 33
    const-string/jumbo v6, "facebox"

    const-string/jumbo v7, "SmileFaceDetector"

    const-string/jumbo v8, "[Face] Init FaceRecognizer failed."

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 49
    .end local v1    # "faceRecognizer":Lhyz;
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v1

    .line 37
    .restart local v1    # "faceRecognizer":Lhyz;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v6, "KEY_MODEL_MODE"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string/jumbo v6, "KEY_INIT_MODE"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-interface {v1, p0, v2}, Lhyz;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    .line 42
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 43
    const-string/jumbo v6, "facebox"

    const-string/jumbo v7, "SmileFaceDetector"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[Face] Init FaceRecognizer failed. result="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", ver="

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-interface {v1}, Lhyz;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 44
    goto :goto_0

    .line 47
    .end local v1    # "faceRecognizer":Lhyz;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v6, "facebox"

    const-string/jumbo v7, "SmileFaceDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[Face] Init FaceRecognizer err. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    .line 49
    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "facebox_smile_detect_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
