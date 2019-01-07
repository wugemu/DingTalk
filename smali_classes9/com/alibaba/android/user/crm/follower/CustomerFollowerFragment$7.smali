.class final Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$7;
.super Ljava/lang/Object;
.source "CustomerFollowerFragment.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$7;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 435
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_1

    .line 436
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 437
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v3, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$7;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lfme;

    move-result-object v3

    .line 1068
    iget-object v0, v3, Lfme;->c:Ljava/util/List;

    .line 438
    .local v0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 439
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 440
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 441
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 442
    iget-object v4, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$7;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lfmd;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 443
    iget-object v3, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$7;->a:Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-static {v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lfmd;

    move-result-object v3

    invoke-virtual {v3}, Lfmd;->notifyDataSetChanged()V

    .line 450
    .end local v0    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    return-void
.end method
