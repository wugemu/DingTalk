.class public Lcom/alibaba/android/user/crm/activity/MyCustomerGuideSuccessActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MyCustomerGuideSuccessActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 39
    .local v0, "vid":I
    sget v1, Lezg$h;->btn_next:I

    if-ne v0, v1, :cond_0

    .line 40
    invoke-static {}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideSuccessActivity;->finish()V

    .line 43
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lezg$j;->customer_my_guide_success_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideSuccessActivity;->setContentView(I)V

    .line 35
    return-void
.end method
