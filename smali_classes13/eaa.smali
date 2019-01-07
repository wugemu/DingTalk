.class public final Leaa;
.super Ldzl;
.source "PushTaskHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/doraemon/image/ImageMagician;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 7
    .param p1, "textColor"    # Ljava/lang/String;
    .param p2, "defColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-object v2, p0, Leaa;->c:Landroid/app/Activity;

    invoke-static {v2, p2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    .line 314
    .local v0, "res":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 330
    .end local v0    # "res":I
    .local v1, "res":I
    :goto_0
    return v1

    .line 319
    .end local v1    # "res":I
    .restart local v0    # "res":I
    :cond_0
    :try_start_0
    const-string/jumbo v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    move v1, v0

    .line 330
    .end local v0    # "res":I
    .restart local v1    # "res":I
    goto :goto_0

    .line 322
    .end local v1    # "res":I
    .restart local v0    # "res":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 326
    :catch_0
    move-exception v2

    const-string/jumbo v2, "im"

    const-string/jumbo v3, "PushTaskHeaderHolder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textColor:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 327
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V
    .locals 9
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x8

    .line 279
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->count:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_1
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->count:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "count":I
    const/16 v3, 0x63

    if-le v0, v3, :cond_2

    .line 289
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    const-string/jumbo v4, "99+"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "PushTaskHeaderHolder"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "count:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 291
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_1
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    sget v4, Lctk$e;->im_bg_oval_white:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 301
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 302
    .local v2, "redBgShape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->redBgColor:Ljava/lang/String;

    sget v4, Lctk$c;->text_color_white:I

    invoke-direct {p0, v3, v4}, Leaa;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 303
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v0    # "count":I
    .end local v2    # "redBgShape":Landroid/graphics/drawable/GradientDrawable;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "PushTaskHeaderHolder"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    :cond_2
    if-gtz v0, :cond_3

    .line 293
    :try_start_1
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "PushTaskHeaderHolder"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "count:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 294
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 298
    :cond_3
    iget-object v3, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private e()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 334
    iget-object v1, p0, Leaa;->a:Landroid/view/View;

    .line 1340
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$d;->task_animator_medium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1341
    mul-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0xc

    .line 1342
    mul-int/lit8 v4, v2, 0x2

    div-int/lit8 v4, v4, 0xc

    .line 1343
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v6, 0x8

    new-array v6, v6, [Landroid/animation/Keyframe;

    .line 1344
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v6, v11

    const/high16 v7, 0x3e000000    # 0.125f

    neg-int v8, v2

    int-to-float v8, v8

    .line 1345
    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const/high16 v8, 0x3e800000    # 0.25f

    int-to-float v2, v2

    .line 1346
    invoke-static {v8, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    const/high16 v7, 0x3ec00000    # 0.375f

    neg-int v8, v3

    int-to-float v8, v8

    .line 1347
    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x4

    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v3, v3

    .line 1348
    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    const/high16 v3, 0x3f200000    # 0.625f

    neg-int v7, v4

    int-to-float v7, v7

    .line 1349
    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x6

    const/high16 v3, 0x3f400000    # 0.75f

    int-to-float v4, v4

    .line 1350
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1351
    invoke-static {v3, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1343
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1354
    new-array v3, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v11

    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x29e

    .line 1355
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 335
    .local v0, "nopeAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 336
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 337
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 247
    sget v0, Lctk$g;->layout_session_task_header:I

    return v0
.end method

.method final b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->rl_task_banner_bg:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Leaa;->f:Landroid/view/View;

    .line 63
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->rl_task_right_bg:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Leaa;->g:Landroid/view/View;

    .line 64
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->task_iconfont:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v6, p0, Leaa;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 65
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->task_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Leaa;->i:Landroid/widget/ImageView;

    .line 66
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->tv_title:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Leaa;->j:Landroid/widget/TextView;

    .line 67
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->tv_summary:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Leaa;->k:Landroid/widget/TextView;

    .line 68
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->tv_label:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Leaa;->l:Landroid/widget/TextView;

    .line 70
    iget-object v6, p0, Leaa;->a:Landroid/view/View;

    sget v7, Lctk$f;->task_top_tip:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v6, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string/jumbo v6, "IMAGE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v6, p0, Leaa;->m:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 75
    iget-object v6, p0, Leaa;->n:Landroid/os/Handler;

    if-nez v6, :cond_0

    .line 76
    new-instance v6, Leaa$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Leaa$1;-><init>(Leaa;Landroid/os/Looper;)V

    iput-object v6, p0, Leaa;->n:Landroid/os/Handler;

    .line 90
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    .line 91
    .local v5, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v5, :cond_2

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 108
    .local v1, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_1

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 112
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 113
    .local v2, "orgId":J
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "orgId"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, "role":I
    invoke-static {v1}, Leac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    const/4 v4, 0x1

    .line 121
    :cond_3
    :goto_1
    const-string/jumbo v6, "role"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_4

    .line 123
    const-string/jumbo v6, "region"

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v6, "industry"

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "PushTaskHeaderHolder"

    const-string/jumbo v8, "guide_TaskCenter_show"

    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 118
    :cond_5
    invoke-static {v1}, Leac;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 234
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 132
    iget-object v7, p0, Leaa;->c:Landroid/app/Activity;

    invoke-static {v7}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Leaa;->d:Ljava/lang/Object;

    invoke-virtual {p0, v7}, Leaa;->b(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v5, p0, Leaa;->d:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    .line 137
    .local v5, "object":Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    iget-object v7, p0, Leaa;->j:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_1
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->summary:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 146
    iget-object v7, p0, Leaa;->k:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_2
    iget-boolean v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->isClicked:Z

    if-eqz v7, :cond_4

    .line 154
    const-string/jumbo v7, "im"

    const-string/jumbo v8, "PushTaskHeaderHolder"

    const-string/jumbo v9, "refreshView, showCount"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v5}, Leaa;->a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V

    .line 165
    :goto_3
    iget-object v7, p0, Leaa;->l:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->redTextColor:Ljava/lang/String;

    sget v9, Lctk$c;->text_color_red:I

    invoke-direct {p0, v8, v9}, Leaa;->a(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v7, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 168
    .local v6, "redBgShape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->redBgColor:Ljava/lang/String;

    sget v8, Lctk$c;->text_color_white:I

    invoke-direct {p0, v7, v8}, Leaa;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 170
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->icon:Ljava/lang/String;

    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 171
    iget-object v7, p0, Leaa;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 172
    iget-object v7, p0, Leaa;->i:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :goto_4
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgImage:Ljava/lang/String;

    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 195
    const/4 v4, 0x0

    .line 197
    .local v4, "mediaUrl":Ljava/lang/String;
    :try_start_0
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgImage:Ljava/lang/String;

    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 202
    :goto_5
    if-eqz v4, :cond_8

    .line 203
    iget-object v7, p0, Leaa;->g:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v7, p0, Leaa;->m:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v8, p0, Leaa;->g:Landroid/view/View;

    invoke-interface {v7, v8, v4, v13}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 212
    .end local v4    # "mediaUrl":Ljava/lang/String;
    :goto_6
    iget-object v7, p0, Leaa;->f:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 213
    .local v0, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->bgColor:Ljava/lang/String;

    sget v8, Lctk$c;->text_color_blue:I

    invoke-direct {p0, v7, v8}, Leaa;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 214
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->borderColor:Ljava/lang/String;

    sget v8, Lctk$c;->text_color_blue:I

    invoke-direct {p0, v7, v8}, Leaa;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v14, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 217
    iget-wide v8, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->expiredTime:J

    invoke-static {}, Lcms;->u()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 218
    .local v2, "delayInMills":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_a

    .line 219
    invoke-static {}, Leal;->a()Leal;

    move-result-object v7

    invoke-virtual {v7}, Leal;->c()V

    goto/16 :goto_0

    .line 140
    .end local v0    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "delayInMills":J
    .end local v6    # "redBgShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    iget-object v7, p0, Leaa;->j:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v7, p0, Leaa;->j:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v7, p0, Leaa;->j:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->titleColor:Ljava/lang/String;

    sget v9, Lctk$c;->ui_common_cell_bg_color:I

    invoke-direct {p0, v8, v9}, Leaa;->a(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 148
    :cond_3
    iget-object v7, p0, Leaa;->k:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v7, p0, Leaa;->k:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->summary:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v7, p0, Leaa;->k:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->summaryColor:Ljava/lang/String;

    sget v9, Lctk$c;->text_color_white_alpha_60:I

    invoke-direct {p0, v8, v9}, Leaa;->a(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 157
    :cond_4
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->text:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 158
    iget-object v7, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 160
    :cond_5
    iget-object v7, p0, Leaa;->l:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v7, p0, Leaa;->l:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v7, p0, Leaa;->l:Landroid/widget/TextView;

    sget v8, Lctk$e;->im_bg_corner_white:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 174
    .restart local v6    # "redBgShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_6
    iget-object v7, p0, Leaa;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 175
    iget-object v7, p0, Leaa;->i:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    const/4 v4, 0x0

    .line 179
    .restart local v4    # "mediaUrl":Ljava/lang/String;
    :try_start_1
    iget-object v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->icon:Ljava/lang/String;

    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 185
    :goto_7
    if-eqz v4, :cond_7

    .line 186
    iget-object v7, p0, Leaa;->m:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v8, p0, Leaa;->i:Landroid/widget/ImageView;

    invoke-interface {v7, v8, v4, v13}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_4

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "me":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 182
    const-string/jumbo v7, "im"

    const-string/jumbo v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "icon:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->icon:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 189
    .end local v1    # "me":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_7
    iget-object v7, p0, Leaa;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 190
    iget-object v7, p0, Leaa;->i:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 198
    :catch_1
    move-exception v1

    .line 199
    .restart local v1    # "me":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_5

    .line 206
    .end local v1    # "me":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_8
    iget-object v7, p0, Leaa;->g:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 209
    .end local v4    # "mediaUrl":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Leaa;->g:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 222
    .restart local v0    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    .restart local v2    # "delayInMills":J
    :cond_a
    iget-object v7, p0, Leaa;->n:Landroid/os/Handler;

    if-eqz v7, :cond_b

    .line 223
    iget-object v7, p0, Leaa;->n:Landroid/os/Handler;

    invoke-virtual {v7, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    iget-object v7, p0, Leaa;->n:Landroid/os/Handler;

    invoke-virtual {v7, v14, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 227
    :cond_b
    iget-boolean v7, v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->shouldShake:Z

    if-eqz v7, :cond_0

    .line 228
    invoke-direct {p0}, Leaa;->e()V

    goto/16 :goto_0
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    iget-object v1, p0, Leaa;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Leaa;->d:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, p0, Leaa;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    .line 261
    .local v0, "object":Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lctk$f;->task_top_tip:I

    if-ne v1, v2, :cond_3

    .line 262
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "PushTaskHeaderHolder"

    const-string/jumbo v3, "guide_TaskCenter_view_click"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->taskUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-static {}, Leal;->a()Leal;

    move-result-object v1

    invoke-virtual {v1}, Leal;->c()V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Leaa;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->taskUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->isClicked:Z

    .line 269
    invoke-static {}, Leal;->a()Leal;

    move-result-object v1

    invoke-virtual {v1, v0}, Leal;->b(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V

    .line 271
    invoke-direct {p0, v0}, Leaa;->a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lctk$f;->tv_label:I

    if-ne v1, v2, :cond_0

    .line 274
    invoke-direct {p0}, Leaa;->e()V

    goto :goto_0
.end method
