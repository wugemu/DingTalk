.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 983
    const-string/jumbo v6, "ActionDING"

    const/4 v7, 0x0

    const-string/jumbo v8, "a2o5v.12302920.1.ActionDING"

    invoke-static {p1, v6, v7, v8}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 985
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->h(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .line 986
    invoke-static {v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-eq v6, v7, :cond_1

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .line 987
    invoke-static {v7}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-ne v6, v7, :cond_2

    .line 1012
    :cond_1
    :goto_0
    return-void

    .line 991
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->h(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)J

    move-result-wide v4

    .line 992
    .local v4, "uid":J
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 993
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    iget-wide v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 996
    :cond_3
    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    .line 999
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1000
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "uid"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string/jumbo v6, "type"

    const-string/jumbo v7, "profile"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "profile_bottom_ding_click"

    invoke-interface {v6, v7, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1004
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    invoke-virtual {v6, v7}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    .line 1005
    .local v1, "dingInterface":Lcom/alibaba/android/ding/base/interfaces/DingInterface;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 1008
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1009
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1010
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1011
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$66;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .line 1922
    iget-object v7, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1011
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    goto :goto_0
.end method
