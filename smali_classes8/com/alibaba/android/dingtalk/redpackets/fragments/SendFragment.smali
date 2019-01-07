.class public abstract Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "SendFragment.java"


# instance fields
.field protected a:Lcom/alibaba/wukong/im/Conversation;

.field protected b:Landroid/widget/Button;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:[J

.field protected f:D

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:J

.field protected k:Ljava/lang/String;

.field protected l:Z

.field protected m:Ljava/lang/String;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private o:Landroid/webkit/WebView;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 489
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    const/4 v11, 0x3

    const-wide/16 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 78
    .line 1630
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->l:Z

    .line 1631
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->m:Ljava/lang/String;

    invoke-static {v0, v8, v1}, Lcbw;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1632
    if-eqz p1, :cond_0

    .line 1634
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->j:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 1709
    if-eqz p1, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p1, v0, v9}, Lcbv;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1715
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "redpacket_on_send_complete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1717
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v1, :cond_1

    .line 1718
    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    aput-object v3, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    .line 1699
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 1639
    :cond_2
    new-instance v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-direct {v7}, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;-><init>()V

    .line 1640
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    .line 1641
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    iput v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    .line 1642
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    .line 1643
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->amount:Ljava/lang/String;

    .line 1644
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    iput-wide v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    .line 1645
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgId:Ljava/lang/String;

    .line 1646
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Lcbw;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgName:Ljava/lang/String;

    .line 1647
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    .line 1648
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    iput v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    .line 1649
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    if-eqz v0, :cond_3

    .line 1651
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageMediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    .line 1652
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->themeId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->themeId:Ljava/lang/String;

    .line 1653
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->bgMediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->bgMediaId:Ljava/lang/String;

    .line 1654
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :cond_3
    :goto_1
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1661
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x389

    const/16 v2, 0x389

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    .line 1669
    :goto_2
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1672
    const-string/jumbo v2, "clusterId"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    new-instance v2, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 1674
    iput v8, v2, Lcom/alibaba/wukong/im/MessageSendInfo;->priority:I

    .line 1675
    iput-object v0, v2, Lcom/alibaba/wukong/im/MessageSendInfo;->extension:Ljava/util/Map;

    .line 1676
    new-instance v3, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    .line 1677
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    .line 1678
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1679
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1680
    new-array v0, v11, [Ljava/lang/String;

    iget-object v2, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v9

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    .line 1689
    :goto_3
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v2, "send"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "paySuccess redpackets msg send clid "

    aput-object v5, v4, v9

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string/jumbo v5, " cid "

    aput-object v5, v4, v10

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->cid:Ljava/lang/String;

    aput-object v5, v4, v11

    .line 1690
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1689
    invoke-static {v0, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;

    .line 1694
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/Message;->passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 1696
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "redpacket_on_send_complete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1698
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v1, :cond_a

    .line 1699
    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    aput-object v3, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 1662
    :cond_4
    iget v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    if-ne v0, v10, :cond_5

    .line 1663
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x384

    const/16 v2, 0x384

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 1664
    :cond_5
    iget v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    if-nez v0, :cond_6

    .line 1665
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x385

    const/16 v2, 0x385

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 1667
    :cond_6
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x386

    const/16 v2, 0x386

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 1682
    :cond_7
    new-array v0, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v4, Lcaj$f;->dt_session_list_festival_red_packet_prefix:I

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_3

    .line 1684
    :cond_8
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    if-ne v0, v10, :cond_9

    .line 1685
    new-array v0, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v4, Lcaj$f;->repackets_enterprise:I

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_3

    .line 1687
    :cond_9
    new-array v0, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v4, Lcaj$f;->repackets_xpn_normal:I

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_3

    .line 1701
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    .line 78
    .line 2594
    if-eqz p1, :cond_0

    .line 2595
    sget v0, Lcaj$f;->redpackets_checking_result:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a(I)V

    .line 2596
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "send"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pay result failed, quering:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->businessId:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    invoke-virtual {v0, v1, v2}, Lcbs;->a(Ljava/lang/String;Lcma;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2
    .param p1, "res"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->G:Landroid/app/Application;

    invoke-virtual {v1, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 119
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 37
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/Integer;
    .param p4, "type"    # Ljava/lang/Integer;
    .param p5, "congratulations"    # Ljava/lang/String;
    .param p6, "senderPayType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->b:Landroid/widget/Button;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->b:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->b:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->o:Landroid/webkit/WebView;

    if-nez v2, :cond_2

    .line 290
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->o:Landroid/webkit/WebView;

    .line 293
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->o:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onResume()V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->o:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_1
    sget v2, Lcaj$f;->redpackets_processing:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a(I)V

    .line 300
    const/4 v9, 0x0

    .line 301
    .local v9, "cid":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 302
    .local v11, "oid":J
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 304
    const-wide/16 v11, 0x1

    .line 306
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v6, 0x2

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "id"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "id"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 314
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    .line 316
    :cond_5
    invoke-static {}, Lcbr;->a()Lcbr;

    move-result-object v2

    invoke-virtual {v2}, Lcbr;->b()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "clusterId":Ljava/lang/String;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;Ljava/lang/String;)V

    const-class v5, Lcma;

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 317
    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcma;

    .line 448
    .local v18, "apiEventListener":Lcma;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 449
    new-instance v13, Lcbe;

    invoke-direct {v13}, Lcbe;-><init>()V

    .line 450
    .local v13, "redEnvelopeSubscribeLifecycleModel":Lcbe;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->g:Ljava/lang/String;

    iput-object v2, v13, Lcbe;->a:Ljava/lang/String;

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->h:Ljava/lang/String;

    iput-object v2, v13, Lcbe;->b:Ljava/lang/String;

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->i:Ljava/lang/String;

    iput-object v2, v13, Lcbe;->c:Ljava/lang/String;

    .line 453
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move/from16 v17, p6

    invoke-virtual/range {v2 .. v18}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLcbe;JLjava/lang/String;ILcma;)V

    goto/16 :goto_0

    .line 295
    .end local v4    # "clusterId":Ljava/lang/String;
    .end local v9    # "cid":Ljava/lang/String;
    .end local v11    # "oid":J
    .end local v13    # "redEnvelopeSubscribeLifecycleModel":Lcbe;
    .end local v18    # "apiEventListener":Lcma;
    :catch_0
    move-exception v19

    .line 296
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 310
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v9    # "cid":Ljava/lang/String;
    .restart local v11    # "oid":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "orgId"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "orgId"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto/16 :goto_2

    .line 468
    .restart local v4    # "clusterId":Ljava/lang/String;
    .restart local v18    # "apiEventListener":Lcma;
    :cond_7
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v20

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->j:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->k:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v22, v4

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    move-object/from16 v26, p4

    move-object/from16 v27, v9

    move-object/from16 v28, p5

    move-wide/from16 v29, v11

    move/from16 v35, p6

    move-object/from16 v36, v18

    invoke-virtual/range {v20 .. v36}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLcbe;JLjava/lang/String;ILcma;)V

    goto/16 :goto_0
.end method

.method protected final b(I)V
    .locals 5
    .param p1, "payMethod"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 726
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;I)V

    const-class v4, Lcma;

    .line 743
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 726
    invoke-interface {v1, v3, v4, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 745
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    .line 1466
    new-instance v2, Lcbs$12;

    invoke-direct {v2, v1, v0}, Lcbs$12;-><init>(Lcbs;Lcma;)V

    .line 1473
    const-class v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    .line 1474
    if-eqz v1, :cond_0

    .line 1475
    invoke-interface {v1, p1, v2}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;->changePayMethod(ILiyv;)V

    .line 746
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 125
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "receivers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->e:[J

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "money"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->f:D

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "cong"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->c:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->d:I

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "thirdparty_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->g:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "thirdparty_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->i:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_msgs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->h:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pick_send_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->j:J

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extension"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->k:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_callback_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->m:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 750
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->o:Landroid/webkit/WebView;

    .line 752
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->l:Z

    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcbw;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 755
    :cond_0
    return-void
.end method
