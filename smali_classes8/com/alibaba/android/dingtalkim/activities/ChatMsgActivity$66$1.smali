.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->onClick(Landroid/view/View;)V
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
        "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1238
    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    .line 2241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->dismissLoadingDialog()V

    .line 2243
    const-string/jumbo v1, "im"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "ChatMsgActivity"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "fetch festival package success, title:"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    .line 2246
    :goto_0
    aput-object v0, v2, v3

    .line 2244
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2243
    invoke-static {v1, v0}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2249
    const-string/jumbo v1, "intent_key_festival_redpacket_resource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2250
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;)V

    .line 1238
    return-void

    .line 2243
    :cond_0
    iget-object v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->title:Ljava/lang/String;

    .line 2246
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1259
    sget v0, Lctk$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->dismissLoadingDialog()V

    .line 1262
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ChatMsgActivity"

    const-string/jumbo v2, "fetch festival package failed."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1255
    return-void
.end method
