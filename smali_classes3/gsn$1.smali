.class final Lgsn$1;
.super Ljava/lang/Object;
.source "AlipayFaceDetector.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsn;


# direct methods
.method constructor <init>(Lgsn;)V
    .locals 0
    .param p1, "this$0"    # Lgsn;

    .prologue
    .line 99
    iput-object p1, p0, Lgsn$1;->a:Lgsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameDetected(Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;)V
    .locals 17
    .param p1, "apfdFrameFaceDetail"    # Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;

    .prologue
    .line 102
    const/4 v8, 0x5

    .line 103
    .local v8, "ret":I
    const/4 v4, 0x0

    .line 106
    .local v4, "detectorFrame":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 1025
    iget-wide v10, v10, Lgsn;->r:J

    .line 106
    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 2025
    iget-object v10, v10, Lgsn;->f:Ljava/lang/Integer;

    .line 110
    if-eqz v10, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lgsn$1;->a:Lgsn;

    .line 3025
    iget-wide v12, v12, Lgsn;->r:J

    .line 110
    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lgsn$1;->a:Lgsn;

    .line 4025
    iget-object v12, v12, Lgsn;->f:Ljava/lang/Integer;

    .line 110
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    .line 111
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const-string/jumbo v12, "[FaceDetect] incorrect record time"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    iget-object v10, v10, Lgsn;->s:Lgso$a;

    if-eqz v10, :cond_1

    .line 260
    move v9, v8

    .line 261
    .local v9, "retResult":I
    move-object v5, v4

    .line 262
    .local v5, "faceDetecteFrame":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lgsn$1$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9, v5}, Lgsn$1$1;-><init>(Lgsn$1;ILcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 274
    .end local v5    # "faceDetecteFrame":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .end local v9    # "retResult":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 31025
    const/4 v11, 0x0

    iput-boolean v11, v10, Lgsn;->q:Z

    .line 275
    return-void

    .line 115
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->hasFace:Z

    if-nez v10, :cond_5

    .line 116
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_4

    .line 117
    const-string/jumbo v10, "\u6ca1\u68c0\u6d4b\u5230\u4eba\u8138"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 119
    :cond_4
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const-string/jumbo v12, "[FaceDetect] no face"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v8, 0x6

    .line 121
    goto :goto_0

    .line 123
    :cond_5
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_6

    .line 124
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "apfdFrameFaceDetail:faceIntegrity,"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 128
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 5409
    iget-object v11, v10, Lgsn;->h:Landroid/graphics/RectF;

    if-eqz v11, :cond_7

    iget-object v10, v10, Lgsn;->h:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 5410
    :cond_7
    const/4 v10, 0x1

    .line 128
    :goto_1
    if-nez v10, :cond_a

    .line 129
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const-string/jumbo v12, "[FaceDetect] face position incorrect"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v8, 0x9

    .line 131
    goto/16 :goto_0

    .line 5412
    :cond_8
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_9

    .line 5413
    const-string/jumbo v10, "------> \u8138\u90e8\u4f4d\u7f6e\u4e0d\u5728\u5706\u4e0a"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 5416
    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 134
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 6379
    iget v10, v11, Lgsn;->a:I

    rem-int/lit16 v10, v10, 0xb4

    if-nez v10, :cond_e

    .line 6380
    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->width:I

    .line 6384
    :goto_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    int-to-float v13, v10

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 6386
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v13

    sget v14, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v13, v14, :cond_b

    .line 6387
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "face width="

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "; scale="

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    int-to-float v0, v12

    move/from16 v16, v0

    mul-float v15, v15, v16

    int-to-float v0, v10

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 6390
    :cond_b
    iget-object v13, v11, Lgsn;->g:Ljava/lang/Float;

    if-eqz v13, :cond_f

    iget-object v13, v11, Lgsn;->g:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_f

    int-to-float v13, v12

    int-to-float v14, v10

    iget-object v15, v11, Lgsn;->g:Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    mul-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_f

    .line 6391
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_c

    .line 6392
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v13, "\u8138\u90e8\u592a\u5c0f->"

    aput-object v13, v10, v11

    const/4 v11, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 6395
    :cond_c
    const/4 v6, 0x2

    .line 136
    .local v6, "faceState":I
    :goto_3
    const/4 v10, 0x1

    if-ne v6, v10, :cond_12

    .line 137
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_d

    .line 138
    const-string/jumbo v10, "\u592a\u8fd1"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 140
    :cond_d
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const-string/jumbo v12, "[FaceDetect] too close"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v8, 0x3

    .line 142
    goto/16 :goto_0

    .line 6382
    .end local v6    # "faceState":I
    :cond_e
    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->height:I

    goto/16 :goto_2

    .line 6397
    :cond_f
    iget-object v13, v11, Lgsn;->i:Ljava/lang/Float;

    if-eqz v13, :cond_11

    iget-object v13, v11, Lgsn;->i:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_11

    int-to-float v13, v12

    int-to-float v10, v10

    iget-object v11, v11, Lgsn;->i:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v10, v11

    cmpl-float v10, v13, v10

    if-lez v10, :cond_11

    .line 6398
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_10

    .line 6399
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v13, "\u8138\u90e8\u592a\u5927->"

    aput-object v13, v10, v11

    const/4 v11, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 6401
    :cond_10
    const/4 v6, 0x1

    goto :goto_3

    .line 6403
    :cond_11
    const/4 v6, 0x0

    goto :goto_3

    .line 145
    .restart local v6    # "faceState":I
    :cond_12
    const/4 v10, 0x2

    if-ne v6, v10, :cond_14

    .line 146
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_13

    .line 147
    const-string/jumbo v10, "\u592a\u8fdc"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 149
    :cond_13
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const-string/jumbo v12, "[FaceDetect] too far"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v8, 0x1

    .line 151
    goto/16 :goto_0

    .line 155
    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 7025
    iget-object v10, v10, Lgsn;->o:Ljava/lang/Float;

    .line 155
    if-eqz v10, :cond_16

    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceBrightness:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 8025
    iget-object v11, v11, Lgsn;->o:Ljava/lang/Float;

    .line 155
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_16

    .line 156
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_15

    .line 157
    const-string/jumbo v10, "\u80cc\u5149\u4e86"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 160
    :cond_15
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceDetect] light low, value="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceBrightness:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v8, 0x2

    .line 162
    goto/16 :goto_0

    .line 166
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 9025
    iget-object v10, v10, Lgsn;->n:Ljava/lang/Float;

    .line 166
    if-eqz v10, :cond_18

    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessMotion:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 10025
    iget-object v11, v11, Lgsn;->n:Ljava/lang/Float;

    .line 166
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_18

    .line 167
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_17

    .line 168
    const-string/jumbo v10, "\u4eba\u8138\u6296\u52a8\u72b6\u6001 Motion"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 170
    :cond_17
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceDetect] Motion high, value="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->blurnessMotion:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 11025
    iget-object v10, v10, Lgsn;->j:Ljava/lang/Float;

    .line 175
    if-eqz v10, :cond_1a

    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceIntegrity:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 12025
    iget-object v11, v11, Lgsn;->j:Ljava/lang/Float;

    .line 175
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1a

    .line 176
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_19

    .line 177
    const-string/jumbo v10, "\u4eba\u8138\u6296\u52a8\u72b6\u6001 Integrity"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 179
    :cond_19
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceDetect] Integrity low, value="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceIntegrity:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 13025
    iget-object v10, v10, Lgsn;->m:Ljava/lang/Float;

    .line 184
    if-eqz v10, :cond_1c

    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->mouthOcclusion:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 14025
    iget-object v11, v11, Lgsn;->m:Ljava/lang/Float;

    .line 184
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1c

    .line 185
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_1b

    .line 186
    const-string/jumbo v10, "\u4eba\u8138\u6296\u52a8\u72b6\u6001 mouthOcclusion"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 189
    :cond_1b
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceDetect] mouthOcclusion high, value="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->mouthOcclusion:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 15025
    iget-object v10, v10, Lgsn;->k:Ljava/lang/Float;

    .line 194
    if-eqz v10, :cond_1e

    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeLeftOcclusion:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 16025
    iget-object v11, v11, Lgsn;->k:Ljava/lang/Float;

    .line 194
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1e

    .line 195
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_1d

    .line 196
    const-string/jumbo v10, "\u4eba\u8138\u6296\u52a8\u72b6\u6001 eyeLeftOcclusion"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 199
    :cond_1d
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceDetect] eyeLeftOcclusion high, value="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeLeftOcclusion:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 17025
    iget-object v10, v10, Lgsn;->l:Ljava/lang/Float;

    .line 204
    if-eqz v10, :cond_20

    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeRightOcclusion:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 18025
    iget-object v11, v11, Lgsn;->l:Ljava/lang/Float;

    .line 204
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_20

    .line 205
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_1f

    .line 206
    const-string/jumbo v10, "\u4eba\u8138\u6296\u52a8\u72b6\u6001 eyeRightOcclusion"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 209
    :cond_1f
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceDetect] eyeRightOcclusion high, vlaue="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->eyeRightOcclusion:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_20
    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceQuality:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lgsn$1;->a:Lgsn;

    .line 19025
    iget v11, v11, Lgsn;->p:F

    .line 213
    cmpg-float v10, v10, v11

    if-gez v10, :cond_22

    .line 214
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_21

    .line 215
    const-string/jumbo v10, "\u4eba\u8138\u8d28\u91cf\u5206\u4e0d\u591f"

    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 217
    :cond_21
    const-string/jumbo v10, "facebox"

    const-string/jumbo v11, "AlipayFaceDetector"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceDetect] Quality low, value="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceQuality:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_22
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 222
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    iget-object v10, v10, Lgsn;->s:Lgso$a;

    if-eqz v10, :cond_0

    .line 223
    new-instance v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    .end local v4    # "detectorFrame":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    invoke-direct {v4}, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;-><init>()V

    .line 224
    .restart local v4    # "detectorFrame":Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->getYUVData()[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->getYUVData()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    iput-object v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    .line 225
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 21025
    iget v10, v10, Lgsn;->a:I

    .line 225
    iput v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageAngle:I

    .line 226
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 22025
    iget v10, v10, Lgsn;->b:I

    .line 226
    iput v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageWidth:I

    .line 227
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 23025
    iget v10, v10, Lgsn;->c:I

    .line 227
    iput v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageHeight:I

    .line 228
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 231
    .local v7, "facesize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 24025
    iget v10, v10, Lgsn;->a:I

    .line 231
    rem-int/lit16 v10, v10, 0xb4

    if-nez v10, :cond_23

    .line 232
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 25025
    iget v3, v10, Lgsn;->b:I

    .line 233
    .local v3, "W":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 26025
    iget v2, v10, Lgsn;->c:I

    .line 239
    .local v2, "H":I
    :goto_4
    int-to-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 240
    int-to-float v10, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 241
    int-to-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 242
    int-to-float v10, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 244
    iput-object v7, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    .line 245
    move-object/from16 v0, p1

    iget v10, v0, Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;->faceQuality:F

    iput v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceQuality:F

    .line 246
    const/4 v10, 0x0

    iput v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->landmarkScore:F

    .line 247
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 29025
    iget v10, v10, Lgsn;->d:I

    .line 247
    iput v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imaegFormat:I

    .line 248
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 30025
    iget-boolean v10, v10, Lgsn;->e:Z

    .line 248
    iput-boolean v10, v4, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->isMirror:Z

    .line 250
    const/4 v8, 0x0

    .line 251
    goto/16 :goto_0

    .line 235
    .end local v2    # "H":I
    .end local v3    # "W":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 27025
    iget v3, v10, Lgsn;->c:I

    .line 236
    .restart local v3    # "W":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lgsn$1;->a:Lgsn;

    .line 28025
    iget v2, v10, Lgsn;->b:I

    .line 236
    .restart local v2    # "H":I
    goto :goto_4
.end method
