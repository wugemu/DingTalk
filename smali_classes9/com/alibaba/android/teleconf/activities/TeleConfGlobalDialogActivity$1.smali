.class final Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;
.super Ljava/lang/Object;
.source "TeleConfGlobalDialogActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    const-string/jumbo v0, "global_dialog_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string/jumbo v0, "global_dialog_negative_btn"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v0, "global_dialog_positive_btn"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v0, "conf_call_to_user_identity"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v0, "conf_voip_other_net"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    return-object p1
.end method
