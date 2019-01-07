.class public Lcom/megvii/livenessdetection/bean/FaceInfo$FaceInfoFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/livenessdetection/bean/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceInfoFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFaceInfo(Ljava/lang/String;)Lcom/megvii/livenessdetection/bean/FaceInfo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 71
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "has_face"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "has_face"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lcom/megvii/livenessdetection/bean/FaceInfo;

    invoke-direct {v0}, Lcom/megvii/livenessdetection/bean/FaceInfo;-><init>()V

    .line 76
    const-string/jumbo v3, "pos"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 77
    const-string/jumbo v4, "pitch"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->pitch:F

    .line 78
    const-string/jumbo v4, "yaw"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->yaw:F

    .line 80
    const-string/jumbo v3, "facerect"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 81
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 82
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 83
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 84
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 85
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-float v3, v6

    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 86
    iput-object v4, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    .line 88
    const-string/jumbo v3, "brightness"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->brightness:F

    .line 90
    const-string/jumbo v3, "blurness"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "motion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->motionBlur:F

    .line 92
    const-string/jumbo v3, "blurness"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "gaussian"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->gaussianBlur:F

    .line 95
    const-string/jumbo v3, "wearglass"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->wearGlass:F

    .line 96
    const-string/jumbo v3, "pitch3d"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->pitch3d:Z

    .line 98
    const-string/jumbo v3, "eye_hwratio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 99
    const-string/jumbo v3, "mouth_hwratio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthHWRatio:F

    .line 100
    const-string/jumbo v3, "eye_left_hwratio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->leftEyeHWRatio:F

    .line 101
    const-string/jumbo v3, "eye_right_hwratio"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->rightEyeHWRatio:F

    .line 103
    const-string/jumbo v3, "integrity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->integrity:F

    .line 105
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 106
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 107
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 108
    const-string/jumbo v4, "real_width"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 109
    const-string/jumbo v4, "real_height"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 110
    iput-object v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceSize:Landroid/graphics/Rect;

    .line 112
    const-string/jumbo v3, "smooth_yaw"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothYaw:F

    .line 113
    const-string/jumbo v3, "smooth_pitch"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->smoothPitch:F

    .line 114
    const-string/jumbo v3, "not_video"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->notVideo:Z

    .line 115
    const-string/jumbo v3, "eye_blink"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeBlink:Z

    .line 116
    const-string/jumbo v3, "mouth_open"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthOpen:Z

    .line 118
    const-string/jumbo v3, "eye_left_det"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeLeftDet:F

    .line 119
    const-string/jumbo v3, "eye_right_det"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeRightDet:F

    .line 120
    const-string/jumbo v3, "mouth_det"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthDet:F

    .line 121
    const-string/jumbo v3, "quality"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    .line 123
    const-string/jumbo v3, "eye_left_occlusion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeLeftOcclusion:F

    .line 124
    const-string/jumbo v3, "eye_right_occlusion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->eyeRightOcclusion:F

    .line 125
    const-string/jumbo v3, "mouth_occlusion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->mouthOcclusion:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method
