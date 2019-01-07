.class public Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;
.super Ljava/lang/Object;
.source "RemindForwardHandler.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemindForwarAtyLogic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    array-length v7, p2

    if-eqz v7, :cond_0

    aget-object v7, p2, v8

    instance-of v7, v7, Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    aget-object v4, p2, v8

    check-cast v4, Landroid/content/Intent;

    .line 64
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "key_direct_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 67
    const-string/jumbo v7, "key_direct_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 68
    .local v2, "data":Landroid/net/Uri;
    const-string/jumbo v7, "remind_type"

    invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1150
    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v5

    .line 69
    .local v5, "remindType":I
    const-string/jumbo v7, "source"

    invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "source":Ljava/lang/String;
    const-string/jumbo v7, "remind_ext"

    invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "extParam":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "remind_type"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string/jumbo v7, "remind_ext"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v7, "source"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v7, "conversation"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v7, :cond_0

    .line 76
    const-string/jumbo v7, "conversation"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 77
    .local v1, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v7, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v7, :cond_0

    .line 78
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, p1, v8, v0, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
