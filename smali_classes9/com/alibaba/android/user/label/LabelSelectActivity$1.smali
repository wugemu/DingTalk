.class final Lcom/alibaba/android/user/label/LabelSelectActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LabelSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/label/LabelSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/label/LabelSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/label/LabelSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string/jumbo v0, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->a(Lcom/alibaba/android/user/label/LabelSelectActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->a(Lcom/alibaba/android/user/label/LabelSelectActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activity_identify"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "choose_user_identities"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/label/LabelSelectActivity;->a(Lcom/alibaba/android/user/label/LabelSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->c(Lcom/alibaba/android/user/label/LabelSelectActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/label/LabelSelectActivity;->b(Lcom/alibaba/android/user/label/LabelSelectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->d(Lcom/alibaba/android/user/label/LabelSelectActivity;)V

    goto :goto_0

    .line 141
    :cond_3
    const-string/jumbo v0, "action_key_save_label_group"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "action_key_delete_label_group"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;->a:Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->e(Lcom/alibaba/android/user/label/LabelSelectActivity;)V

    goto :goto_0
.end method
