.class final Lctv$9;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic d:Lcom/alibaba/wukong/im/Message;

.field final synthetic e:Lctv;


# direct methods
.method constructor <init>(Lctv;JLandroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lctv;

    .prologue
    .line 336
    iput-object p1, p0, Lctv$9;->e:Lctv;

    iput-wide p2, p0, Lctv$9;->a:J

    iput-object p4, p0, Lctv$9;->b:Landroid/app/Activity;

    iput-object p5, p0, Lctv$9;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object p6, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 339
    iget-object v3, p0, Lctv$9;->e:Lctv;

    iget-wide v6, v3, Lctv;->V:J

    const-wide/16 v8, 0x4

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v6, p0, Lctv$9;->a:J

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 343
    .local v1, "clickUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    .line 344
    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    .line 345
    iget-object v3, p0, Lctv$9;->e:Lctv;

    iget-boolean v3, v3, Lctv;->T:Z

    if-eqz v3, :cond_2

    .line 346
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v5, p0, Lctv$9;->e:Lctv;

    iget-object v5, v5, Lctv;->d:Landroid/app/Activity;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JLandroid/os/Bundle;)V

    goto :goto_0

    .line 348
    :cond_2
    invoke-static {v1}, Lddq;->d(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    iget-object v3, p0, Lctv$9;->b:Landroid/app/Activity;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Lctv$9;->b:Landroid/app/Activity;

    check-cast v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->showLoadingDialog()V

    .line 352
    :cond_3
    new-instance v0, Lctv$9$1;

    invoke-direct {v0, p0, v1}, Lctv$9$1;-><init>(Lctv$9;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 391
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v4

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-string/jumbo v3, "EVENTBUTLER"

    .line 392
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    iget-object v8, p0, Lctv$9;->b:Landroid/app/Activity;

    .line 393
    invoke-interface {v3, v0, v5, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 391
    invoke-interface {v4, v6, v7, v3}, Ldxu;->g(JLcma;)V

    goto :goto_0

    .line 396
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    :cond_4
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v4, p0, Lctv$9;->e:Lctv;

    iget-object v4, v4, Lctv;->d:Landroid/app/Activity;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/conversation/robot_middle_page.html"

    new-instance v5, Lctv$9$2;

    invoke-direct {v5, p0, v1}, Lctv$9$2;-><init>(Lctv$9;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 397
    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 412
    :cond_5
    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_7

    .line 413
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lctv$9;->e:Lctv;

    iget-object v6, v4, Lctv;->d:Landroid/app/Activity;

    iget-object v4, p0, Lctv$9;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lctv$9;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    :goto_1
    invoke-virtual {v3, v6, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/app/Activity;J)V

    goto/16 :goto_0

    :cond_6
    iget-wide v4, p0, Lctv$9;->a:J

    goto :goto_1

    .line 414
    :cond_7
    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_8

    .line 415
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v4, "retail_im_msglist_detail_viphead"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lctv$9;->e:Lctv;

    iget-object v3, v3, Lctv;->d:Landroid/app/Activity;

    iget-wide v4, p0, Lctv$9;->a:J

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/TaoSingleChatConversationSettingActivity;->a(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 418
    :cond_8
    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_a

    .line 419
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v5, "link"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 420
    .local v2, "userLink":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    iget-object v5, p0, Lctv$9;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .end local v2    # "userLink":Ljava/lang/String;
    :cond_9
    move-object v2, v4

    .line 419
    goto :goto_2

    .line 424
    :cond_a
    iget-object v3, p0, Lctv$9;->e:Lctv;

    iget-boolean v3, v3, Lctv;->T:Z

    if-eqz v3, :cond_d

    .line 425
    iget-object v3, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v3}, Ldjl;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 426
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lctv$9;->b:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    .line 443
    :cond_b
    :goto_3
    iget-object v3, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 444
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v4, "retail_im_msglist_detail_myhead"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_c
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lctv$9;->b:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_3

    .line 430
    :cond_d
    iget-object v3, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 432
    iget-object v3, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-nez v3, :cond_e

    .line 433
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v3

    iget-object v4, p0, Lctv$9;->b:Landroid/app/Activity;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-interface {v3, v4, v6, v7}, Lddi;->a(Landroid/app/Activity;J)V

    goto :goto_3

    .line 435
    :cond_e
    iget-object v3, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v3}, Ldjl;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 436
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lctv$9;->b:Landroid/app/Activity;

    iget-object v5, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Z)V

    goto :goto_3

    .line 438
    :cond_f
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lctv$9;->b:Landroid/app/Activity;

    iget-object v5, p0, Lctv$9;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
