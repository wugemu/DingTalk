.class final Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$3;
.super Ljava/lang/Object;
.source "MyCustomerGuideActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$3;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->c(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 326
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    const-string/jumbo v0, "filter_myself"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string/jumbo v0, "show_friends"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    const-string/jumbo v0, "show_common_friends"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string/jumbo v0, "intent_key_is_need_search"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    return-object p1
.end method
