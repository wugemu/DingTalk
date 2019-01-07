.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;
.super Landroid/content/BroadcastReceiver;
.source "CSpaceCooperationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1065
    if-nez p2, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.alibaba.dingtalk.space.cooperation.folder.delete"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1072
    const-string/jumbo v5, "cooperation_folder_cid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, "cooperationFolderCid":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1074
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a(Ljava/lang/String;)V

    .line 1075
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    goto :goto_0

    .line 1077
    .end local v2    # "cooperationFolderCid":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "com.alibaba.dingtalk.space.cooperation.folder.rename"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1078
    const-string/jumbo v5, "cooperation_folder_cid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "cid":Ljava/lang/String;
    const-string/jumbo v5, "cooperation_folder_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1080
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1081
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    .end local v1    # "cid":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "com.alibaba.dingtalk.space.cooperation.folder.quit"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1084
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1085
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1086
    .local v3, "message":Landroid/os/Message;
    const/16 v5, 0x12c

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1087
    const-string/jumbo v5, "key_co_folder_conv_id"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1088
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v5, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
