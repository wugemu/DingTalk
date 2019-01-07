.class final Lcom/alibaba/android/ding/activity/DingReceiverActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "DingReceiverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$5;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 192
    const-string/jumbo v2, "com.workapp.choose.people.from.group.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.workapp.ding.choose.myself"

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    const-string/jumbo v2, "activity_identify"

    invoke-static {p2, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "identifier":Ljava/lang/String;
    const-string/jumbo v2, "identifier_receiver_activity_add_receiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    .end local v0    # "identifier":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 199
    .restart local v0    # "identifier":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "choose_user_identities"

    invoke-static {p2, v2}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$5;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$5;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$5;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 206
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/lang/Long;Ljava/util/List;Z)V

    goto :goto_0
.end method
