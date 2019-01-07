.class public Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "BalancePayDialog.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:D

.field public d:D

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "methodType"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget v0, Lcaj$g;->CustomDialog:I

    invoke-direct {p0, p2, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->l:I

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->l:I

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->requestWindowFeature(I)Z

    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcaj$e;->balance_pay_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->setContentView(I)V

    .line 1070
    sget v0, Lcaj$d;->dlg_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->f:Landroid/view/View;

    .line 1071
    sget v0, Lcaj$d;->dlg_ali_pay_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->e:Landroid/view/View;

    .line 1072
    sget v0, Lcaj$d;->send:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->g:Landroid/view/View;

    .line 1073
    sget v0, Lcaj$d;->dlg_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->h:Landroid/view/View;

    .line 1074
    sget v0, Lcaj$d;->tv_pay_quota_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->i:Landroid/widget/TextView;

    .line 1075
    sget v0, Lcaj$d;->tv_mount_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->j:Landroid/widget/TextView;

    .line 1076
    sget v0, Lcaj$d;->tv_pay_des:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->k:Landroid/widget/TextView;

    .line 1078
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1079
    if-eqz v0, :cond_0

    .line 1080
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1081
    sget v1, Lcaj$g;->dialogWindowAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1086
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->l:I

    if-nez v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->f:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->j:Landroid/widget/TextView;

    const-string/jumbo v1, "%.2f"

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->h:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void

    .line 1091
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1092
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1093
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcaj$f;->dt_dingpay_payment_message_balance_AT:I

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1095
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->f:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->e:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
