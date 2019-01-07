.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/MessageReceiver;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/statistics/Statistics;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;Lcom/alibaba/doraemon/statistics/Statistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unread_message"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->removeOffLineDurationStatistics(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 162
    check-cast p1, Ljava/util/List;

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unread_message"

    const-string/jumbo v2, "message_receivers"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1167
    new-instance v5, Ldrs;

    invoke-direct {v5}, Ldrs;-><init>()V

    .line 1168
    new-instance v6, Ldrs;

    invoke-direct {v6}, Ldrs;-><init>()V

    .line 1169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    iput-object v4, v5, Ldrs;->a:Ljava/util/List;

    .line 1172
    iput-object v3, v6, Ldrs;->a:Ljava/util/List;

    .line 1174
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1175
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageReceiver;

    .line 1177
    new-instance v7, Ldsa;

    invoke-direct {v7}, Ldsa;-><init>()V

    .line 1178
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->readStatus()Lcom/alibaba/wukong/im/Message$ReadStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v9

    iput v9, v7, Ldsa;->b:I

    .line 1179
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageReceiver;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unread_message"

    const-string/jumbo v7, "get_user_profile_list"

    invoke-interface {v0, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ldrs;Ldrs;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-interface {v7, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v9, v8, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 1226
    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->d(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->e(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
