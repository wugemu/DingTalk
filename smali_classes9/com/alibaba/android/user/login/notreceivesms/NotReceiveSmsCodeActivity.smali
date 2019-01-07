.class public Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "NotReceiveSmsCodeActivity.java"

# interfaces
.implements Lfrl$b;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lfrl$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private k:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

.field private l:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Lfrn;

.field private n:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

.field private o:Ljava/util/concurrent/CountDownLatch;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    .line 66
    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->h:Z

    .line 67
    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i:Z

    .line 84
    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object p1
.end method

.method private static a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "cellLayout"    # Landroid/view/View;
    .param p1, "iconBackgroundColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "iconString"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "hint"    # Ljava/lang/String;
    .param p5, "visibility"    # I

    .prologue
    .line 223
    sget v0, Lezg$h;->tag_recommend:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    sget v0, Lezg$h;->if_icon_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 225
    sget v0, Lezg$h;->if_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    sget v0, Lezg$h;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    sget v0, Lezg$h;->tv_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->k:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->n:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lfrn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->m:Lfrn;

    return-object v0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2268
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->dismissLoadingDialog()V

    .line 3264
    invoke-static {}, Lcms;->c()Z

    move-result v0

    .line 2270
    if-nez v0, :cond_1

    .line 2271
    iput-boolean v4, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    .line 2272
    iput-boolean v4, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->h:Z

    .line 2273
    iput-boolean v4, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i:Z

    .line 3282
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    if-eqz v0, :cond_2

    .line 3283
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 3287
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->h:Z

    if-eqz v0, :cond_3

    .line 3288
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 3292
    :goto_2
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i:Z

    if-eqz v0, :cond_4

    .line 3293
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 3298
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->h:Z

    if-nez v0, :cond_5

    .line 3299
    sget v0, Lezg$h;->tv_other_ways_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_4
    return-void

    .line 2275
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i:Z

    goto :goto_0

    .line 3285
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 3290
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 3295
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 3301
    :cond_5
    sget v0, Lezg$h;->tv_other_ways_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;)V
    .locals 1
    .param p1, "upstreamTokenObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    .line 313
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i()V

    .line 314
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    goto :goto_0
.end method

.method public final a(Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;)V
    .locals 1
    .param p1, "validRequest"    # Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->n:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    .line 325
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->p:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->h:Z

    .line 326
    invoke-direct {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i()V

    .line 327
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 362
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    .line 319
    invoke-direct {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i()V

    .line 320
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->h:Z

    .line 332
    invoke-direct {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->i()V

    .line 333
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->showLoadingDialog()V

    .line 124
    new-instance v0, Lfrm;

    invoke-direct {v0, p0}, Lfrm;-><init>(Lfrl$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->d:Lfrl$a;

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iput-boolean v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->g:Z

    .line 127
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->o:Ljava/util/concurrent/CountDownLatch;

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->d:Lfrl$a;

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lfrl$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->o:Ljava/util/concurrent/CountDownLatch;

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->d:Lfrl$a;

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lfrl$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->d:Lfrl$a;

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lfrl$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v13, 0x8

    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Lezg$j;->activity_not_receive_sms_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->setContentView(I)V

    .line 1231
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1232
    if-nez v1, :cond_1

    .line 1233
    const-string/jumbo v0, "NotReceiveSmsCodeActivity.initArgs: intent is null!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1234
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->finish()V

    move v11, v4

    .line 92
    .local v11, "initArgsSuccess":Z
    :goto_0
    if-nez v11, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->finish()V

    .line 2264
    :cond_0
    invoke-static {}, Lcms;->c()Z

    move-result v0

    .line 2138
    if-eqz v0, :cond_5

    .line 2139
    const-string/jumbo v2, "https://gw.alicdn.com/tfs/TB1ceZKgwoQMeJjy0FpXXcTxpXa-1000-470.png"

    .line 2143
    :goto_1
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2144
    sget v1, Lezg$h;->iv_hint_voice_call:I

    .line 2145
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move v6, v5

    move-object v7, v3

    .line 2144
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 2154
    sget v0, Lezg$h;->item_choice_send_sms:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a:Landroid/widget/LinearLayout;

    .line 2155
    iget-object v5, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a:Landroid/widget/LinearLayout;

    sget v0, Lezg$e;->ui_common_green1_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v6

    sget v0, Lezg$l;->icon_message_fill:I

    .line 2156
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v0, Lezg$l;->dt_register_initiative_send_sms_verify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Lezg$l;->dt_register_send_sms_fee_hint:I

    .line 2157
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v10, v4

    .line 2155
    invoke-static/range {v5 .. v10}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2159
    sget v0, Lezg$h;->item_choice_sim_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b:Landroid/widget/LinearLayout;

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b:Landroid/widget/LinearLayout;

    sget v1, Lezg$e;->ui_common_orange1_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    sget v2, Lezg$l;->icon_sim_fill:I

    .line 2161
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lezg$l;->dt_register_sim_authorize:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lezg$l;->dt_register_sim_authorize_card_insert_local_hint:I

    .line 2162
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v13

    .line 2160
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2164
    sget v0, Lezg$h;->item_choice_customer_service:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c:Landroid/widget/LinearLayout;

    .line 2165
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c:Landroid/widget/LinearLayout;

    sget v1, Lezg$e;->ui_common_blue1_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    sget v2, Lezg$l;->icon_service_fill:I

    .line 2166
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lezg$l;->dt_contact_customer_service:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lezg$l;->dt_register_contact_customer_service_to_solve:I

    .line 2167
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v13

    .line 2165
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2169
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2170
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2171
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2173
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;-><init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;-><init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2204
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$4;-><init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v12, Lfro;

    new-instance v0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;-><init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)V

    invoke-direct {v12, p0, v0}, Lfro;-><init>(Landroid/app/Activity;Lfro$a;)V

    .line 115
    .local v12, "mVerifyView":Lfro;
    new-instance v0, Lfrn;

    invoke-direct {v0, p0, v12}, Lfrn;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/login/verify/VerifyContract$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->m:Lfrn;

    .line 116
    return-void

    .line 1238
    .end local v11    # "initArgsSuccess":Z
    .end local v12    # "mVerifyView":Lfro;
    :cond_1
    const-string/jumbo v0, "intent_key_up_sms_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .line 1239
    const-string/jumbo v0, "intent_key_verify_context"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->k:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->k:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    if-nez v0, :cond_2

    .line 1241
    const-string/jumbo v0, "NotReceiveSmsCodeActivity.initArgs: verifyContext is null!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->finish()V

    move v11, v4

    .line 1243
    goto/16 :goto_0

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->k:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iget-object v0, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->e:Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->k:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iget-object v0, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->f:Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1248
    const-string/jumbo v0, "NotReceiveSmsCodeActivity.initArgs: areaCode is null!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->finish()V

    move v11, v4

    .line 1250
    goto/16 :goto_0

    .line 1252
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1253
    const-string/jumbo v0, "NotReceiveSmsCodeActivity.initArgs: phoneNumber is null!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->finish()V

    move v11, v4

    .line 1255
    goto/16 :goto_0

    .line 1258
    :cond_4
    const-string/jumbo v0, "show_sim_authorization_entry"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->p:Z

    move v11, v5

    .line 1260
    goto/16 :goto_0

    .line 2141
    .restart local v11    # "initArgsSuccess":Z
    :cond_5
    const-string/jumbo v2, "https://gw.alicdn.com/tfs/TB1eeZKgwoQMeJjy0FpXXcTxpXa-1000-470.png"

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 367
    .line 368
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 371
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 372
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lfrl$a;

    .line 4344
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->d:Lfrl$a;

    .line 51
    return-void
.end method
