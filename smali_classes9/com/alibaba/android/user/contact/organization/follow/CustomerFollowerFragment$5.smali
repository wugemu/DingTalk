.class final Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$5;
.super Ljava/lang/Object;
.source "CustomerFollowerFragment.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$5;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

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
    .line 354
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_1

    .line 355
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 356
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$5;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lfje;

    move-result-object v3

    .line 1069
    iget-object v0, v3, Lfje;->c:Ljava/util/List;

    .line 357
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

    .line 358
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 359
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 360
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 361
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$5;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lfjd;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 362
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$5;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lfjd;

    move-result-object v3

    invoke-virtual {v3}, Lfjd;->notifyDataSetChanged()V

    .line 369
    .end local v0    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    return-void
.end method
