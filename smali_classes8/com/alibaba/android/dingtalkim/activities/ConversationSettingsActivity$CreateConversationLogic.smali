.class public Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateConversationLogic"
.end annotation


# instance fields
.field private mExistData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2690
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2691
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;->mExistData:Ljava/util/List;

    .line 2692
    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 2696
    aget-object v1, p2, v12

    check-cast v1, Landroid/content/Intent;

    .line 2697
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "choose_user_identities"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2698
    .local v5, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v7, "im_navigator_from"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2701
    .local v3, "statisticFrom":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 2702
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 2703
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-direct {v2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2704
    .local v2, "newIntent":Landroid/content/Intent;
    const-string/jumbo v7, "im_navigator_from"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2705
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;->mExistData:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 2706
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;->mExistData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2707
    .local v6, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 2708
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2709
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->c()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 2710
    invoke-interface {v5, v12, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2712
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2717
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v6    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    new-instance v0, Ldji;

    invoke-direct {v0, p1}, Ldji;-><init>(Landroid/app/Activity;)V

    .line 2718
    .local v0, "helper":Ldji;
    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic$1;

    invoke-direct {v7, p0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;Landroid/content/Intent;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 3176
    iput-object v7, v0, Ldji;->b:Ldca;

    .line 2743
    invoke-virtual {v0, v5}, Ldji;->a(Ljava/util/List;)V

    .line 2746
    .end local v0    # "helper":Ldji;
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2751
    return-void
.end method
