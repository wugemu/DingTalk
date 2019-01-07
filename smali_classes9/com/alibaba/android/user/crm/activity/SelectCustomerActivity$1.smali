.class final Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectCustomerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity$1;->a:Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 232
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity$1;->a:Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_crm_client_refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity$1;->a:Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;

    const/4 v2, 0x0

    const-string/jumbo v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->a(Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->l()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Create customer from h5"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method
