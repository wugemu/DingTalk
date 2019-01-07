.class final Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3$1;
.super Ljava/lang/Object;
.source "EnterpriseOASettingsActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3$1;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3$1;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->d(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3$1;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->a(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    return-object p1
.end method
