.class final Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1$1;
.super Ljava/lang/Object;
.source "MyCustomerGuideActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    return-object p1
.end method
