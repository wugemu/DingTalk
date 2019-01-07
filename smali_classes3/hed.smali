.class public final Lhed;
.super Lhdu;
.source "TransitionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhed$a;
    }
.end annotation


# instance fields
.field public b:Lhed$a;

.field public c:Z

.field private d:Landroid/app/Activity;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhed;->c:Z

    .line 48
    iput-object p1, p0, Lhed;->d:Landroid/app/Activity;

    .line 49
    iget-object v0, p0, Lhed;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhed;->e:I

    .line 50
    iget-object v0, p0, Lhed;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhed;->f:I

    .line 51
    return-void
.end method

.method private static a(Landroid/view/View;IIII)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 231
    .local v4, "sourceBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 232
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 233
    .local v3, "height":I
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 234
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 235
    new-instance v1, Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5, v3}, Landroid/view/View;->layout(IIII)V

    .line 238
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 239
    const/4 v6, 0x0

    invoke-static {v4, v6, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    if-eq v0, v4, :cond_0

    .line 243
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "height":I
    .end local v5    # "width":I
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_1

    .line 248
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_1
    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_2
    const/4 v0, 0x0

    .line 256
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)Z
    .locals 25
    .param p1, "fragment"    # Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .param p2, "toNavId"    # Ljava/lang/String;
    .param p3, "anim"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lhed;->b:Lhed$a;

    if-eqz v2, :cond_0

    .line 71
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitTo:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 72
    :cond_0
    const/4 v2, 0x0

    .line 206
    :goto_0
    return v2

    .line 74
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->d()Landroid/view/ViewGroup;

    move-result-object v13

    .line 80
    .local v13, "fragmentRoot":Landroid/view/ViewGroup;
    sget v2, Lhdn$h;->viewpager_transition_root:I

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 81
    .local v17, "r":Landroid/view/ViewGroup;
    if-nez v17, :cond_2

    .line 82
    sget v2, Lhdn$h;->webview_frame:I

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "r":Landroid/view/ViewGroup;
    check-cast v17, Landroid/view/ViewGroup;

    .line 84
    .restart local v17    # "r":Landroid/view/ViewGroup;
    :cond_2
    if-nez v17, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->e()Landroid/view/ViewGroup;

    move-result-object v11

    .line 87
    .local v11, "currentWebViewContainer":Landroid/view/ViewGroup;
    if-nez v11, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 89
    :cond_4
    sget v2, Lhdn$h;->webview_frame:I

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 90
    .local v22, "webViewRoot":Landroid/view/ViewGroup;
    if-nez v22, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    .line 92
    :cond_5
    move-object/from16 v6, v17

    .line 105
    .local v6, "root":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhed;->c:Z

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lhed;->d:Landroid/app/Activity;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v15

    .line 108
    .local v15, "fromTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lhed;->d:Landroid/app/Activity;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lhed;->d:Landroid/app/Activity;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lhed;->d:Landroid/app/Activity;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    .line 116
    .local v14, "fromHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lhed;->e:I

    move/from16 v16, v0

    .line 122
    .local v16, "fromWidth":I
    move/from16 v18, v15

    .line 125
    .local v18, "rootFromTop":I
    move-object/from16 v0, v22

    if-eq v6, v0, :cond_6

    .line 126
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v23, v0

    .line 127
    .local v23, "webviewRootLoc":[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 128
    .local v19, "rootLoc":[I
    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 129
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 131
    const/4 v2, 0x1

    aget v2, v23, v2

    const/4 v3, 0x1

    aget v3, v19, v3

    sub-int/2addr v2, v3

    add-int v18, v18, v2

    .line 134
    .end local v19    # "rootLoc":[I
    .end local v23    # "webviewRootLoc":[I
    :cond_6
    new-instance v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhed;->d:Landroid/app/Activity;

    invoke-direct {v7, v2}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;-><init>(Landroid/content/Context;)V

    .line 135
    .local v7, "snapshot":Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-static {v0, v2, v15, v1, v14}, Lhed;->a(Landroid/view/View;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1050
    iput-object v3, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->c:Landroid/graphics/Bitmap;

    .line 1052
    iget-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v2}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->removeView(Landroid/view/View;)V

    .line 1053
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->a:Landroid/widget/FrameLayout;

    .line 1055
    iget-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->b:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->removeView(Landroid/view/View;)V

    .line 1056
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->b:Landroid/widget/ImageView;

    .line 1058
    iget-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->a:Landroid/widget/FrameLayout;

    iget-object v4, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1059
    iget-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v2}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->addView(Landroid/view/View;)V

    .line 1061
    iget-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1062
    if-eqz v2, :cond_7

    .line 1063
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1066
    :cond_7
    iget-object v2, v7, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setX(F)V

    .line 140
    move/from16 v0, v18

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setY(F)V

    .line 141
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setWidth(I)V

    .line 142
    invoke-virtual {v7, v14}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setHeight(I)V

    .line 144
    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    .line 147
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    .line 148
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v20

    .line 149
    .local v20, "toHeight":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int v2, v2, v20

    int-to-float v0, v2

    move/from16 v21, v0

    .line 154
    .local v21, "toY":F
    const-string/jumbo v2, "y"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v21, v3, v4

    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 155
    .local v10, "animY":Landroid/animation/ObjectAnimator;
    const-string/jumbo v2, "height"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v20, v3, v4

    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 156
    .local v9, "animH":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->getSnap()Landroid/widget/ImageView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/16 v24, 0x0

    aput v24, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 162
    .local v8, "animAlpha":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    .local v12, "expandAnimSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    const/4 v3, 0x2

    aput-object v8, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 164
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    const-wide/16 v2, 0xc8

    invoke-virtual {v12, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 166
    const-wide/16 v2, 0x12c

    invoke-virtual {v12, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 167
    new-instance v2, Lhed$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lhed$1;-><init>(Lhed;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;Landroid/view/ViewGroup;Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;)V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    new-instance v2, Lhed$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lhed$2;-><init>(Lhed;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 206
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
