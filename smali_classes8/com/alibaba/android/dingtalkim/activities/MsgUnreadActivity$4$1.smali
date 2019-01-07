.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ldrs;

.field final synthetic e:Ldrs;

.field final synthetic f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ldrs;Ldrs;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->d:Ldrs;

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->e:Ldrs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    check-cast p1, Ljava/util/List;

    .line 1188
    if-eqz p1, :cond_2

    .line 1189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1190
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsa;

    .line 1191
    if-eqz v1, :cond_0

    .line 1192
    iput-object v0, v1, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1193
    iget v0, v1, Ldsa;->b:I

    sget-object v3, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 1194
    iget-object v0, v1, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a:Lcma;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->d:Ldrs;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b:Lcma;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->e:Ldrs;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unread_message"

    const-string/jumbo v2, "get_user_profile_list"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unread_message"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "unread_message"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 220
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getMessageUnreadMember get userProfile failed, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;->f:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unread_message"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 216
    return-void
.end method
