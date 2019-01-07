.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 426
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 427
    const-string/jumbo v4, "conversation_id"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string/jumbo v4, "count_limit"

    const/16 v5, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    const-string/jumbo v4, "filter_myself"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string/jumbo v4, "choose_mode"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string/jumbo v4, "activity_identify"

    const-string/jumbo v5, "identify_ban_words_black"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v2, "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 434
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserBanObject;

    .line 435
    .local v0, "object":Lcom/alibaba/wukong/im/UserBanObject;
    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-wide v6, v0, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 437
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v3, :cond_1

    .line 438
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 439
    .restart local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v6, v0, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    iput-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 441
    :cond_1
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    .end local v0    # "object":Lcom/alibaba/wukong/im/UserBanObject;
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->e(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;)Ljava/util/List;

    move-result-object v1

    .line 447
    .local v1, "ownerAndAdmins":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 448
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    .end local v1    # "ownerAndAdmins":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    const-string/jumbo v4, "unchecked_users"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 453
    :cond_4
    return-object p1
.end method
