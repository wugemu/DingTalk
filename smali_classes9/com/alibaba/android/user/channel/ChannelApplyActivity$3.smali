.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ChannelApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 159
    const-string/jumbo v7, "com.workapp.channel_apply_clear_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 161
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 163
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->h(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    const-string/jumbo v7, "com.workapp.channel_apply_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 165
    const-string/jumbo v7, "list_view_position"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 166
    .local v5, "position":I
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_1

    if-ltz v5, :cond_1

    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 167
    const-string/jumbo v7, "channel_apply_status"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 168
    .local v6, "status":I
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 169
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iput v6, v7, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    .line 170
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    new-instance v8, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3$1;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;)V

    invoke-virtual {v7, v8}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 178
    .end local v5    # "position":I
    .end local v6    # "status":I
    :cond_3
    const-string/jumbo v7, "com.workapp.org.external.added"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 179
    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "identify":Ljava/lang/String;
    const-string/jumbo v7, "employee_info"

    .line 181
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 182
    .local v3, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    const-string/jumbo v7, "CHANNEL_APPLY"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 184
    if-eqz v3, :cond_5

    .line 185
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lfbr;

    move-result-object v8

    iget-object v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 1260
    iget-object v7, v8, Lfbr;->a:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1261
    iget-object v7, v8, Lfbr;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    .line 1262
    if-eqz v7, :cond_4

    iget-object v11, v7, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v11, :cond_4

    iget-object v11, v7, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 1264
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1265
    invoke-virtual {v8, v7}, Lfbr;->a(Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V

    goto :goto_1

    .line 187
    :cond_5
    sget v7, Lezg$l;->dt_oa_attend_assist_networkexception:I

    invoke-static {v7}, Lcms;->a(I)V

    .line 192
    :cond_6
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "js":Lorg/json/JSONObject;
    const-string/jumbo v7, "pos"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 194
    .local v4, "pos":I
    iget-object v7, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lfbr;

    move-result-object v8

    .line 2253
    iget-object v7, v8, Lfbr;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 2254
    iget-object v7, v8, Lfbr;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    .line 2255
    invoke-virtual {v8, v7}, Lfbr;->a(Lcom/alibaba/android/user/channel/model/ChannelApplyObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 195
    .end local v2    # "js":Lorg/json/JSONObject;
    .end local v4    # "pos":I
    :catch_0
    move-exception v0

    .line 196
    .local v0, "expected":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
