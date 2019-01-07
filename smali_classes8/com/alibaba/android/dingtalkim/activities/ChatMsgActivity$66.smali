.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1225
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_festivalredenvelope_botton_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1226
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v0

    .line 1227
    .local v0, "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-nez v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pre_key_chat_festival_redpacket_clicked_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1233
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    .line 1234
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x()V

    .line 1236
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 1237
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 1236
    invoke-virtual {v3, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b(Lcma;)Z

    move-result v1

    .line 1265
    .local v1, "showLoading":Z
    if-eqz v1, :cond_0

    .line 1266
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->showLoadingDialog()V

    goto :goto_0
.end method
