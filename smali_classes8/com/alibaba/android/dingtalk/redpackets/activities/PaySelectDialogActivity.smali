.class public Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "PaySelectDialogActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcaj$e;->pay_select_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->setContentView(I)V

    .line 1044
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "balance_enable"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1045
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "balance_quota"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1067
    sget v0, Lcaj$d;->dlg_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->a:Landroid/view/View;

    .line 1068
    sget v0, Lcaj$d;->tv_pay_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->b:Landroid/widget/TextView;

    .line 1069
    sget v0, Lcaj$d;->tv_pay_quota_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->c:Landroid/widget/TextView;

    .line 1070
    sget v0, Lcaj$d;->iv_pay_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->d:Landroid/widget/ImageView;

    .line 1072
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1073
    sget v4, Lcaj$f;->dt_dingpay_payment_message_balance_AT:I

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "%.2f"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1075
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    if-eqz v1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    :goto_0
    sget v0, Lcaj$d;->dlg_ali_pay_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->e:Landroid/view/View;

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    sget v0, Lcaj$d;->dialog_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcaj$b;->uidic_global_color_c11_9:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1089
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1090
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method
