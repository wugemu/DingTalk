.class public Lcom/alibaba/android/user/login/VerifyPhoneActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:I

.field c:Landroid/widget/TextView;

.field d:[Lcom/alibaba/android/user/widget/NumberItemView;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/ScrollView;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;

.field n:Landroid/os/Handler;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

.field private t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private v:Ljava/lang/String;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 100
    const/16 v0, 0x2d

    iput v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/user/widget/NumberItemView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    .line 118
    iput-boolean v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->p:Z

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->r:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 129
    new-instance v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$1;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->m:Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;

    .line 136
    new-instance v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$12;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->n:Landroid/os/Handler;

    .line 151
    iput-boolean v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->s:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 91
    .line 4640
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->i:Ljava/lang/String;

    .line 4641
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4643
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "vcode_login_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4644
    const-string/jumbo v0, "changeMobile"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4645
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "-"

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->i:Ljava/lang/String;

    .line 4870
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->showLoadingDialog()V

    .line 4871
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4872
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$l;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Ljava/lang/String;)V

    .line 4873
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->dismissLoadingDialog()V

    .line 4649
    :cond_0
    :goto_0
    return-void

    .line 4876
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v3, v1, v2, v0}, Lfac;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 4646
    :cond_2
    const-string/jumbo v0, "unregister"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4647
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->i:Ljava/lang/String;

    .line 4925
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "pref_logout_is_save_phone_number"

    invoke-static {v0, v2, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4926
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->showLoadingDialog()V

    .line 4927
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v1, v0}, Lfac;->c(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 4648
    :cond_3
    const-string/jumbo v0, "empty_pwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4649
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->i:Ljava/lang/String;

    .line 5606
    new-instance v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    .line 5633
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5634
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "-"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 5635
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    .line 5634
    invoke-interface {v2, v3, v1, v4, v0}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;ILcma;)V

    goto/16 :goto_0

    .line 4651
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4652
    const-string/jumbo v0, "contact_verification_code_next_btn_click"

    const-string/jumbo v1, "mobile_no=%s, region_info=%s, is_new=%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 4653
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 6315
    invoke-static {v8, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4655
    :cond_5
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "-"

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->j:Ljava/lang/String;

    .line 6692
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->showLoadingDialog()V

    .line 7104
    const-string/jumbo v0, "SignUpWithPwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 6693
    if-eqz v0, :cond_6

    .line 6694
    const-string/jumbo v0, "OLDUSER"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6695
    const-string/jumbo v0, "loginpage_codelogin_code_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 6701
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 6702
    const-string/jumbo v0, "login_alipay_messageVerifySucceed"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 6705
    :cond_7
    new-instance v0, Lfwt;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v8, v1, v2, v3}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6706
    invoke-virtual {v0}, Lfwt;->a()Lcfo;

    move-result-object v3

    .line 6709
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 6710
    const-string/jumbo v0, "VerifyPhoneLogin"

    invoke-static {v0, v7}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6697
    :cond_8
    const-string/jumbo v0, "loginpage_codelogin_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/text/style/ClickableSpan;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Landroid/text/style/ClickableSpan;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 91
    .line 7493
    iput p3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->r:I

    .line 7494
    new-instance v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 7515
    new-instance v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$3;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    .line 7539
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7540
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$l;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Ljava/lang/String;)V

    .line 7557
    :goto_0
    return-void

    .line 7543
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7544
    const-string/jumbo v3, "changeMobile"

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7545
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v3

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v4, Lcma;

    .line 7546
    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7545
    invoke-interface {v3, v2, v6, p3, v0}, Lezm;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0

    .line 7547
    :cond_1
    const-string/jumbo v1, "unregister"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7548
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v1

    const/16 v3, 0xc

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    .line 7549
    invoke-interface {v4, v0, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7548
    invoke-interface {v1, v2, v3, p3, v0}, Lezm;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0

    .line 7550
    :cond_2
    const-string/jumbo v1, "register"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7551
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v1

    const/16 v3, 0xe

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    .line 7552
    invoke-interface {v4, v0, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7551
    invoke-interface {v1, v2, v3, p3, v0}, Lezm;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0

    .line 7553
    :cond_3
    const-string/jumbo v1, "forgetPwd"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7554
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v1

    const/16 v3, 0xf

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    .line 7555
    invoke-interface {v4, v0, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7554
    invoke-interface {v1, v2, v3, p3, v0}, Lezm;->a(Ljava/lang/String;IILcma;)V

    goto/16 :goto_0

    .line 7556
    :cond_4
    const-string/jumbo v1, "empty_pwd"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7557
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v1

    const/16 v3, 0x11

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    .line 7558
    invoke-interface {v4, v0, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7557
    invoke-interface {v1, v2, v3, p3, v0}, Lezm;->a(Ljava/lang/String;IILcma;)V

    goto/16 :goto_0

    .line 7560
    :cond_5
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    .line 7561
    invoke-interface {v3, v0, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7560
    invoke-interface {v1, v2, v5, p3, v0}, Lezm;->a(Ljava/lang/String;IILcma;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    .line 7591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7595
    const-string/jumbo v0, "register"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7596
    const-string/jumbo v0, "mobile_no=%s,region_info=%s,is_new=%d,type=%s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "register"

    aput-object v2, v1, v5

    .line 8315
    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7596
    :cond_0
    :goto_0
    return-void

    .line 7597
    :cond_1
    const-string/jumbo v0, "changeMobile"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unregister"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    .line 7598
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "forgetPwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    .line 7599
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "empty_pwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    .line 7600
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7601
    const-string/jumbo v0, "mobile_no=%s,region_info=%s,is_new=%d,type=%s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "login"

    aput-object v2, v1, v5

    .line 9315
    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    .line 9567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9571
    const-string/jumbo v0, "register"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9572
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9573
    const-string/jumbo v0, "phone=%s,type=%s"

    new-array v1, v6, [Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "register"

    aput-object v2, v1, v5

    .line 10315
    invoke-static {v7, p1, v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9582
    :cond_0
    :goto_0
    return-void

    .line 9575
    :cond_1
    const-string/jumbo v0, "phone=%s,code=%s,type=%s"

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p4, v1, v5

    const-string/jumbo v2, "register"

    aput-object v2, v1, v6

    .line 11315
    invoke-static {v7, p1, v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9577
    :cond_2
    const-string/jumbo v0, "changeMobile"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unregister"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    .line 9578
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "forgetPwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    .line 9579
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "empty_pwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    .line 9580
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9581
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9582
    const-string/jumbo v0, "phone=%s,type=%s"

    new-array v1, v6, [Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "login"

    aput-object v2, v1, v5

    .line 12315
    invoke-static {v7, p1, v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9584
    :cond_3
    const-string/jumbo v0, "phone=%s,code=%s,type=%s"

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p4, v1, v5

    const-string/jumbo v2, "login"

    aput-object v2, v1, v6

    .line 13315
    invoke-static {v7, p1, v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;ZLjava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 91
    .line 15024
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15026
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Z)V

    .line 15030
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->finish()V

    .line 91
    return-void

    .line 15028
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lfqz;->a(Landroid/app/Activity;ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 351
    .local v1, "inputs":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 352
    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/NumberItemView;->setCursorVisibility(Z)V

    .line 351
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/NumberItemView;->setCursorVisibility(Z)V

    goto :goto_1

    .line 358
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "resultToEditProfile"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->dismissLoadingDialog()V

    .line 1037
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pwd.html"

    new-instance v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Z)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->finish()V

    .line 1048
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->s:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    return-object v0
.end method

.method private b()V
    .locals 18

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    if-lez v13, :cond_0

    .line 363
    sget v13, Lezg$l;->dt_register_re_fetch_verify_code_tip_during_count_down:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "getVerifyCodeStr":Ljava/lang/String;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "00:"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "countDownStr":Ljava/lang/String;
    sget v13, Lezg$l;->dt_login_count_timer:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "rawText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c:Landroid/widget/TextView;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, " "

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->n:Landroid/os/Handler;

    const/4 v14, 0x1

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 483
    .end local v2    # "countDownStr":Ljava/lang/String;
    .end local v6    # "rawText":Ljava/lang/String;
    :goto_0
    return-void

    .line 371
    .end local v5    # "getVerifyCodeStr":Ljava/lang/String;
    :cond_0
    sget v13, Lezg$l;->dt_login_resend_verfication_code:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 372
    .local v8, "sendSmsStr":Ljava/lang/String;
    sget v13, Lezg$l;->dt_login_voice_verify_code:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "dialPhoneStr":Ljava/lang/String;
    sget v13, Lezg$l;->dt_register_up_sms_verify_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 377
    .local v12, "upSmsStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->s:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->s:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->isValid()Z

    move-result v13

    if-nez v13, :cond_3

    .line 378
    :cond_1
    sget v13, Lezg$l;->dt_common_or_at2:I

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 384
    .restart local v5    # "getVerifyCodeStr":Ljava/lang/String;
    :goto_1
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 386
    .local v10, "spannableString":Landroid/text/SpannableString;
    new-instance v9, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v9, v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;)V

    .line 404
    .local v9, "smsSpan":Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
    new-instance v4, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;)V

    .line 442
    .local v4, "dialSpan":Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
    new-instance v11, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v11, v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;)V

    .line 473
    .local v11, "upSmsSpan":Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v10, v9, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 474
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v10, v4, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 476
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 477
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v10, v11, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 480
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c:Landroid/widget/TextView;

    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v13, v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 380
    .end local v4    # "dialSpan":Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
    .end local v5    # "getVerifyCodeStr":Ljava/lang/String;
    .end local v9    # "smsSpan":Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
    .end local v10    # "spannableString":Landroid/text/SpannableString;
    .end local v11    # "upSmsSpan":Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
    :cond_3
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, ", "

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v3, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "sendMsmAndDial":Ljava/lang/String;
    sget v13, Lezg$l;->dt_common_or_at2:I

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "getVerifyCodeStr":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    .line 4339
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4340
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4341
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4342
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/android/user/widget/NumberItemView;->getNumberTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4340
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4344
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/android/user/widget/NumberItemView;->getNumberTextView()Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 91
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNum"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 979
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    invoke-static {}, Lfxg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfls;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    const-string/jumbo v1, ""

    invoke-static {v1}, Lfls;->b(Ljava/lang/String;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-static {}, Lfls;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    new-instance v1, Lfrj;

    invoke-direct {v1, p0}, Lfrj;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v1}, Lfrj;->a()Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    move-result-object v0

    .line 988
    .local v0, "obj":Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->enabled:Z

    if-eqz v1, :cond_0

    .line 989
    invoke-static {p1}, Lfls;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1066
    .line 4071
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4072
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$13;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4080
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "reason":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1067
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    .line 15967
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.change_mobile_success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 15968
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 15969
    const-string/jumbo v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 15970
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 15971
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 15972
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 15973
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v0, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 15974
    invoke-static {}, Lfxg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    .line 16912
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16913
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$7;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16920
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 91
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    iget v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->r:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    .line 14003
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$9;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lfwu;->a(Lcma;)V

    .line 91
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    .line 14051
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->dismissLoadingDialog()V

    .line 14052
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setAppFront()V

    .line 14053
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Z)V

    .line 14054
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$11;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$11;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 14062
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->finish()V

    .line 91
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->w:Z

    return v0
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1144
    const-string/jumbo v0, "User_Input_auth_code"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1139
    const-string/jumbo v0, "a2o5v.11793165.0.0"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 680
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "vcode_back_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 681
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 682
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_sms_no_verification_code:I

    if-ne v0, v1, :cond_0

    .line 1110
    const-string/jumbo v0, "bh_register_cannot_get_smscode_link_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1112
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/not_receive_sms_code.html"

    new-instance v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$14;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1135
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    sget v0, Lezg$j;->activity_verify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->setContentView(I)V

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->hideToolbarDivide()V

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "TARGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "OLDUSER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->v:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "deviceSecurity"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->p:Z

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_sim_authorization_entry"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->w:Z

    .line 1176
    sget v0, Lezg$h;->sv_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f:Landroid/widget/ScrollView;

    .line 1177
    sget v0, Lezg$h;->tv_sms_no_verification_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->o:Landroid/view/View;

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 1181
    new-instance v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$15;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$15;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1196
    sget v0, Lezg$h;->tv_count_down:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c:Landroid/widget/TextView;

    .line 1197
    sget v0, Lezg$h;->et_verify_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e:Landroid/widget/EditText;

    .line 1198
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    sget v0, Lezg$h;->piv_verify_code_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/NumberItemView;

    aput-object v0, v1, v6

    .line 1199
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    sget v0, Lezg$h;->piv_verify_code_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/NumberItemView;

    aput-object v0, v1, v8

    .line 1200
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    sget v0, Lezg$h;->piv_verify_code_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/NumberItemView;

    aput-object v0, v1, v9

    .line 1201
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d:[Lcom/alibaba/android/user/widget/NumberItemView;

    sget v0, Lezg$h;->piv_verify_code_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/NumberItemView;

    aput-object v0, v1, v7

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$16;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1229
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "areaCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    .line 1230
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    .line 1231
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_third_party_user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->k:Ljava/lang/String;

    .line 1232
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->j:Ljava/lang/String;

    .line 1233
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tempCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->l:Ljava/lang/String;

    .line 1235
    sget v0, Lezg$l;->dt_user_login_verify_code_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1236
    new-array v2, v7, [Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v0, v2, v6

    const-string/jumbo v0, " "

    aput-object v0, v2, v8

    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    .line 1326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0xb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1328
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1329
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 1330
    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 1331
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1332
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    :cond_1
    aput-object v0, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1239
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lezg$e;->home_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1240
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1241
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1243
    sget v0, Lezg$h;->tv_phone_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1244
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1248
    sget v0, Lezg$h;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1249
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b()V

    .line 1254
    const-string/jumbo v0, "unregister"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1255
    sget v0, Lezg$l;->verify_unregister_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->setTitle(I)V

    .line 2264
    :goto_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_upstream_sms_verify"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2268
    new-instance v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$17;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$17;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    .line 2285
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2286
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lfas;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 169
    :cond_3
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "contact_verification_code_page_enter"

    const-string/jumbo v1, "mobile_no=%s, region_info=%s, is_new=%d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v3, v2, v8

    .line 172
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 2315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void

    .line 1257
    :cond_4
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1100
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 1101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 662
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 673
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 664
    :pswitch_0
    const-string/jumbo v0, "changeMobile"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3078
    invoke-static {p0}, Lcx;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 3080
    if-nez v0, :cond_0

    .line 3081
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " element in your manifest?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3088
    :cond_0
    invoke-static {p0, v0}, Lcx;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 667
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "vcode_back_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 671
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->finish()V

    goto :goto_1

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
