.class public final Lfkx;
.super Ljava/lang/Object;
.source "OrgMemberQrcodeView.java"

# interfaces
.implements Lfkv$b;


# instance fields
.field final a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field c:Landroid/widget/ImageView;

.field private d:Lfkv$a;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 41
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    .line 73
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfkx;->e:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lfkx;->e:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "qrcode"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 92
    iget-object v2, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v3, p0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    .line 96
    :cond_0
    iget-object v2, p0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v3, 0x1

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3, v4}, Lcms;->a(Landroid/app/Activity;ZF)V

    .line 101
    iget-object v2, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCancelable(Z)V

    .line 103
    iget-object v2, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 104
    iget-object v2, p0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->qrcode_create_org_v3:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "view":Landroid/view/View;
    sget v2, Lezg$h;->tv_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lfkx$2;

    invoke-direct {v3, p0}, Lfkx$2;-><init>(Lfkx;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v2, Lezg$h;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "titleView":Landroid/widget/TextView;
    sget v2, Lezg$h;->tv_status:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lfkx;->e:Landroid/widget/TextView;

    .line 116
    sget v2, Lezg$h;->iv_qrcode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lfkx;->c:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {p0, p3}, Lfkx;->a(Ljava/lang/String;)V

    .line 2053
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lfkx;->c:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 122
    return-void

    .line 2056
    :cond_2
    iget-object v2, p0, Lfkx;->c:Landroid/widget/ImageView;

    new-instance v3, Lfkx$1;

    invoke-direct {v3, p0, p2}, Lfkx$1;-><init>(Lfkx;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 142
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    .line 1146
    iget-object v0, p0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lfkx;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 85
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfkx;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->dt_createteam_add_member_qrcode_refresh_failure:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lfkv$a;

    .line 2126
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfkv$a;

    iput-object v0, p0, Lfkx;->d:Lfkv$a;

    .line 30
    return-void
.end method
