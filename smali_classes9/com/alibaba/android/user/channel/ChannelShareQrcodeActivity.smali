.class public Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChannelShareQrcodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;,
        Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/widget/ImageView;

.field private d:J

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private l:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

.field private m:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->d:J

    .line 331
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    const/4 v2, 0x1

    .line 41
    .line 3261
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3262
    const/4 v0, 0x0

    sget v1, Lezg$l;->saving_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 3264
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 2275
    invoke-direct {p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2276
    if-nez v0, :cond_1

    .line 2277
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->b()V

    .line 2278
    :goto_0
    return-void

    .line 2280
    :cond_1
    new-instance v1, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    invoke-direct {v1, v0, p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;-><init>(Landroid/graphics/Bitmap;Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->l:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    .line 2281
    sget-object v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->l:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 4197
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;-><init>(Ljava/lang/String;Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->m:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    .line 4198
    sget-object v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->m:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 5104
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 5106
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5107
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5108
    if-nez p3, :cond_0

    const/16 v0, 0x8

    .line 5110
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    .line 41
    .line 3286
    invoke-direct {p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3287
    if-eqz v1, :cond_0

    .line 3291
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v2, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v2}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 3292
    const-string/jumbo v2, "\u5c06\u670d\u52a1\u7a97\u4e8c\u7ef4\u7801\u5206\u4eab\u5230"

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Z)I

    move-result v0

    .line 3293
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3294
    if-nez v0, :cond_1

    .line 3295
    sget v0, Lezg$l;->share_no_apps:I

    invoke-static {v0}, Lcms;->a(I)V

    :cond_0
    :goto_0
    return-void

    .line 3296
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3297
    sget v0, Lezg$l;->share_not_support:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    :try_start_0
    sget v4, Lezg$h;->channel_rl_qrcode:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 239
    .local v3, "qrcodeBitmapRL":Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    .line 240
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 239
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    .line 250
    const/4 v0, 0x0

    .line 257
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object v0

    .line 243
    .end local v3    # "qrcodeBitmapRL":Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 244
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 245
    sget v4, Lezg$h;->channel_rl_qrcode:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 246
    .restart local v3    # "qrcodeBitmapRL":Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    .line 247
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 246
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 252
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    const/4 v1, 0x0

    .line 41
    .line 5192
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5193
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 271
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x8

    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v0, Lezg$j;->activity_channel_share_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->setContentView(I)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_invite_share_qrcode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    sget v0, Lezg$h;->channel_pb_load_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->e:Landroid/widget/ProgressBar;

    .line 79
    sget v0, Lezg$h;->corp_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 81
    sget v0, Lezg$h;->corp_name_tx:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->i:Landroid/widget/TextView;

    .line 83
    sget v0, Lezg$h;->auth_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->j:Landroid/widget/ImageView;

    .line 1093
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1094
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "corp_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1097
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v0

    invoke-interface {v0, v2}, Lfwc;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 1100
    :cond_0
    iput-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->d:J

    .line 1115
    sget v0, Lezg$h;->channel_iv_qr_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->c:Landroid/widget/ImageView;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1161
    const-class v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 1162
    new-instance v1, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;-><init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V

    .line 1188
    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->d:J

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/android/user/idl/services/ChannelIService;->getChannelInviteInfo(JLiyv;)V

    .line 2123
    sget v0, Lezg$h;->channel_qrcode_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->f:Landroid/view/View;

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$1;-><init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2130
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2132
    sget v0, Lezg$h;->channel_qrcode_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->g:Landroid/view/View;

    .line 2133
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$2;-><init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2139
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    iput-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->b:Landroid/graphics/Bitmap;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->l:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->l:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    iput-object v1, v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->m:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->m:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;

    iput-object v1, v0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .line 155
    :cond_2
    return-void
.end method
