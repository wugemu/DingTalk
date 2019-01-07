.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$8;
.super Ljava/lang/Object;
.source "CommonWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$8;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 909
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "org_register_enter"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 912
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 913
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "fromSighUp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 914
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$8;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 915
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$8;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->finish()V

    .line 916
    return-void
.end method
