.class final Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FavoriteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

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
    .line 84
    if-eqz p2, :cond_0

    .line 85
    const-string/jumbo v3, "key_send_custom_msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    const-string/jumbo v3, "key_send_custom_msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    .local v1, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->a(Ljava/util/List;)V

    .line 94
    .end local v1    # "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "file_space"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 91
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$2;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0
.end method
