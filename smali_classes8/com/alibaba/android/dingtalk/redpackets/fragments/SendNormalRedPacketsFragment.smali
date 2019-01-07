.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;
.super Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;
.source "SendNormalRedPacketsFragment.java"

# interfaces
.implements Lcbj$b;


# instance fields
.field private n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

.field private o:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

.field private p:Lcbj$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 51
    .line 3235
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3236
    sget v1, Lcaj$f;->dt_red_envelop_unit_yuan_AT:I

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    .line 3237
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcaj$f;->redpackets_send_btn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3238
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcbj$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->p:Lcbj$a;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->o:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    return-object v0
.end method


# virtual methods
.method public final a(D)V
    .locals 10
    .param p1, "payMoney"    # D

    .prologue
    const/4 v4, 0x1

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v8

    .line 204
    .local v8, "money":D
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->o:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "conf":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->o:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 209
    return-void
.end method

.method public final a(IDD)V
    .locals 8
    .param p1, "payMethod"    # I
    .param p2, "payMoney"    # D
    .param p4, "quota"    # D

    .prologue
    .line 147
    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;-><init>(ILandroid/content/Context;)V

    .line 1066
    .local v3, "payDialog":Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;
    iput-wide p2, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->d:D

    .line 150
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2062
    iput-wide p4, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->c:D

    .line 154
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4;

    move-object v2, p0

    move-wide v4, p4

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;DD)V

    .line 3054
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->b:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;ID)V

    .line 3058
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->a:Landroid/view/View$OnClickListener;

    .line 198
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->show()V

    .line 199
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->c()V

    .line 219
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 223
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v0

    const-wide v2, 0x41086a0000000000L    # 200000.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 226
    sget v0, Lcaj$f;->redpackest_max_money:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->p:Lcbj$a;

    invoke-interface {v0, p2}, Lcbj$a;->a(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 64
    new-instance v1, Lcbl;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcbl;-><init>(Lcbj$b;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->p:Lcbj$a;

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->I:Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->I:Landroid/view/View;

    sget v2, Lcaj$d;->send:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->I:Landroid/view/View;

    sget v2, Lcaj$d;->edt_redpackets_money:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    .line 68
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 69
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget v1, Lcaj$f;->dt_red_envelop_unit_yuan_AT:I

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    .line 70
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcaj$f;->redpackets_send_btn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->I:Landroid/view/View;

    sget v2, Lcaj$d;->edt_congratulations:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->o:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->d()V

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->I:Landroid/view/View;

    sget v2, Lcaj$d;->rl_money:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->n:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->requestFocusFromTouch()Z

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->o:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->I:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->onDestroy()V

    .line 143
    return-void
.end method

.method public final q_()V
    .locals 1

    .prologue
    .line 213
    sget v0, Lcaj$f;->redpackets_processing:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->a(I)V

    .line 214
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcaj$e;->fragment_send_normal:I

    return v0
.end method
