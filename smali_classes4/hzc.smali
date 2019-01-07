.class public final Lhzc;
.super Ljava/lang/Object;
.source "SecurityFaceRecognizer.java"

# interfaces
.implements Lhyz;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/os/Bundle;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Lhzb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "FaceRecognizer"

    iput-object v0, p0, Lhzc;->c:Ljava/lang/String;

    .line 39
    const/16 v0, 0x2714

    iput v0, p0, Lhzc;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0x2716

    const/4 v5, 0x2

    const/16 v1, 0x271a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 58
    if-nez p1, :cond_1

    .line 59
    iget-object v4, p0, Lhzc;->c:Ljava/lang/String;

    const-string/jumbo v5, "init fail, context == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-nez p2, :cond_2

    .line 64
    iget-object v3, p0, Lhzc;->c:Ljava/lang/String;

    const-string/jumbo v4, "init fail, params == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v7, "KEY_MODEL_MODE"

    invoke-virtual {p2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "KEY_FACEMODEL_PATH"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "KEY_FACEMODEL_PATH"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    .line 70
    :cond_3
    iget-object v3, p0, Lhzc;->c:Ljava/lang/String;

    const-string/jumbo v4, "init fail, MODEL_MODE_LOCAL without KEY_FACEMODEL_PATH"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_4
    sget-boolean v7, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a:Z

    if-nez v7, :cond_5

    .line 76
    invoke-static {p1}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 77
    iput v6, p0, Lhzc;->g:I

    move v1, v6

    .line 78
    goto :goto_0

    .line 83
    :cond_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lhzc;->b:Landroid/os/Bundle;

    .line 84
    if-eqz p2, :cond_6

    .line 85
    iget-object v7, p0, Lhzc;->b:Landroid/os/Bundle;

    invoke-virtual {v7, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 88
    :cond_6
    iput-object p1, p0, Lhzc;->a:Landroid/content/Context;

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "KEY_MODEL_DOWNLOAD_MODE="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "KEY_MODEL_MODE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v7, "KEY_MODEL_MODE"

    invoke-virtual {p2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_b

    .line 96
    const-string/jumbo v7, "KEY_FACEMODEL_PATH"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 97
    const-string/jumbo v7, "KEY_FACEMODEL_PATH"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "modelDirPath":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "\\"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "modelDirPath="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->IsEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1667
    invoke-static {}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->Release()V

    .line 139
    :cond_8
    const-string/jumbo v7, "KEY_IMAGEWIDTH"

    const/16 v8, 0x280

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lhzc;->d:I

    .line 140
    const-string/jumbo v7, "KEY_IMAGEHEIGHT"

    const/16 v8, 0x1e0

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lhzc;->e:I

    .line 141
    const-string/jumbo v7, "KEY_IMAGE_ANGLE"

    const/16 v8, 0x10e

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lhzc;->f:I

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FaceUnlockJni.Init:initImageWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lhzc;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",initImageHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lhzc;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", initAngle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lhzc;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    iget v7, p0, Lhzc;->d:I

    iget v8, p0, Lhzc;->e:I

    iget v9, p0, Lhzc;->f:I

    invoke-static {v7, v8, v3, v9, v0}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->Init(IIZILjava/lang/String;)I

    move-result v1

    .line 146
    .local v1, "result":I
    if-eqz v1, :cond_15

    .line 147
    iget-object v4, p0, Lhzc;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "init fail, result == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " && !FaceUnlockJni.IsEnabled()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput v6, p0, Lhzc;->g:I

    .line 150
    const/16 v4, 0x44e

    if-ne v1, v4, :cond_0

    .line 151
    const-string/jumbo v4, "KEY_MODEL_MODE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_9

    const-string/jumbo v3, "KEY_MODEL_MODE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 153
    :cond_9
    iget-object v3, p0, Lhzc;->h:Lhzb;

    if-nez v3, :cond_0

    .line 154
    iget-object v3, p0, Lhzc;->h:Lhzb;

    invoke-virtual {v3}, Lhzb;->b()V

    goto/16 :goto_0

    .line 99
    .end local v0    # "modelDirPath":Ljava/lang/String;
    .end local v1    # "result":I
    :cond_a
    iget-object v3, p0, Lhzc;->c:Ljava/lang/String;

    const-string/jumbo v4, "MODEL_MODE_LOCAL without KEY_FACEMODEL_PATH"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    :cond_b
    const-string/jumbo v7, "KEY_MODEL_MODE"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_c

    const-string/jumbo v7, "KEY_MODEL_MODE"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_14

    .line 107
    :cond_c
    iget-object v7, p0, Lhzc;->h:Lhzb;

    if-nez v7, :cond_d

    .line 108
    invoke-static {p1}, Lhzb;->a(Landroid/content/Context;)Lhzb;

    move-result-object v7

    iput-object v7, p0, Lhzc;->h:Lhzb;

    .line 114
    :cond_d
    const-string/jumbo v7, "KEY_INIT_MODE"

    invoke-virtual {p2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_e

    move v2, v3

    .line 116
    .local v2, "smileOnly":Z
    :goto_2
    iget-object v7, p0, Lhzc;->h:Lhzb;

    invoke-virtual {v7, v2}, Lhzb;->a(Z)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 117
    iget-object v7, p0, Lhzc;->h:Lhzb;

    invoke-virtual {v7}, Lhzb;->a()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "modelDirPath":Ljava/lang/String;
    goto/16 :goto_1

    .end local v0    # "modelDirPath":Ljava/lang/String;
    .end local v2    # "smileOnly":Z
    :cond_e
    move v2, v4

    .line 114
    goto :goto_2

    .line 119
    .restart local v2    # "smileOnly":Z
    :cond_f
    iget-object v5, p0, Lhzc;->h:Lhzb;

    const-string/jumbo v6, "KEY_MODEL_MODE"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_12

    .line 1139
    :goto_3
    sget-boolean v4, Lhzb;->t:Z

    if-nez v4, :cond_13

    .line 1141
    iget-object v4, v5, Lhzb;->u:Landroid/os/HandlerThread;

    if-eqz v4, :cond_10

    iget-object v4, v5, Lhzb;->v:Landroid/os/Handler;

    if-nez v4, :cond_11

    .line 1142
    :cond_10
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v6, "SecurityFaceRecognizer"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, v5, Lhzb;->u:Landroid/os/HandlerThread;

    .line 1143
    iget-object v4, v5, Lhzb;->u:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 1144
    new-instance v4, Landroid/os/Handler;

    iget-object v6, v5, Lhzb;->u:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v5, Lhzb;->v:Landroid/os/Handler;

    .line 1147
    :cond_11
    iget-object v4, v5, Lhzb;->v:Landroid/os/Handler;

    new-instance v6, Lhzb$1;

    invoke-direct {v6, v5, v3, v2}, Lhzb$1;-><init>(Lhzb;ZZ)V

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_12
    move v3, v4

    .line 119
    goto :goto_3

    .line 1183
    :cond_13
    sget-object v3, Lhzb;->a:Ljava/lang/String;

    const-string/jumbo v4, "isDownloading"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    .end local v2    # "smileOnly":Z
    :cond_14
    iget-object v3, p0, Lhzc;->c:Ljava/lang/String;

    const-string/jumbo v4, "unknown KEY_MODEL_DOWNLOAD_MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    .restart local v0    # "modelDirPath":Ljava/lang/String;
    .restart local v1    # "result":I
    :cond_15
    iput v4, p0, Lhzc;->g:I

    goto/16 :goto_0
.end method

.method public final a([BIII)Lhza;
    .locals 11
    .param p1, "yuvData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "angle"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v10, 0x2719

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "detectSmileInVideo(byte[] yuvData, int width=("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "), int height=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "), int angle=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    if-nez p1, :cond_0

    .line 522
    new-instance v4, Lhza;

    invoke-direct {v4, v8, v10}, Lhza;-><init>(FI)V

    .line 564
    :goto_0
    return-object v4

    .line 525
    :cond_0
    if-eqz p4, :cond_1

    const/16 v4, 0x5a

    if-eq p4, v4, :cond_1

    const/16 v4, 0xb4

    if-eq p4, v4, :cond_1

    const/16 v4, 0x10e

    if-eq p4, v4, :cond_1

    .line 526
    iget-object v4, p0, Lhzc;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "IllegalArgument angel="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v4, Lhza;

    invoke-direct {v4, v7, v10}, Lhza;-><init>(FI)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v4, p0, Lhzc;->b:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 532
    new-instance v4, Lhza;

    const/16 v5, 0x2714

    invoke-direct {v4, v7, v5}, Lhza;-><init>(FI)V

    goto :goto_0

    .line 535
    :cond_2
    invoke-static {}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->IsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lhzc;->d:I

    if-ne p2, v4, :cond_3

    iget v4, p0, Lhzc;->e:I

    if-ne p3, v4, :cond_3

    iget v4, p0, Lhzc;->f:I

    if-eq p4, v4, :cond_4

    .line 536
    :cond_3
    iget-object v4, p0, Lhzc;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "initImageWidth="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lhzc;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",initImageHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lhzc;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    invoke-static {}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->Release()V

    .line 539
    iget-object v4, p0, Lhzc;->b:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_IMAGEWIDTH"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    iget-object v4, p0, Lhzc;->b:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_IMAGEHEIGHT"

    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    iget-object v4, p0, Lhzc;->b:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_IMAGE_ANGLE"

    invoke-virtual {v4, v5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    iget-object v4, p0, Lhzc;->a:Landroid/content/Context;

    iget-object v5, p0, Lhzc;->b:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v5}, Lhzc;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 544
    iget-object v4, p0, Lhzc;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "initImageWidth="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lhzc;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",initImageHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lhzc;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v4, Lhza;

    const/16 v5, 0x2716

    invoke-direct {v4, v7, v5}, Lhza;-><init>(FI)V

    goto/16 :goto_0

    .line 550
    :cond_4
    const/4 v4, 0x4

    new-array v1, v4, [I

    .line 552
    .local v1, "faceRect":[I
    sget v4, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->c:I

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [F

    .line 554
    .local v2, "landmarkOut":[F
    const/4 v4, 0x3

    new-array v3, v4, [F

    .line 557
    .local v3, "score":[F
    invoke-static {p1, v1, v2, v3}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->TrackFaceAndSmileWithCamera([B[I[F[F)I

    move-result v0

    .line 560
    .local v0, "detectResult":I
    if-nez v0, :cond_5

    .line 561
    new-instance v4, Lhza;

    aget v5, v3, v9

    invoke-direct {v4, v5, v9, v2, v1}, Lhza;-><init>(FI[F[I)V

    goto/16 :goto_0

    .line 563
    :cond_5
    iget-object v4, p0, Lhzc;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "FaceUnlockJni.TrackFaceAndSmileWithCamera result= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v4, Lhza;

    invoke-direct {v4, v8, v0}, Lhza;-><init>(FI)V

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 667
    invoke-static {}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->Release()V

    .line 668
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Lcom/alibaba/security/facemodulesdk/FaceUnlockJni;->GetVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
