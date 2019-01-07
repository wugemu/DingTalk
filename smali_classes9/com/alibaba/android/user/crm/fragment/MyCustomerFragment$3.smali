.class final Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "MyCustomerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$3;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    const-string/jumbo v0, "action_crm_client_refresh"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$3;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;Z)V

    .line 196
    :cond_0
    return-void
.end method
