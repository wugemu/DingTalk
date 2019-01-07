.class public Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CreateOrgPromoteDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 18
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;->setCancelable(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lezg$j;->user_dialog_create_org_promote_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;->setContentView(I)V

    .line 30
    sget v0, Lezg$h;->if_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog$1;-><init>(Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
