.class final Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;
.super Ljava/lang/Object;
.source "MeetingScheduleCreateActivity.java"

# interfaces
.implements Lbhu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONArray;

.field final synthetic b:Lhll;

.field final synthetic c:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONArray;Lhll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;->c:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;->a:Lcom/alibaba/fastjson/JSONArray;

    iput-object p3, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;->b:Lhll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 356
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MeetingScheduleCreateActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "jsCallGetUserInfos get user infos failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 338
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_1

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 340
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 343
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 344
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 345
    .local v1, "userInfo":Ljava/util/Map;
    const-string/jumbo v4, "uid"

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v4, "name"

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v4, "mediaUrl"

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v5}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v0    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v1    # "userInfo":Ljava/util/Map;
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;->b:Lhll;

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-static {v3, v4}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lhll;Lgxl;)V

    .line 352
    return-void
.end method
