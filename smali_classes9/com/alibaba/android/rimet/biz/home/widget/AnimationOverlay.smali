.class public Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "AnimationOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/graphics/drawable/BitmapDrawable;

.field private g:Llgf;

.field private h:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const v0, 0x7f0c015b

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;-><init>(Landroid/content/Context;I)V

    .line 78
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->setOwnerActivity(Landroid/app/Activity;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 82
    const v0, 0x7f0c015b

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 83
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->setOwnerActivity(Landroid/app/Activity;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x10

    const/4 v8, 0x0

    .line 60
    .line 1197
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1198
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1200
    if-lt v1, v3, :cond_0

    if-ge v2, v3, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-object v0

    .line 1204
    :cond_1
    div-int/lit8 v1, v1, 0x10

    div-int/lit8 v2, v2, 0x10

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1205
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1208
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1209
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1210
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, p3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1211
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1213
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1216
    invoke-virtual {v2, p2, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1217
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10028a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1219
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getContext()Landroid/content/Context;

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lhbe;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->f:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->f:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method private a()V
    .locals 29

    .prologue
    .line 225
    const v23, 0x7f111960

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 226
    .local v7, "frame1View":Landroid/view/View;
    const v23, 0x7f111961

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 227
    .local v14, "innerCircleView":Landroid/view/View;
    const v23, 0x7f111962

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 228
    .local v17, "outerCircleView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->e:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f0919a3

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 232
    .local v6, "frame1":Landroid/animation/Keyframe;
    const v23, 0x3dcccccd    # 0.1f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 233
    .local v8, "frame2":Landroid/animation/Keyframe;
    const v23, 0x3ecccccd    # 0.4f

    const/high16 v24, 0x42b40000    # 90.0f

    invoke-static/range {v23 .. v24}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 234
    .local v9, "frame3":Landroid/animation/Keyframe;
    const v23, 0x3f19999a    # 0.6f

    const/high16 v24, 0x42b40000    # 90.0f

    invoke-static/range {v23 .. v24}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 235
    .local v10, "frame4":Landroid/animation/Keyframe;
    const v23, 0x3f666666    # 0.9f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 236
    .local v11, "frame5":Landroid/animation/Keyframe;
    const v23, 0x3dcccccd    # 0.1f

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    .line 237
    .local v12, "frame6":Landroid/animation/Keyframe;
    const-string/jumbo v23, "rotation"

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v6, v24, v25

    const/16 v25, 0x1

    aput-object v8, v24, v25

    const/16 v25, 0x2

    aput-object v9, v24, v25

    const/16 v25, 0x3

    aput-object v10, v24, v25

    const/16 v25, 0x4

    aput-object v11, v24, v25

    const/16 v25, 0x5

    aput-object v12, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    .line 238
    .local v20, "rotateHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v23, "scaleX"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    invoke-static/range {v23 .. v24}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    .line 239
    .local v21, "scaleXHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v23, "scaleY"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_1

    invoke-static/range {v23 .. v24}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    .line 240
    .local v22, "scaleYHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v23, "alpha"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_2

    invoke-static/range {v23 .. v24}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 242
    .local v4, "alphaHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    move-object/from16 v0, v23

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 243
    .local v15, "innerRotateAnim":Landroid/animation/ObjectAnimator;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 244
    .local v18, "outerRotateAnim":Landroid/animation/ObjectAnimator;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v21, v23, v24

    const/16 v24, 0x1

    aput-object v22, v23, v24

    move-object/from16 v0, v23

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 245
    .local v16, "innerScaleAnim":Landroid/animation/ObjectAnimator;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v21, v23, v24

    const/16 v24, 0x1

    aput-object v22, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 246
    .local v19, "outerScaleAnim":Landroid/animation/ObjectAnimator;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 248
    .local v13, "frameAlphaAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v24, 0x3e8

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    const-wide/16 v24, 0x3e8

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    const-wide/16 v24, 0x1f4

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 251
    const-wide/16 v24, 0x1f4

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    const-wide/16 v24, 0x3e8

    move-wide/from16 v0, v24

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 253
    const-wide/16 v24, 0x1f4

    move-wide/from16 v0, v24

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 255
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 256
    new-instance v23, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$3;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 279
    return-void

    .line 238
    .line 239
    .line 240
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 60
    .line 1153
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 1154
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1155
    invoke-virtual {v5}, Landroid/view/View;->buildDrawingCache()V

    .line 1156
    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1158
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->destroyDrawingCache()V

    .line 1160
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a()V

    .line 1161
    :goto_0
    return-void

    .line 1165
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1166
    invoke-virtual {v5, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1167
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 1169
    sget-object v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$2;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/view/View;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    invoke-virtual {v1}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    invoke-virtual {v1}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    invoke-virtual {v1}, Llgf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    invoke-virtual {v1}, Llgf;->stop()V

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    invoke-virtual {v1}, Llgf;->a()V

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->h:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->h:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_2
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a()V

    return-void
.end method

.method private c()V
    .locals 19

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->c:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->d:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const v16, 0x7f111964

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 333
    .local v9, "frame3View":Landroid/view/View;
    const v16, 0x7f111965

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 334
    .local v12, "view1":Landroid/view/View;
    const v16, 0x7f111966

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 335
    .local v13, "view2":Landroid/view/View;
    const v16, 0x7f111967

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 336
    .local v14, "view3":Landroid/view/View;
    const v16, 0x7f111968

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 337
    .local v15, "view4":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->e:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0919a5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const-string/jumbo v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 341
    .local v2, "alphaHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v16, "scaleX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 342
    .local v10, "scaleXHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v16, "scaleY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 344
    .local v11, "scaleYHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 345
    .local v3, "anim0":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    const/16 v17, 0x2

    aput-object v11, v16, v17

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 346
    .local v4, "anim1":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    const/16 v17, 0x2

    aput-object v11, v16, v17

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 347
    .local v5, "anim2":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    const/16 v17, 0x2

    aput-object v11, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 348
    .local v6, "anim3":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    const/16 v17, 0x2

    aput-object v11, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 350
    .local v7, "anim4":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    const-wide/16 v16, 0x78

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 352
    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 353
    const-wide/16 v16, 0x258

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 354
    const-wide/16 v16, 0x384

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 356
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 357
    .local v8, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 358
    new-instance v16, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 360
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 362
    return-void

    .line 340
    .line 341
    .line 342
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 60
    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0919a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    const v0, 0x7f111963

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1288
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "anim_open_encrypt_2.gif"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->h:Ljava/io/InputStream;

    .line 1289
    new-instance v1, Llgf;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->h:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Llgf;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    .line 1291
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$4;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/widget/ImageView;)V

    .line 1300
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Llgb;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgb;

    invoke-virtual {v3, v1}, Llgf;->a(Llgb;)V

    .line 1301
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1302
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->g:Llgf;

    invoke-virtual {v1}, Llgf;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_0
    return-void

    .line 1303
    :catch_0
    move-exception v1

    .line 1304
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1305
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->c()V

    .line 1306
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->b()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->c()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->dismiss()V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f11196a

    if-ne v0, v1, :cond_0

    .line 120
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_encrypt_new_guide_enter_btn_click"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_encrypt_new_guide_skip_btn_click"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f040658

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 97
    const v0, 0x7f11195f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->c:Landroid/view/View;

    .line 98
    const v0, 0x7f11196a

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->d:Landroid/view/View;

    .line 99
    const v0, 0x7f111969    # 1.9287E38f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->e:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    const v0, 0x7f111274

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1139
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 103
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->b()V

    .line 114
    return-void
.end method

.method public show()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 129
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_encrypt_new_guide_show"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    return-void
.end method
