.class final Laes$c;
.super Landroid/os/Handler;
.source "DingtalkMailDailyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Laes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laes;)V
    .locals 1
    .param p1, "ref"    # Laes;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laes$c;->a:Ljava/lang/ref/WeakReference;

    .line 99
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 104
    iget-object v2, p0, Laes$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laes;

    .line 105
    .local v0, "ref":Laes;
    if-nez v0, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 110
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1220
    .local v1, "res":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1223
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    const-string/jumbo v4, "userInfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1227
    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1230
    const-string/jumbo v4, "dm_sendMsg"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1231
    const-string/jumbo v3, "cid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1233
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1234
    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1263
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1265
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    .line 1266
    iget-object v2, v0, Laes;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 1267
    if-eqz v2, :cond_2

    .line 1268
    const/4 v3, 0x0

    invoke-virtual {v5, v2, v4, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/Map;)Z

    .line 1269
    sget v2, Laxo$i;->dt_mail_maildetail_plugin_msgsend:I

    invoke-static {v2}, Lhcn;->a(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 1271
    :cond_2
    iget-object v2, v0, Laes;->i:Lcom/alibaba/wukong/im/ConversationService;

    new-instance v6, Laes$1;

    invoke-direct {v6, v0, v3, v5, v4}, Laes$1;-><init>(Laes;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/IMInterface;Ljava/lang/String;)V

    invoke-interface {v2, v6, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1236
    :cond_3
    const-string/jumbo v4, "dm_backtoSession"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1587
    const-string/jumbo v3, "mail_back_im_click"

    invoke-static {v3}, Lafe;->a(Ljava/lang/String;)V

    .line 1239
    const-string/jumbo v3, "cid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1240
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1242
    const-string/jumbo v4, "mid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1243
    const-string/jumbo v2, "0"

    .line 1244
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1245
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2299
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2300
    sget v2, Laxo$i;->dt_mail_maildetail_plugin_invalidparam:I

    invoke-static {v2}, Lhcn;->a(I)V

    goto/16 :goto_0

    .line 2304
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2306
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2307
    const-string/jumbo v2, "anchor_id"

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2314
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    .line 2316
    iget-object v4, v0, Laes;->c:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2309
    :catch_1
    move-exception v2

    const-string/jumbo v2, "CMail"

    const-string/jumbo v4, "DingtalkMailDailyHelper"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "navToConversationPage: cid:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 2310
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2309
    invoke-static {v2, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1249
    :cond_6
    const-string/jumbo v4, "dm_dingComfirm"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2591
    const-string/jumbo v3, "mail_confirm_ding_click"

    invoke-static {v3}, Lafe;->a(Ljava/lang/String;)V

    .line 1252
    const-string/jumbo v3, "dingid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3321
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3323
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v5

    .line 3324
    iget-object v2, v0, Laes;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3325
    if-eqz v2, :cond_7

    .line 3327
    sget v2, Laxo$i;->dt_mail_maildetail_plugin_confirmagain:I

    invoke-static {v2}, Lhcn;->a(I)V

    goto/16 :goto_0

    .line 3329
    :cond_7
    new-instance v3, Laes$2;

    invoke-direct {v3, v0, v4, v5}, Laes$2;-><init>(Laes;Ljava/lang/String;Lcom/alibaba/android/ding/base/interfaces/DingInterface;)V

    .line 3358
    iget-object v2, v0, Laes;->c:Landroid/app/Activity;

    if-eqz v2, :cond_8

    .line 3359
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v6, Lcma;

    iget-object v7, v0, Laes;->c:Landroid/app/Activity;

    invoke-interface {v2, v3, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 3363
    :goto_2
    invoke-virtual {v5, v4, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/lang/String;Lcma;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_8
    move-object v2, v3

    goto :goto_2

    .line 107
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
