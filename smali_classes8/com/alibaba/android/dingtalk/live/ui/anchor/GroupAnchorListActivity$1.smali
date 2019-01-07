.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupAnchorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "intent_action_group_anchor_added"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    :try_start_0
    const-string/jumbo v3, "intent_key_group_anchors"

    .line 84
    invoke-static {p2, v3}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 85
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "live"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Error"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
