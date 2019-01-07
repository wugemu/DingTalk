.class public Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;
.super Landroid/view/View;
.source "FaceView.java"


# instance fields
.field public a:Z

.field public b:[Landroid/hardware/Camera$Face;

.field public c:I

.field public d:Landroid/graphics/Rect;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/graphics/Matrix;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/drawable/Drawable;

.field private final k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/Xfermode;

.field private m:Landroid/graphics/Paint;

.field private n:[I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->a:Z

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->h:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->i:Landroid/graphics/RectF;

    .line 48
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->c:I

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->n:[I

    .line 62
    new-instance v0, Lgsj;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgrv$c;->face_scan:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lgsj;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->k:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lgrv$c;->sign:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->j:Landroid/graphics/drawable/Drawable;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->m:Landroid/graphics/Paint;

    .line 1155
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->l:Landroid/graphics/Xfermode;

    .line 67
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->b:[Landroid/hardware/Camera$Face;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->b:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->h:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->g:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->e:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->getHeight()I

    move-result v6

    .line 2021
    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2023
    int-to-float v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2026
    int-to-float v2, v5

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v4

    int-to-float v4, v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float/2addr v4, v7

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2027
    int-to-float v2, v5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->h:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->f:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->f:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 168
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->b:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-ge v10, v2, :cond_6

    .line 170
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->i:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->b:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v10

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->h:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 176
    .local v11, "left":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 177
    .local v17, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 178
    .local v12, "right":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 180
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->j:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v17

    invoke-virtual {v2, v11, v0, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->j:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    add-int/lit8 v14, v11, 0x5

    .line 184
    .local v14, "scanLeft":I
    add-int/lit8 v16, v17, 0x5

    .line 185
    .local v16, "scanTop":I
    add-int/lit8 v15, v12, -0x5

    .line 186
    .local v15, "scanRight":I
    add-int/lit8 v13, v9, -0x5

    .line 187
    .local v13, "scanBottom":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->a:Z

    if-eqz v2, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->k:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v16

    invoke-virtual {v2, v14, v0, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->k:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->c:I

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->k:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->m:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->l:Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 194
    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v2, v14

    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v14

    sub-int v5, v13, v16

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, v16

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->n:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 195
    .local v1, "shader":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 197
    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->m:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->m:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2209
    .end local v1    # "shader":Landroid/graphics/Shader;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->p:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->o:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 168
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2021
    .end local v9    # "bottom":I
    .end local v10    # "i":I
    .end local v11    # "left":I
    .end local v12    # "right":I
    .end local v13    # "scanBottom":I
    .end local v14    # "scanLeft":I
    .end local v15    # "scanRight":I
    .end local v16    # "scanTop":I
    .end local v17    # "top":I
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 2212
    .restart local v9    # "bottom":I
    .restart local v10    # "i":I
    .restart local v11    # "left":I
    .restart local v12    # "right":I
    .restart local v13    # "scanBottom":I
    .restart local v14    # "scanLeft":I
    .restart local v15    # "scanRight":I
    .restart local v16    # "scanTop":I
    .restart local v17    # "top":I
    :cond_4
    sub-int v2, v12, v11

    sub-int v3, v9, v17

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    .line 2213
    sub-int v3, v11, v2

    .line 2214
    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v17, v4

    .line 2215
    add-int v5, v12, v2

    .line 2216
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    .line 2218
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->d:Landroid/graphics/Rect;

    if-nez v6, :cond_5

    .line 2219
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->d:Landroid/graphics/Rect;

    .line 2226
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 2221
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->d:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 2222
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->d:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 2223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->d:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 2224
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->d:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 203
    .end local v9    # "bottom":I
    .end local v11    # "left":I
    .end local v12    # "right":I
    .end local v13    # "scanBottom":I
    .end local v14    # "scanLeft":I
    .end local v15    # "scanRight":I
    .end local v16    # "scanTop":I
    .end local v17    # "top":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 205
    .end local v10    # "i":I
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 206
    return-void
.end method

.method public setDecorateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->o:Landroid/graphics/drawable/Drawable;

    .line 148
    return-void
.end method

.method public setDecorateEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->p:Z

    .line 139
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->e:I

    .line 76
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->b:[Landroid/hardware/Camera$Face;

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->invalidate()V

    .line 73
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->g:Z

    .line 84
    return-void
.end method

.method public final setOrientation$2563266(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->f:I

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->invalidate()V

    .line 81
    return-void
.end method
