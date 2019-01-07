.class public final Ldkj;
.super Ljava/lang/Object;
.source "QuickPraiseController.java"

# interfaces
.implements Ldct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldkj$a;
    }
.end annotation


# instance fields
.field private A:Lcom/alibaba/doraemon/image/ImageMagician;

.field private B:Ldkj$a;

.field private C:Z

.field public a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field d:I

.field e:Landroid/animation/ValueAnimator;

.field f:I

.field g:I

.field public h:Z

.field i:J

.field public j:Landroid/app/Activity;

.field k:J

.field public l:Ldro;

.field public m:Z

.field public n:Ldpy;

.field o:Z

.field public p:Ldct$a;

.field public q:Ldki;

.field public r:Lcom/alibaba/wukong/im/Conversation;

.field public s:Ldki$a;

.field public t:Ldpy$a;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private w:Landroid/view/View;

.field private x:Landroid/animation/ValueAnimator;

.field private y:I

.field private z:Ldrn;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Ldpy;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pressView"    # Landroid/view/View;
    .param p3, "animationView"    # Landroid/widget/ImageView;
    .param p4, "moveView"    # Landroid/view/View;
    .param p5, "guideView"    # Landroid/view/View;
    .param p6, "imEmotionManager"    # Ldpy;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldkj;->u:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "pref_key_show_quick_guide"

    iput-object v0, p0, Ldkj;->v:Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldkj;->o:Z

    .line 169
    new-instance v0, Ldkj$2;

    invoke-direct {v0, p0}, Ldkj$2;-><init>(Ldkj;)V

    iput-object v0, p0, Ldkj;->s:Ldki$a;

    .line 180
    new-instance v0, Ldkj$3;

    invoke-direct {v0, p0}, Ldkj$3;-><init>(Ldkj;)V

    iput-object v0, p0, Ldkj;->t:Ldpy$a;

    .line 112
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "QuickPraiseController params cannot be null, except GuideView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput-object p1, p0, Ldkj;->j:Landroid/app/Activity;

    .line 116
    iput-object p2, p0, Ldkj;->a:Landroid/view/View;

    .line 117
    iput-object p3, p0, Ldkj;->b:Landroid/widget/ImageView;

    .line 118
    iput-object p4, p0, Ldkj;->w:Landroid/view/View;

    .line 119
    iput-object p5, p0, Ldkj;->c:Landroid/view/View;

    .line 120
    iget-object v0, p0, Ldkj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43070000    # 135.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ldkj;->y:I

    .line 121
    new-instance v0, Ldkj$a;

    invoke-direct {v0, p0}, Ldkj$a;-><init>(Ldkj;)V

    iput-object v0, p0, Ldkj;->B:Ldkj$a;

    .line 122
    iget-object v0, p0, Ldkj;->a:Landroid/view/View;

    iget-object v1, p0, Ldkj;->B:Ldkj$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v0, p0, Ldkj;->j:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Ldkj;->d:I

    .line 124
    iget v0, p0, Ldkj;->y:I

    iput v0, p0, Ldkj;->f:I

    .line 125
    iget v0, p0, Ldkj;->y:I

    iput v0, p0, Ldkj;->g:I

    .line 126
    iget-object v0, p0, Ldkj;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Ldkj;->c:Landroid/view/View;

    new-instance v1, Ldkj$1;

    invoke-direct {v1, p0}, Ldkj$1;-><init>(Ldkj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldkj;->A:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 135
    iget-object v0, p0, Ldkj;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iput-object p6, p0, Ldkj;->n:Ldpy;

    .line 140
    iget-object v0, p0, Ldkj;->n:Ldpy;

    iget-object v1, p0, Ldkj;->t:Ldpy$a;

    invoke-virtual {v0, v1}, Ldpy;->a(Ldpy$a;)V

    .line 141
    iget-object v0, p0, Ldkj;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Ldkj;->n:Ldpy;

    .line 1603
    iget-object v0, v0, Ldpy;->i:Ldro;

    .line 142
    iput-object v0, p0, Ldkj;->l:Ldro;

    .line 143
    iget-object v0, p0, Ldkj;->l:Ldro;

    if-nez v0, :cond_4

    .line 144
    invoke-direct {p0}, Ldkj;->f()Ldro;

    move-result-object v0

    iput-object v0, p0, Ldkj;->l:Ldro;

    .line 145
    iget-object v0, p0, Ldkj;->n:Ldpy;

    invoke-virtual {v0}, Ldpy;->a()V

    .line 151
    :cond_3
    :goto_0
    return-void

    .line 147
    :cond_4
    iget-object v0, p0, Ldkj;->l:Ldro;

    invoke-virtual {v0}, Ldro;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    invoke-direct {p0}, Ldkj;->f()Ldro;

    move-result-object v0

    iput-object v0, p0, Ldkj;->l:Ldro;

    goto :goto_0
.end method

.method static synthetic a(Ldkj;IIFF)F
    .locals 6
    .param p0, "x0"    # Ldkj;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 55
    .line 6478
    float-to-double v0, p3

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    float-to-double v4, p4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 55
    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6
    .param p0, "mediaIdStr"    # Ljava/lang/String;

    .prologue
    .line 679
    const/4 v0, 0x1

    .line 680
    .local v0, "emotionType":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 681
    const/4 v4, 0x1

    .line 704
    :goto_0
    return v4

    .line 684
    :cond_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 686
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v2

    .line 687
    .local v2, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    .line 688
    const/4 v0, 0x2

    .end local v2    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_1
    :goto_1
    move v4, v0

    .line 704
    goto :goto_0

    .line 690
    :catch_0
    move-exception v1

    .line 691
    .local v1, "ex":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 694
    .end local v1    # "ex":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 695
    const-string/jumbo v4, ".gif"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 696
    const/4 v0, 0x2

    goto :goto_1

    .line 698
    :cond_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 699
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 700
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "urlPrefix"    # Ljava/lang/String;
    .param p1, "praiseUuid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 727
    invoke-static {}, Ldkj;->d()Z

    move-result v4

    if-nez v4, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-object v3

    .line 730
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 737
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 739
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_im"

    const-string/jumbo v5, "quick_praise_default_url"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "serverUrl":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 741
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 743
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 744
    const-string/jumbo v1, "https://h5.dingtalk.com/praiseStory/index.html?dd_func_rt=true&dd_rt_type=1"

    .line 745
    .local v1, "realUrlPrefix":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    .line 746
    .local v0, "devMode":I
    sget v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v0, v3, :cond_4

    .line 747
    const-string/jumbo v1, "https://pre-h5.dingtalk.com/praiseStory/index.html?dd_func_rt=true&dd_rt_type=1"

    .line 757
    .end local v0    # "devMode":I
    .end local v2    # "serverUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 758
    const-string/jumbo v3, "uuid"

    invoke-static {v1, v3, p1}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 748
    .restart local v0    # "devMode":I
    .restart local v2    # "serverUrl":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_3

    .line 749
    const-string/jumbo v1, "http://h5.alibaba.net/praiseStory/index.html?dd_func_rt=true&dd_rt_type=1"

    goto :goto_1

    .line 752
    .end local v0    # "devMode":I
    .end local v1    # "realUrlPrefix":Ljava/lang/String;
    :cond_5
    move-object v1, v2

    .restart local v1    # "realUrlPrefix":Ljava/lang/String;
    goto :goto_1

    .line 755
    .end local v1    # "realUrlPrefix":Ljava/lang/String;
    .end local v2    # "serverUrl":Ljava/lang/String;
    :cond_6
    move-object v1, p0

    .restart local v1    # "realUrlPrefix":Ljava/lang/String;
    goto :goto_1
.end method

.method static synthetic a(Ldkj;)V
    .locals 6
    .param p0, "x0"    # Ldkj;

    .prologue
    .line 55
    .line 4207
    iget-object v0, p0, Ldkj;->n:Ldpy;

    .line 4603
    iget-object v0, v0, Ldpy;->i:Ldro;

    .line 4207
    iput-object v0, p0, Ldkj;->l:Ldro;

    .line 4209
    iget-object v0, p0, Ldkj;->l:Ldro;

    if-nez v0, :cond_3

    .line 4210
    invoke-direct {p0}, Ldkj;->f()Ldro;

    move-result-object v0

    iput-object v0, p0, Ldkj;->l:Ldro;

    .line 4217
    :cond_0
    :goto_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_praise_belong_org"

    .line 5083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4217
    if-eqz v0, :cond_1

    iget-object v0, p0, Ldkj;->q:Ldki;

    if-eqz v0, :cond_1

    .line 4218
    iget-object v1, p0, Ldkj;->q:Ldki;

    iget-object v2, p0, Ldkj;->l:Ldro;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4219
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v3, p0, Ldkj;->s:Ldki$a;

    const-class v4, Ldki$a;

    iget-object v5, p0, Ldkj;->j:Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldki$a;

    .line 4218
    invoke-virtual {v1, v2, v0}, Ldki;->a(Ldro;Ldki$a;)Ldro;

    move-result-object v0

    iput-object v0, p0, Ldkj;->l:Ldro;

    .line 4223
    :cond_1
    iget-object v0, p0, Ldkj;->B:Ldkj$a;

    .line 5377
    iget-boolean v0, v0, Ldkj$a;->a:Z

    .line 4223
    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldkj;->h:Z

    if-nez v0, :cond_2

    .line 4224
    invoke-direct {p0}, Ldkj;->e()V

    .line 55
    :cond_2
    return-void

    .line 4212
    :cond_3
    iget-object v0, p0, Ldkj;->l:Ldro;

    invoke-virtual {v0}, Ldro;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4213
    invoke-direct {p0}, Ldkj;->f()Ldro;

    move-result-object v0

    iput-object v0, p0, Ldkj;->l:Ldro;

    goto :goto_0
.end method

.method static synthetic a(Ldkj;I)V
    .locals 6
    .param p0, "x0"    # Ldkj;
    .param p1, "x1"    # I

    .prologue
    const-wide/16 v4, -0xa

    .line 55
    .line 6555
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldkj;->h:Z

    .line 6556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldkj;->k:J

    .line 6557
    iget-object v0, p0, Ldkj;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 6558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldkj;->i:J

    .line 6559
    const/4 v0, 0x0

    .line 6560
    packed-switch p1, :pswitch_data_0

    .line 6571
    :goto_0
    iget-object v1, p0, Ldkj;->p:Ldct$a;

    if-eqz v1, :cond_0

    .line 6572
    iget-object v1, p0, Ldkj;->p:Ldct$a;

    invoke-interface {v1, v0}, Ldct$a;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V

    :goto_1
    return-void

    .line 6628
    :pswitch_0
    invoke-direct {p0}, Ldkj;->h()V

    .line 6629
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;-><init>()V

    .line 6630
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->emotionId:J

    .line 6631
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->emotionMediaId:Ljava/lang/String;

    .line 6632
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->packageId:J

    .line 6633
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->c:Ljava/lang/String;

    invoke-static {v1}, Ldkj;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->type:I

    .line 6634
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget v1, v1, Ldrn;->d:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseType:I

    .line 6635
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->urlPrefix:Ljava/lang/String;

    .line 6636
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseUuid:Ljava/lang/String;

    .line 6637
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->name:Ljava/lang/String;

    .line 6638
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->thumbMediaId:Ljava/lang/String;

    goto :goto_0

    .line 6643
    :pswitch_1
    invoke-direct {p0}, Ldkj;->h()V

    .line 6644
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;-><init>()V

    .line 6645
    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->emotionId:J

    .line 6646
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->emotionMediaId:Ljava/lang/String;

    .line 6647
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->packageId:J

    .line 6648
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->b:Ljava/lang/String;

    invoke-static {v1}, Ldkj;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->type:I

    .line 6649
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget v1, v1, Ldrn;->d:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseType:I

    .line 6650
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->urlPrefix:Ljava/lang/String;

    .line 6651
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseUuid:Ljava/lang/String;

    .line 6652
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->name:Ljava/lang/String;

    .line 6653
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->thumbMediaId:Ljava/lang/String;

    goto/16 :goto_0

    .line 6658
    :pswitch_2
    invoke-direct {p0}, Ldkj;->h()V

    .line 6659
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;-><init>()V

    .line 6660
    const-wide/16 v2, 0x3

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->emotionId:J

    .line 6661
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->emotionMediaId:Ljava/lang/String;

    .line 6662
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->packageId:J

    .line 6663
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->a:Ljava/lang/String;

    invoke-static {v1}, Ldkj;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->type:I

    .line 6664
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget v1, v1, Ldrn;->d:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseType:I

    .line 6665
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->urlPrefix:Ljava/lang/String;

    .line 6666
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseUuid:Ljava/lang/String;

    .line 6667
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->name:Ljava/lang/String;

    .line 6668
    iget-object v1, p0, Ldkj;->z:Ldrn;

    iget-object v1, v1, Ldrn;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->thumbMediaId:Ljava/lang/String;

    goto/16 :goto_0

    .line 6574
    :cond_0
    invoke-virtual {p0}, Ldkj;->a()V

    goto/16 :goto_1

    .line 6560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Ldkj;Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "x0"    # Ldkj;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    .line 5423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    :pswitch_0
    return-void

    .line 5426
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldkj;->o:Z

    goto :goto_0

    .line 5423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Ldkj;)V
    .locals 2
    .param p0, "x0"    # Ldkj;

    .prologue
    .line 55
    .line 5433
    iget-object v0, p0, Ldkj;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    return-void
.end method

.method static synthetic c(Ldkj;)V
    .locals 10
    .param p0, "x0"    # Ldkj;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v9, 0x43fa0000    # 500.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 55
    .line 5483
    iget-object v0, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5486
    :cond_0
    iget-object v0, p0, Ldkj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    .line 5487
    cmpl-float v4, v0, v8

    if-ltz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ldkj;->i:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x14

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-wide v4, p0, Ldkj;->i:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    :cond_1
    move v0, v1

    .line 5490
    :cond_2
    iget-object v4, p0, Ldkj;->e:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    .line 5491
    iget-object v1, p0, Ldkj;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    move v1, v0

    .line 5496
    :cond_3
    const v0, 0x3ecccccd    # 0.4f

    add-float v4, v1, v0

    .line 5497
    const/4 v0, 0x2

    .line 5498
    const v5, 0x3f333333    # 0.7f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_6

    move v0, v2

    .line 5504
    :cond_4
    :goto_0
    mul-float/2addr v1, v9

    float-to-int v1, v1

    .line 5505
    mul-float v5, v9, v4

    float-to-int v5, v5

    .line 5506
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v1, v6, v2

    add-int/lit16 v1, v5, 0x1388

    aput v1, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    .line 5509
    iget-object v1, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5510
    iget-object v1, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    new-instance v2, Ldkj$5;

    invoke-direct {v2, p0, v5, v4, v0}, Ldkj$5;-><init>(Ldkj;IFI)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5539
    iget-object v1, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    new-instance v2, Ldkj$6;

    invoke-direct {v2, p0, v0}, Ldkj$6;-><init>(Ldkj;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5548
    iget-object v0, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x157c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5549
    iget-object v0, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Ldkj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 5550
    iget-object v0, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 55
    :cond_5
    return-void

    .line 5500
    :cond_6
    cmpg-float v5, v4, v8

    if-gez v5, :cond_4

    move v0, v3

    .line 5501
    goto :goto_0
.end method

.method public static d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 763
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_op_pr_with_wv"

    .line 4083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 763
    if-eqz v1, :cond_0

    .line 764
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "dt_im_chat_praise_story_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 229
    iget-object v0, p0, Ldkj;->l:Ldro;

    if-eqz v0, :cond_2

    .line 230
    iget-object v1, p0, Ldkj;->l:Ldro;

    .line 2073
    invoke-virtual {v1}, Ldro;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2076
    iget-object v0, v1, Ldro;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Ldro;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move-object v0, v3

    .line 230
    :cond_1
    :goto_0
    iput-object v0, p0, Ldkj;->z:Ldrn;

    .line 232
    :cond_2
    invoke-direct {p0}, Ldkj;->h()V

    .line 233
    iget-object v0, p0, Ldkj;->z:Ldrn;

    iget-object v2, v0, Ldrn;->c:Ljava/lang/String;

    .line 2239
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2241
    :try_start_0
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 2242
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_e

    .line 2245
    :goto_1
    :try_start_1
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2253
    :cond_3
    :goto_2
    iget-object v0, p0, Ldkj;->A:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Ldkj;->b:Landroid/widget/ImageView;

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 234
    return-void

    .line 2078
    :cond_4
    iget-object v0, v1, Ldro;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 2079
    iget-object v0, v1, Ldro;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrn;

    goto :goto_0

    .line 2081
    :cond_5
    iget-wide v8, v1, Ldro;->c:J

    cmp-long v0, v8, v12

    if-gez v0, :cond_8

    .line 2082
    iput-wide v12, v1, Ldro;->c:J

    .line 2083
    iget-object v0, v1, Ldro;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrn;

    .line 2084
    if-eqz v0, :cond_6

    .line 2087
    iget v7, v0, Ldrn;->e:I

    if-gtz v7, :cond_7

    .line 2088
    iput v5, v0, Ldrn;->e:I

    .line 2090
    :cond_7
    iget-wide v8, v1, Ldro;->c:J

    iget v0, v0, Ldrn;->e:I

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, v1, Ldro;->c:J

    goto :goto_3

    .line 2093
    :cond_8
    iget-wide v8, v1, Ldro;->c:J

    cmp-long v0, v8, v12

    if-gtz v0, :cond_a

    .line 2094
    iput-wide v12, v1, Ldro;->c:J

    :cond_9
    move-object v0, v3

    .line 2111
    goto :goto_0

    .line 2097
    :cond_a
    invoke-virtual {v1}, Ldro;->b()V

    .line 2098
    iget-wide v8, v1, Ldro;->c:J

    long-to-float v0, v8

    iget-object v2, v1, Ldro;->d:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-long v8, v0

    .line 2100
    iget-object v0, v1, Ldro;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrn;

    .line 2101
    if-eqz v0, :cond_b

    .line 2104
    int-to-long v10, v1

    cmp-long v7, v8, v10

    if-ltz v7, :cond_c

    iget v7, v0, Ldrn;->e:I

    add-int/2addr v7, v1

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 2107
    :cond_c
    iget v0, v0, Ldrn;->e:I

    add-int/2addr v0, v1

    move v1, v0

    .line 2108
    goto :goto_4

    .line 2246
    :catch_0
    move-exception v0

    move v4, v6

    .line 2247
    :goto_5
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 2249
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v6

    goto/16 :goto_2

    .line 2246
    :catch_1
    move-exception v0

    goto :goto_5

    :cond_e
    move v4, v6

    goto/16 :goto_1
.end method

.method private f()Ldro;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    new-instance v2, Ldro;

    invoke-direct {v2}, Ldro;-><init>()V

    .line 261
    .local v2, "resultObject":Ldro;
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Ldro;->b:J

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "emotionObjectList":Ljava/util/List;, "Ljava/util/List<Ldrn;>;"
    invoke-static {}, Ldkj;->g()Ldrn;

    move-result-object v0

    .line 264
    .local v0, "emotionObject":Ldrn;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iput-object v1, v2, Ldro;->a:Ljava/util/List;

    .line 266
    return-object v2
.end method

.method private static g()Ldrn;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ldrn;

    invoke-direct {v0}, Ldrn;-><init>()V

    .line 272
    .local v0, "emotionObject":Ldrn;
    const-string/jumbo v1, "@lALOhgeuAM0BDs0BDg"

    iput-object v1, v0, Ldrn;->c:Ljava/lang/String;

    .line 273
    const-string/jumbo v1, "@lALOhi8ekMy0zLQ"

    iput-object v1, v0, Ldrn;->b:Ljava/lang/String;

    .line 274
    const-string/jumbo v1, "@lALOhgeuOWpq"

    iput-object v1, v0, Ldrn;->a:Ljava/lang/String;

    .line 275
    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Ldkj;->z:Ldrn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldkj;->z:Ldrn;

    invoke-virtual {v0}, Ldrn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    :cond_0
    invoke-static {}, Ldkj;->g()Ldrn;

    move-result-object v0

    iput-object v0, p0, Ldkj;->z:Ldrn;

    .line 676
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 583
    iget-boolean v0, p0, Ldkj;->h:Z

    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {p0}, Ldkj;->b()V

    .line 587
    iget-object v0, p0, Ldkj;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 588
    iput-boolean v1, p0, Ldkj;->h:Z

    .line 589
    invoke-direct {p0}, Ldkj;->e()V

    .line 590
    iget-boolean v0, p0, Ldkj;->C:Z

    if-nez v0, :cond_0

    .line 3199
    iget-boolean v0, p0, Ldkj;->C:Z

    if-nez v0, :cond_0

    .line 3202
    iput-boolean v2, p0, Ldkj;->C:Z

    .line 3203
    iget-object v0, p0, Ldkj;->n:Ldpy;

    invoke-virtual {v0, v1}, Ldpy;->a(Z)V

    goto :goto_0
.end method

.method a(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 610
    iget-object v0, p0, Ldkj;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Ldkj;->w:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 613
    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldkj;->a(F)V

    .line 597
    iget-object v0, p0, Ldkj;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Ldkj;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Ldkj;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 601
    :cond_0
    iput-object v2, p0, Ldkj;->e:Landroid/animation/ValueAnimator;

    .line 602
    iget-object v0, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 605
    :cond_1
    iput-object v2, p0, Ldkj;->x:Landroid/animation/ValueAnimator;

    .line 606
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldkj;->i:J

    .line 607
    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 622
    iget-object v0, p0, Ldkj;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldkj;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Ldkj;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :cond_0
    return-void
.end method
