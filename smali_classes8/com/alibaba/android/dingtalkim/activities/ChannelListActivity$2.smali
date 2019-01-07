.class final Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "internal_channel_auth_result"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    const-string/jumbo v7, "data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "data":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "corpId"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "corpId":Ljava/lang/String;
    const-string/jumbo v7, "result"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 133
    .local v6, "result":I
    if-nez v6, :cond_0

    .line 134
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v7

    invoke-interface {v7, v2}, Lddi;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v1

    .line 135
    .local v1, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v1, :cond_0

    .line 136
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    .line 137
    const-string/jumbo v7, "NAVIGATOR"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/page/channeldetail"

    new-instance v9, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2$1;

    invoke-direct {v9, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    .line 138
    invoke-interface {v7, v8, v9}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v3    # "data":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
