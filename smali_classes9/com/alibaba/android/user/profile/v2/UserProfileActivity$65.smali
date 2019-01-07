.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 903
    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 904
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-ne v0, v1, :cond_2

    .line 983
    :cond_1
    :goto_0
    return-void

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 909
    .local v8, "uid":J
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lezg$l;->sendmsg:I

    if-ne v0, v1, :cond_1

    .line 912
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 913
    .local v7, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "uid="

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "profile"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "profile_bottom_sendmsg_click"

    invoke-interface {v0, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 920
    new-instance v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 921
    .local v10, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iput-wide v8, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 923
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->s(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "nick":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 925
    .local v3, "icon":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 926
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 927
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 928
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 930
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 931
    new-instance v11, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 932
    .local v11, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 936
    .end local v11    # "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_4
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Long;

    const/4 v12, 0x0

    .line 981
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    .line 937
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 908
    .end local v2    # "nick":Ljava/lang/String;
    .end local v3    # "icon":Ljava/lang/String;
    .end local v7    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "uid":J
    .end local v10    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$65;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v8

    goto/16 :goto_1
.end method
