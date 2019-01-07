.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;
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
    .line 1162
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 1165
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 1166
    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-eq v6, v7, :cond_1

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 1167
    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-ne v6, v7, :cond_2

    .line 1192
    :cond_1
    :goto_0
    return-void

    .line 1171
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v4

    .line 1172
    .local v4, "uid":J
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1173
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    iget-wide v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 1176
    :cond_3
    cmp-long v6, v4, v8

    if-lez v6, :cond_1

    .line 1179
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1180
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "uid"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const-string/jumbo v6, "type"

    const-string/jumbo v7, "profile"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "profile_bottom_ding_click"

    invoke-interface {v6, v7, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1184
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    invoke-virtual {v6, v7}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    .line 1185
    .local v1, "dingInterface":Lcom/alibaba/android/ding/base/interfaces/DingInterface;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 1188
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1189
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1190
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1191
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 1922
    iget-object v7, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1191
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    goto :goto_0
.end method
