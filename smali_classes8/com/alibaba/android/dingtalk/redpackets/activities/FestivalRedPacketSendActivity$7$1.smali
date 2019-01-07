.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;
.super Ljava/lang/Object;
.source "FestivalRedPacketSendActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 623
    const-string/jumbo v4, "redpackets"

    const-string/jumbo v5, "festival redpacket send"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "payRunnable clid:"

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string/jumbo v8, " type "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v8, v8, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    invoke-direct {v0, v4}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 629
    .local v0, "alipay":Lcom/alipay/sdk/app/PayTask;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->alipayOrderString:Ljava/lang/String;

    invoke-virtual {v0, v4, v9}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "result":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 631
    .local v2, "msg":Landroid/os/Message;
    iput v9, v2, Landroid/os/Message;->what:I

    .line 632
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 634
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "cluster"

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 635
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 636
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    return-void
.end method
