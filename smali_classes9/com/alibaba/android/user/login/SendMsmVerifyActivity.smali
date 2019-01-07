.class public Lcom/alibaba/android/user/login/SendMsmVerifyActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SendMsmVerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

.field private c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

.field private h:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 43
    const-string/jumbo v0, "SendMsmVerifyActivity"

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->h:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->btn_send_up_msm:I

    if-ne v1, v2, :cond_3

    .line 211
    const-string/jumbo v1, "bh_register_uplink_sms_to_send"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    .line 4435
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4447
    new-instance v3, Lfas$10;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lfas$10;-><init>(Lfas;Lcma;)V

    .line 4462
    iget-object v1, v1, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->startUpstreamTokenLogin(Ljava/lang/String;Liyv;)V

    .line 220
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "smsIntent":Landroid/content/Intent;
    const-string/jumbo v1, "smsto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v1, "sms_body"

    iget-object v2, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    .end local v0    # "smsIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->ll_check:I

    if-ne v1, v2, :cond_0

    .line 228
    const-string/jumbo v1, "bh_register_uplink_sms_to_check"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 229
    iput-boolean v5, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->j:Z

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->f:Landroid/widget/ProgressBar;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->e:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_register_up_sms_checking:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-boolean v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->k:Z

    if-nez v1, :cond_4

    .line 235
    const-string/jumbo v1, "click check before upstream msm arrive"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->h:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    if-nez v1, :cond_5

    .line 239
    const-string/jumbo v1, "user"

    const-string/jumbo v2, "SendMsmVerifyActivity"

    const-string/jumbo v3, "btn_check click but mVerifyPresenter is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->e:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_register_up_sms_check:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->h:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/android/user/login/verify/VerifyContract$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lezg$j;->user_activity_send_sms_verify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->hideToolbarDivide()V

    .line 1184
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1186
    if-eqz v1, :cond_1

    .line 1190
    const-string/jumbo v0, "intent_key_up_sms_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    .line 1191
    const-string/jumbo v0, "intent_key_verify_context"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    if-nez v0, :cond_1

    .line 1194
    :cond_0
    const-string/jumbo v0, "SendMsmVerifyActivity"

    const-string/jumbo v1, "param invalid"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->finish()V

    .line 2137
    :cond_1
    sget v0, Lezg$h;->tv_sms_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2139
    sget v1, Lezg$l;->dt_register_up_sms_tip_at3:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2141
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2143
    iget-object v3, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2144
    iget-object v4, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2145
    iget-object v5, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2147
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v5, v3, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2148
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v5, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2149
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v4, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2151
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    sget v0, Lezg$h;->btn_send_up_msm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->d:Landroid/widget/Button;

    .line 2154
    sget v0, Lezg$h;->tv_check_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->e:Landroid/widget/TextView;

    .line 2155
    sget v0, Lezg$h;->view_progress_checking:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->f:Landroid/widget/ProgressBar;

    .line 2157
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2158
    sget v0, Lezg$h;->ll_check:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2160
    new-instance v0, Lfro;

    new-instance v1, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;-><init>(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)V

    invoke-direct {v0, p0, v1}, Lfro;-><init>(Landroid/app/Activity;Lfro$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->g:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 2180
    new-instance v0, Lfrn;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->g:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    invoke-direct {v0, p0, v1}, Lfrn;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/login/verify/VerifyContract$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->h:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    .line 3101
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->i:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 3102
    new-instance v0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;-><init>(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->i:Landroid/content/BroadcastReceiver;

    .line 3131
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3132
    const-string/jumbo v1, "action_key_upstream_sms_arrive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3133
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4079
    new-instance v0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$1;-><init>(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)V

    .line 4095
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 4096
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/auth/AuthService;->authDevice(Lcom/alibaba/wukong/Callback;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 201
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 206
    :cond_0
    return-void
.end method
