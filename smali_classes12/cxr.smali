.class public final Lcxr;
.super Lcts;
.source "SystemMsgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcxr$a;
    }
.end annotation


# static fields
.field private static S:I

.field private static T:I

.field private static U:I


# instance fields
.field private V:Landroid/widget/TextView;

.field public a:Z

.field protected b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41000000    # 8.0f

    .line 75
    invoke-direct {p0}, Lcts;-><init>()V

    .line 76
    sget v0, Lcxr;->S:I

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcxr;->S:I

    .line 79
    :cond_0
    sget v0, Lcxr;->T:I

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcxr;->T:I

    .line 82
    :cond_1
    sget v0, Lcxr;->U:I

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcxr;->U:I

    .line 85
    :cond_2
    return-void
.end method

.method static synthetic a(Lcxr;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcxr;

    .prologue
    .line 64
    iget-object v0, p0, Lcxr;->V:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcxr;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;)V
    .locals 7
    .param p0, "x0"    # Lcxr;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    .param p4, "x4"    # Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .prologue
    const/16 v2, 0x2717

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 64
    .line 4266
    iget-boolean v0, p0, Lcxr;->a:Z

    if-nez v0, :cond_2

    .line 4269
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    if-ne v0, v3, :cond_7

    .line 4270
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4271
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4273
    const-string/jumbo v1, "/page/create_call_from_conversation"

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4274
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "meeting_chat_recommend_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4276
    :cond_0
    iget v1, p3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    if-ne v1, v3, :cond_3

    .line 4277
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_safe_thirdencryption_notice_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4291
    :cond_1
    :goto_0
    invoke-static {}, Lcxr;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4292
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 4436
    .end local p1    # "x1":Landroid/app/Activity;
    :cond_2
    :goto_1
    return-void

    .line 4278
    .restart local p1    # "x1":Landroid/app/Activity;
    :cond_3
    iget v1, p3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget v1, p3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v2, 0x68

    if-ne v1, v2, :cond_4

    .line 4280
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_voip_call_miss_help_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 4281
    :cond_4
    iget v1, p3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    const/16 v2, 0x69

    if-ne v1, v2, :cond_1

    .line 4282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4283
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4284
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    .line 4285
    const-string/jumbo v3, "group_id"

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4286
    const-string/jumbo v3, "org_id"

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4288
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "Page_Chat_Detail"

    const-string/jumbo v4, "Button-group_introduce"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 4294
    :cond_6
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I

    goto :goto_1

    .line 4298
    :cond_7
    iget v0, p3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_a

    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 4301
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4305
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sended_ding_guide"

    invoke-static {v0, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4306
    invoke-static {}, Lcxr;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4307
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 4313
    :goto_2
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_8

    .line 4314
    check-cast p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .end local p1    # "x1":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Z()Lcug;

    move-result-object v0

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 4317
    :cond_8
    const-string/jumbo v0, "chat_ding_guide_singlechat_ding"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4309
    .restart local p1    # "x1":Landroid/app/Activity;
    :cond_9
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 4310
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_2

    .line 4318
    :cond_a
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_b

    .line 4319
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_redenvelope_chat_send_envelope_link_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4321
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4322
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcxr;->d:Landroid/app/Activity;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_1

    .line 4324
    :cond_b
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_c

    .line 4325
    iget-object v0, p0, Lcxr;->Q:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcxr;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4326
    iget-object v0, p0, Lcxr;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 4327
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcxr;->d:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/app/Activity;J)V

    .line 4328
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "contact_groupchat_invite_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4330
    :cond_c
    iget v0, p3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_d

    .line 4332
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4335
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4338
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4339
    if-eqz v0, :cond_2

    const-string/jumbo v1, "/page/conversation"

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4342
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 4344
    const-string/jumbo v2, "cid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4345
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4348
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 4349
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/page/conversation"

    new-instance v4, Lcxr$3;

    invoke-direct {v4, p0, v2, v1}, Lcxr$3;-><init>(Lcxr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 4362
    sget v0, Lctk$a;->slide_in_up:I

    sget v1, Lctk$a;->slide_fade:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4364
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_trans_chatrecord_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4365
    :cond_d
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x2716

    if-eq v0, v1, :cond_e

    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    if-ne v0, v2, :cond_13

    .line 4368
    :cond_e
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4371
    invoke-static {}, Lcxr;->q()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4372
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 4379
    :goto_3
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_f

    .line 4380
    check-cast p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .end local p1    # "x1":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Z()Lcug;

    move-result-object v0

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 4383
    :cond_f
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4384
    iget v1, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    if-ne v1, v2, :cond_10

    .line 4385
    const-string/jumbo v1, "chat_ding_guide_atme_ding"

    invoke-static {v1}, Lcps;->a(Ljava/lang/String;)V

    .line 4386
    :cond_10
    if-eqz v0, :cond_12

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4387
    const-string/jumbo v0, "chat_ding_guide_atall_ding"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4374
    .restart local p1    # "x1":Landroid/app/Activity;
    :cond_11
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 4375
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_3

    .line 4388
    .end local p1    # "x1":Landroid/app/Activity;
    :cond_12
    if-eqz v0, :cond_2

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4389
    const-string/jumbo v0, "chat_ding_guide_atsomesone_ding"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4391
    .restart local p1    # "x1":Landroid/app/Activity;
    :cond_13
    iget v0, p3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_15

    .line 4392
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4396
    iget-object v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4397
    const-string/jumbo v1, "to_page"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4398
    const-string/jumbo v2, "intent_key_calendar_select_date"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4399
    const-string/jumbo v3, "intent_key_calendar_id"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4400
    invoke-static {}, Lcxr;->q()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4402
    const-string/jumbo v4, "to_page"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4403
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4404
    const-string/jumbo v4, "intent_key_calendar_select_date"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4405
    const-string/jumbo v2, "intent_key_calendar_id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4406
    const-string/jumbo v2, "key_bundle_calendar"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4407
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4409
    :cond_14
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 4410
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v4, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    new-instance v5, Lcxr$4;

    invoke-direct {v5, p0, v1, v2, v3}, Lcxr$4;-><init>(Lcxr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 4422
    :cond_15
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x2719

    if-ne v0, v1, :cond_16

    .line 4423
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_2

    .line 4424
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->w()V

    .line 4425
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "dt_im_gif_get_more_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4427
    :cond_16
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x271a

    if-ne v0, v1, :cond_17

    .line 4428
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_2

    .line 4429
    iget-object v0, p0, Lcxr;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 5217
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 5218
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v6}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 4431
    :cond_17
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x271c

    if-eq v0, v1, :cond_2

    .line 4433
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x271b

    if-ne v0, v1, :cond_18

    .line 4434
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4435
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_auto_trans_jump_setting"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4436
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcxr;->d:Landroid/app/Activity;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4438
    :cond_18
    iget v0, p4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v1, 0x271d

    if-ne v0, v1, :cond_2

    .line 4439
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4440
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 4441
    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 4442
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v4, p0, Lcxr;->d:Landroid/app/Activity;

    const-string/jumbo v5, "greeting"

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JLjava/lang/String;)V

    .line 4445
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4446
    const-string/jumbo v4, "group_id"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4447
    const-string/jumbo v0, "org_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4448
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "Page_Chat_Detail"

    const-string/jumbo v3, "Button-add_member"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method static synthetic o()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcxr;->S:I

    return v0
.end method

.method static synthetic p()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcxr;->T:I

    return v0
.end method

.method private static q()Z
    .locals 3

    .prologue
    .line 516
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_sys_msg_jump_internal"

    .line 4083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 516
    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 253
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "conversationTag"    # J

    .prologue
    .line 257
    iput-wide p1, p0, Lcxr;->b:J

    .line 258
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 36
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 91
    new-instance v32, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 92
    .local v32, "textContent":Landroid/text/SpannableStringBuilder;
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v20

    .line 94
    .local v20, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_14

    move-object/from16 v28, v20

    .line 95
    check-cast v28, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 96
    .local v28, "msgText":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    move-object/from16 v0, p4

    instance-of v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v5, :cond_13

    move-object/from16 v5, p4

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    if-eqz v5, :cond_13

    move-object/from16 v5, p4

    .line 97
    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    .line 98
    .local v9, "thirdPartDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    const/16 v25, 0x0

    .line 101
    .local v25, "index":I
    const/16 v27, 0x0

    .line 102
    .local v27, "msgIcon":Landroid/graphics/drawable/Drawable;
    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v7, 0x64

    if-ne v5, v7, :cond_0

    .line 103
    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_7

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lctk$e;->im_redpackets_vip_icon:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 110
    :cond_0
    :goto_0
    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lctk$e;->chat_conv_icon_encrypt:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 113
    :cond_1
    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v7, 0x270f

    if-ne v5, v7, :cond_2

    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lctk$e;->msg_chat_robot_icon:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 117
    :cond_2
    if-eqz v27, :cond_3

    .line 118
    const-string/jumbo v23, "icon"

    .line 119
    .local v23, "iconText":Ljava/lang/String;
    const-string/jumbo v30, " "

    .line 120
    .local v30, "placeholderText":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v25

    .line 123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->V:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v22

    .line 124
    .local v22, "height":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int v5, v5, v22

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int v34, v5, v7

    .line 125
    .local v34, "width":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v22

    invoke-virtual {v0, v5, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    new-instance v24, Lcqv;

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5, v7}, Lcqv;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 127
    .local v24, "imageSpan":Lcqv;
    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x106000d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 131
    .local v33, "transparent":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v7, 0x0

    sget v8, Lcxr;->U:I

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v5, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    new-instance v29, Lcqv;

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5, v7}, Lcqv;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 133
    .local v29, "placeholder":Lcqv;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x21

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move/from16 v2, v25

    invoke-virtual {v0, v1, v5, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 136
    .end local v22    # "height":I
    .end local v23    # "iconText":Ljava/lang/String;
    .end local v24    # "imageSpan":Lcqv;
    .end local v29    # "placeholder":Lcqv;
    .end local v30    # "placeholderText":Ljava/lang/String;
    .end local v33    # "transparent":Landroid/graphics/drawable/Drawable;
    .end local v34    # "width":I
    :cond_3
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v31

    .line 137
    .local v31, "text":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v32

    .line 139
    iget-object v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    if-eqz v5, :cond_b

    .line 140
    iget-object v12, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    array-length v13, v12

    const/4 v5, 0x0

    move v11, v5

    :goto_1
    if-ge v11, v13, :cond_b

    aget-object v10, v12, v11

    .line 141
    .local v10, "systemLinkElementDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
    iget-object v0, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 142
    .local v26, "linkColorString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 143
    .local v6, "colorInt":I
    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v7, 0x64

    if-ne v5, v7, :cond_8

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lctk$c;->uidic_global_color_10_1:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 148
    :cond_4
    :goto_2
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 150
    :try_start_0
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    .line 154
    :cond_5
    :goto_3
    new-instance v4, Lcxr$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcxr$1;-><init>(Lcxr;ILandroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;)V

    .line 162
    .local v4, "clickableSpan":Lcxr$a;
    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v7, 0x65

    if-ne v5, v7, :cond_9

    .line 163
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v7, "sended_ding_guide"

    invoke-static {v5, v7}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 165
    :try_start_1
    iget v5, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    add-int v5, v5, v25

    iget v7, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    add-int v7, v7, v25

    iget v8, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    add-int/2addr v7, v8

    const/16 v8, 0x21

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :cond_6
    :goto_4
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_1

    .line 106
    .end local v4    # "clickableSpan":Lcxr$a;
    .end local v6    # "colorInt":I
    .end local v10    # "systemLinkElementDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
    .end local v26    # "linkColorString":Ljava/lang/String;
    .end local v31    # "text":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lctk$e;->im_redpackets_system_icon:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    goto/16 :goto_0

    .line 145
    .restart local v6    # "colorInt":I
    .restart local v10    # "systemLinkElementDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
    .restart local v26    # "linkColorString":Ljava/lang/String;
    .restart local v31    # "text":Ljava/lang/String;
    :cond_8
    iget v5, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    const/16 v7, 0x2719

    if-eq v5, v7, :cond_4

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lctk$c;->text_color_blue:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    goto :goto_2

    .line 166
    .restart local v4    # "clickableSpan":Lcxr$a;
    :catch_0
    move-exception v21

    .line 167
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 170
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_9
    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    const/16 v7, 0x270f

    if-ne v5, v7, :cond_a

    iget v5, v9, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->style:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_a

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcxr;->b:J

    const-wide/16 v16, 0x2

    cmp-long v5, v14, v16

    if-eqz v5, :cond_6

    .line 176
    :cond_a
    :try_start_2
    iget v5, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    add-int v5, v5, v25

    iget v7, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    add-int v7, v7, v25

    iget v8, v10, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    add-int/2addr v7, v8

    const/16 v8, 0x21

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 177
    :catch_1
    move-exception v21

    .line 178
    .restart local v21    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1465
    .end local v4    # "clickableSpan":Lcxr$a;
    .end local v6    # "colorInt":I
    .end local v10    # "systemLinkElementDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v26    # "linkColorString":Ljava/lang/String;
    :cond_b
    if-eqz v32, :cond_c

    if-eqz p4, :cond_c

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v12

    const-wide/16 v14, 0x258

    cmp-long v5, v12, v14

    if-nez v5, :cond_c

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    if-nez v5, :cond_f

    .line 2437
    .end local v9    # "thirdPartDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    .end local v25    # "index":I
    .end local v27    # "msgIcon":Landroid/graphics/drawable/Drawable;
    .end local v28    # "msgText":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .end local v31    # "text":Ljava/lang/String;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcts;->f:Landroid/widget/TextView;

    .line 190
    if-eqz v5, :cond_d

    .line 3437
    move-object/from16 v0, p0

    iget-object v5, v0, Lcts;->f:Landroid/widget/TextView;

    .line 191
    sget-object v7, Lcxr;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->V:Landroid/widget/TextView;

    sget-object v7, Lcxr;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->V:Landroid/widget/TextView;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->V:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->V:Landroid/widget/TextView;

    new-instance v7, Lcxr$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcxr$2;-><init>(Lcxr;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 3520
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->d:Landroid/app/Activity;

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->Q:Lcom/alibaba/wukong/im/Message;

    if-nez v5, :cond_15

    .line 3521
    :cond_e
    :goto_6
    return-void

    .line 1468
    .restart local v9    # "thirdPartDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    .restart local v25    # "index":I
    .restart local v27    # "msgIcon":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "msgText":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .restart local v31    # "text":Ljava/lang/String;
    :cond_f
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v8

    .line 1469
    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1473
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v17

    .line 1474
    const-string/jumbo v5, "liveState"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1475
    const-string/jumbo v7, "recordSeenLevel"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1476
    const-string/jumbo v11, "liveUuid"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1478
    const-string/jumbo v11, "3"

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1481
    const-wide/16 v18, 0x0

    .line 1483
    :try_start_3
    const-string/jumbo v5, "anchorId"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-wide v18

    .line 1487
    :goto_7
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v12

    cmp-long v5, v12, v18

    if-nez v5, :cond_10

    const/4 v5, 0x1

    .line 1488
    :goto_8
    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1489
    if-nez v5, :cond_11

    if-eqz v7, :cond_11

    const/4 v14, 0x1

    .line 1491
    :goto_9
    sget v5, Lctk$i;->dt_common_comma:I

    invoke-static {v5}, Lcxr;->b(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1492
    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 1493
    if-eqz v14, :cond_12

    sget v5, Lctk$i;->dt_lv_view_playback:I

    :goto_a
    invoke-static {v5}, Lcxr;->b(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1495
    new-instance v11, Lcxr$5;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->d:Landroid/app/Activity;

    sget v8, Lctk$c;->ui_common_theme_text_color:I

    invoke-static {v5, v8}, Ldp;->c(Landroid/content/Context;I)I

    move-result v13

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    invoke-direct/range {v11 .. v19}, Lcxr$5;-><init>(Lcxr;IZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1509
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v8, 0x21

    move-object/from16 v0, v32

    invoke-virtual {v0, v11, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 184
    :catch_2
    move-exception v5

    goto/16 :goto_5

    .line 1487
    :cond_10
    const/4 v5, 0x0

    goto :goto_8

    .line 1489
    :cond_11
    const/4 v14, 0x0

    goto :goto_9

    .line 1493
    :cond_12
    sget v5, Lctk$i;->dt_common_view_detail:I

    goto :goto_a

    .line 185
    .end local v9    # "thirdPartDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    .end local v25    # "index":I
    .end local v27    # "msgIcon":Landroid/graphics/drawable/Drawable;
    .end local v31    # "text":Ljava/lang/String;
    :cond_13
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v32

    goto/16 :goto_5

    .line 188
    .end local v28    # "msgText":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_14
    const-string/jumbo v5, "UNKNOWN MESSAGE"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v32

    goto/16 :goto_5

    .line 3523
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-static {v5}, Ldeo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 3526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v5, :cond_e

    .line 3529
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-eqz v5, :cond_e

    .line 3532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->V:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcxr;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->systemMsgColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3533
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->d:Landroid/app/Activity;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v5, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 3534
    const/16 v7, 0x8

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v8, 0x2

    aput v5, v7, v8

    const/4 v8, 0x3

    aput v5, v7, v8

    const/4 v8, 0x4

    aput v5, v7, v8

    const/4 v8, 0x5

    aput v5, v7, v8

    const/4 v8, 0x6

    aput v5, v7, v8

    const/4 v8, 0x7

    aput v5, v7, v8

    .line 3535
    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-direct {v5, v7, v8, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 3536
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 3537
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcxr;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v8, v8, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->systemMsgBackgroundColor:I

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 3538
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxr;->V:Landroid/widget/TextView;

    invoke-static {v5, v7}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .restart local v6    # "colorInt":I
    .restart local v9    # "thirdPartDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
    .restart local v10    # "systemLinkElementDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
    .restart local v25    # "index":I
    .restart local v26    # "linkColorString":Ljava/lang/String;
    .restart local v27    # "msgIcon":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "msgText":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .restart local v31    # "text":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto/16 :goto_3

    .end local v6    # "colorInt":I
    .end local v10    # "systemLinkElementDo":Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
    .end local v26    # "linkColorString":Ljava/lang/String;
    :catch_4
    move-exception v5

    goto/16 :goto_7
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 242
    sget v0, Lctk$f;->chatting_content_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxr;->V:Landroid/widget/TextView;

    .line 243
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 232
    sget v0, Lctk$g;->chatting_item_system:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_conversation_system_message:I

    invoke-static {v2}, Lcxr;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcxr;->V:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcxr;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 460
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_conversation_system_message:I

    invoke-static {v2}, Lcxr;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcxr;->V:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcxr;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method
