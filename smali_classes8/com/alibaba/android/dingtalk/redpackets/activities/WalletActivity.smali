.class public Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "WalletActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcbk$b;


# instance fields
.field private final a:I

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

.field private l:Lcbk$a;

.field private m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->a:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    .prologue
    const/4 v2, 0x0

    .line 53
    .line 8224
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 8225
    sget v1, Lcaj$f;->dt_pay_alipay_bind_success_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 9230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 10226
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 8228
    sget v1, Lcaj$f;->dt_common_i_know:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 8229
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 10271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 8235
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    .line 10319
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10320
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 10321
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10322
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v1, p1, :cond_0

    .line 10323
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 10324
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)Lcbk$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->l:Lcbk$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    .prologue
    .line 53
    .line 10330
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10331
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 10332
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10333
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    return v0

    .line 10335
    :cond_0
    const/4 v0, 0x0

    .line 53
    goto :goto_0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "auth_code"

    invoke-static {v3, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "authCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-static {v3, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "state":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->b()V

    .line 192
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)V

    .line 218
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v3, Lcma;

    invoke-static {v1, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v1, Lcma;

    .line 219
    .restart local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v3

    .line 1553
    new-instance v4, Lcbs$17;

    invoke-direct {v4, v3, v1}, Lcbs$17;-><init>(Lcbs;Lcma;)V

    .line 1560
    const-class v3, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;

    .line 1561
    if-eqz v3, :cond_0

    .line 1562
    invoke-interface {v3, v0, v2, v4}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingPayIService;->bindAlipayV2(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 221
    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.method private g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 339
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "alipayAccount":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->b:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->c:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->h()V

    .line 356
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->i()V

    .line 357
    return-void

    .line 346
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "nick":Ljava/lang/String;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->e()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "mediaId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->c:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2167
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 360
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->h:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->n:Z

    if-eqz v0, :cond_0

    sget v0, Lcaj$f;->icon_eye:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 361
    return-void

    .line 360
    :cond_0
    sget v0, Lcaj$f;->icon_closeeye:I

    goto :goto_0
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 364
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->n:Z

    if-eqz v1, :cond_1

    .line 365
    const-string/jumbo v0, "0.00"

    .line 366
    .local v0, "money":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->totalBalance:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->totalBalance:Ljava/lang/String;

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .end local v0    # "money":Ljava/lang/String;
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->i:Landroid/widget/TextView;

    const-string/jumbo v2, "****"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private j()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 377
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->alipayAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->alipayAccount:Ljava/lang/String;

    .line 382
    .local v0, "alipayAccount":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3024
    .end local v0    # "alipayAccount":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 3025
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    .line 3026
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string/jumbo v3, "binded_alipay"

    aput-object v3, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3027
    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .restart local v0    # "alipayAccount":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 464
    .line 5498
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 464
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->dismissLoadingDialog()V

    .line 467
    :cond_0
    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 401
    return-object p0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;)V
    .locals 11
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 406
    if-nez p1, :cond_0

    .line 407
    const-string/jumbo v2, "redpackets"

    const-string/jumbo v3, "queryWalletInfo return object is null"

    invoke-static {v2, v10, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    .line 414
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->alipayAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    const/4 v0, 0x1

    .line 416
    .local v0, "isAlipayValid":Z
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->alipayAccount:Ljava/lang/String;

    .line 3031
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 3032
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    .line 3033
    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const-string/jumbo v4, "binded_alipay"

    aput-object v4, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3034
    invoke-static {v3, v4, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->g()V

    .line 3041
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3042
    if-nez p1, :cond_2

    .line 424
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcan;>;"
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    .line 4037
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a:Ljava/util/List;

    .line 4038
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->notifyDataSetChanged()V

    .line 426
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->supportInvalidateOptionsMenu()V

    .line 428
    const-string/jumbo v2, "redpackets"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "Wallet info load success "

    aput-object v4, v3, v7

    .line 429
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v2, v10, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v0    # "isAlipayValid":Z
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcan;>;"
    :cond_1
    const/4 v0, 0x0

    .line 419
    .restart local v0    # "isAlipayValid":Z
    invoke-static {}, Lcbx;->a()V

    goto :goto_1

    .line 3045
    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->entrySectionTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3046
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->entrySectionTitle:Ljava/lang/String;

    invoke-static {v2}, Lcan;->a(Ljava/lang/String;)Lcan;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3048
    :cond_3
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->entryList:Ljava/util/List;

    invoke-static {v2}, Lcan;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3049
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->adsSectionTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3050
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->adsSectionTitle:Ljava/lang/String;

    invoke-static {v2}, Lcan;->a(Ljava/lang/String;)Lcan;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3052
    :cond_4
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->adsList:Ljava/util/List;

    invoke-static {v2}, Lcan;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4098
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "alipays://platformapi/startapp?appId=20000067&url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4099
    const-string/jumbo v1, "https://render.alipay.com/p/s/i/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "scheme"

    .line 4100
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4101
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_0
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "onAuthUrlGet empty url"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 471
    .line 6498
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 457
    .line 4498
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->showLoadingDialog()V

    .line 460
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 478
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;Ljava/lang/String;)V

    .line 489
    .local v0, "showDialog":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 490
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcaa;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 498
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 444
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const-string/jumbo v2, "Alipay unbind success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcbx;->a()V

    .line 447
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->l:Lcbk$a;

    invoke-interface {v0}, Lcbk$a;->a()V

    .line 448
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 132
    .local v0, "id":I
    sget v2, Lcaj$d;->fl_bind_alipay:I

    if-ne v0, v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->m:Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->alipayAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->l:Lcbk$a;

    invoke-interface {v2}, Lcbk$a;->c()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->l:Lcbk$a;

    invoke-interface {v2}, Lcbk$a;->b()V

    goto :goto_0

    .line 138
    :cond_2
    sget v2, Lcaj$d;->tv_money_eye:I

    if-ne v0, v2, :cond_4

    .line 139
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->n:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->n:Z

    .line 140
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->h()V

    .line 141
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->i()V

    .line 142
    const-string/jumbo v2, "key_wallet_money_eye_on"

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->n:Z

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 143
    :cond_4
    sget v2, Lcaj$d;->tv_issues:I

    if-ne v0, v2, :cond_0

    .line 144
    const-string/jumbo v1, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_redpackets"

    .line 145
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget v0, Lcaj$e;->activity_wallet:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->setContentView(I)V

    .line 82
    new-instance v0, Lcbm;

    invoke-direct {v0, p0}, Lcbm;-><init>(Lcbk$b;)V

    .line 84
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->f()V

    .line 1239
    const-string/jumbo v0, "key_wallet_money_eye_on"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->n:Z

    .line 1240
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->o:Z

    .line 1244
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 1246
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->o:Z

    if-eqz v0, :cond_1

    .line 1247
    sget v0, Lcaj$f;->dt_pay_purse:I

    .line 1251
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1254
    :cond_0
    sget v0, Lcaj$d;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j:Landroid/widget/ListView;

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j:Landroid/widget/ListView;

    .line 1296
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->layout_header_wallet:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1297
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1299
    sget v0, Lcaj$d;->layout_bind:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->b:Landroid/view/View;

    .line 1300
    sget v0, Lcaj$d;->layout_unbind:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->c:Landroid/view/View;

    .line 1301
    sget v0, Lcaj$d;->tv_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->f:Landroid/widget/TextView;

    .line 1302
    sget v0, Lcaj$d;->tv_account:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->g:Landroid/widget/TextView;

    .line 1303
    sget v0, Lcaj$d;->tv_money_eye:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->h:Landroid/widget/TextView;

    .line 1304
    sget v0, Lcaj$d;->iv_avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1305
    sget v0, Lcaj$d;->tv_wallet_money:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->i:Landroid/widget/TextView;

    .line 1306
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    sget v0, Lcaj$d;->fl_bind_alipay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j:Landroid/widget/ListView;

    .line 1311
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->layout_footer_wallet:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1312
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1314
    sget v0, Lcaj$d;->view_place_holder:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->d:Landroid/view/View;

    .line 1315
    sget v0, Lcaj$d;->tv_issues:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->g()V

    .line 1260
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1264
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->l:Lcbk$a;

    invoke-interface {v0}, Lcbk$a;->a()V

    .line 88
    return-void

    .line 1249
    :cond_1
    sget v0, Lcaj$f;->dt_pay_wallet:I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x2

    sget v2, Lcaj$f;->redpackets_more:I

    invoke-interface {p1, v4, v1, v3, v2}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 111
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    const/4 v1, 0x3

    sget v2, Lcaj$f;->redpackets_unbind:I

    invoke-interface {v0, v4, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 114
    .end local v0    # "subMenu":Landroid/view/SubMenu;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Lcan;

    if-nez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 155
    check-cast v1, Lcan;

    .line 156
    .local v1, "item":Lcan;
    iget-object v0, v1, Lcan;->f:Ljava/lang/String;

    .line 157
    .local v0, "destUrl":Ljava/lang/String;
    const-string/jumbo v3, "groupbill"

    iget-object v4, v1, Lcan;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    const-string/jumbo v3, "pref_key_group_bill_first_entry"

    invoke-static {v3, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "https://tms.dingtalk.com/markets/dingtalk/graypayintroduce?wh_ttid=phone&cid="

    aput-object v4, v3, v6

    const-string/jumbo v4, ""

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v3, "pref_key_group_bill_first_entry"

    invoke-static {v3, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 163
    iput-boolean v6, v1, Lcan;->h:Z

    .line 164
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->notifyDataSetChanged()V

    .line 178
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    const-string/jumbo v3, "redpackets"

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "Nav to page "

    aput-object v5, v4, v6

    iget-object v5, v1, Lcan;->g:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    const-string/jumbo v3, "invoice"

    iget-object v4, v1, Lcan;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    const-string/jumbo v3, "pref_key_invoice_first_entry"

    invoke-static {v3, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    const-string/jumbo v3, "pref_key_invoice_first_entry"

    invoke-static {v3, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 172
    iput-boolean v6, v1, Lcan;->h:Z

    .line 173
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->k:Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->setIntent(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->f()V

    .line 95
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 120
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 122
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->l:Lcbk$a;

    invoke-interface {v1}, Lcbk$a;->c()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcbk$a;

    .line 7452
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->l:Lcbk$a;

    .line 53
    return-void
.end method
