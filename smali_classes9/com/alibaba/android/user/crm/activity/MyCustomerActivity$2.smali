.class final Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;
.super Ljava/lang/Object;
.source "MyCustomerActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 211
    const-string/jumbo v0, "choose_mode"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->b(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string/jumbo v0, "staff_id"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->c(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    const-string/jumbo v0, "corp_id"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->e(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string/jumbo v0, "intent_key_appId"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string/jumbo v0, "intent_key_list_type"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    .line 1220
    iget-object v1, v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 216
    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    return-object p1
.end method
