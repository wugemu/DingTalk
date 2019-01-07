.class public Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationGroupSelectorInjector"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4911d91f3247b810L


# instance fields
.field private mBizType:I

.field private mTemplateId:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "bizType"    # I
    .param p2, "templateId"    # J

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->mBizType:I

    .line 564
    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->mTemplateId:J

    .line 565
    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->checkGroupRobotInfo(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->notifyResult(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    return-void
.end method

.method private checkGroupRobotInfo(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "dingtalkActivity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 638
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 639
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Landroid/app/Activity;Lcma;)V

    .line 663
    return-void
.end method

.method private checkTemplateMatch(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;J)V
    .locals 5
    .param p1, "dingtalkActivity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "templateId"    # J

    .prologue
    .line 589
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 591
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 631
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, p3, p4, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(JLcma;)V

    .line 635
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;>;"
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->checkGroupRobotInfo(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method private notifyResult(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "dingtalkActivity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 673
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 675
    :cond_0
    invoke-static {p2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 676
    if-eqz p2, :cond_1

    .line 677
    invoke-static {p2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_group_search_result_selected"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 679
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 681
    :cond_1
    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 569
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    aget-object v3, p2, v4

    instance-of v3, v3, Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 573
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 574
    .local v1, "dingtalkActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    aget-object v2, p2, v4

    check-cast v2, Landroid/content/Intent;

    .line 575
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "conversation"

    .line 576
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 577
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_3

    .line 578
    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->mBizType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 579
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->mTemplateId:J

    invoke-direct {p0, v1, v0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->checkTemplateMatch(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;J)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->notifyResult(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    goto :goto_0

    .line 584
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->notifyResult(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method
