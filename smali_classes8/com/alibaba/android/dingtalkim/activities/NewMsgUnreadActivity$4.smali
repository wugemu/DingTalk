.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "NewMsgUnreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 1207
    const-string/jumbo v5, "user_id"

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1208
    .local v2, "changedId":J
    const-string/jumbo v5, "user_alias"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "alias":Ljava/lang/String;
    const-string/jumbo v5, "user_aliaspinyin"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "aliasPinyin":Ljava/lang/String;
    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1214
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 1215
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1216
    iput-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    goto :goto_0

    .line 1220
    .end local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->g(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1221
    .restart local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_4

    .line 1222
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1223
    iput-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    goto :goto_0

    .line 1227
    .end local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1228
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1230
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1231
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
