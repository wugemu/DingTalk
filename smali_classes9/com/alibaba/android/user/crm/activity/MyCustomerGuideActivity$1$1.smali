.class final Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;
.super Ljava/lang/Object;
.source "MyCustomerGuideActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 126
    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->dismissLoadingDialog()V

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/my_customer_guide_success.html"

    new-instance v2, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1$1;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->finish()V

    .line 126
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->dismissLoadingDialog()V

    .line 148
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 143
    return-void
.end method
