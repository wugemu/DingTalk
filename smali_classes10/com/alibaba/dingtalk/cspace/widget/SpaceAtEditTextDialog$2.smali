.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "SpaceAtEditTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    if-nez p2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "identifier":Ljava/lang/String;
    const-string/jumbo v3, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ACTIVITY_IDENTIFY_AT"

    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    iget-wide v4, v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->u:J

    const-string/jumbo v3, "intent_key_at_seed"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 181
    const-string/jumbo v3, "choose_user_identities"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 183
    .local v2, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->k:Lgqi;

    invoke-virtual {v3, v2}, Lgqi;->a(Ljava/util/List;)V

    goto :goto_0
.end method
