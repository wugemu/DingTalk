.class final Lcwv$5;
.super Ljava/lang/Object;
.source "RemindCardItemViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwv;
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
.field final synthetic a:Lcwv;


# direct methods
.method constructor <init>(Lcwv;)V
    .locals 0
    .param p1, "this$0"    # Lcwv;

    .prologue
    .line 350
    iput-object p1, p0, Lcwv$5;->a:Lcwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    .line 1353
    if-eqz p1, :cond_0

    .line 1354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1355
    const-string/jumbo v1, "intent_key_festival_redpacket_resource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1356
    const-string/jumbo v1, "is_birthday"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1357
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcwv$5;->a:Lcwv;

    iget-object v2, v2, Lcwv;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcwv$5;->a:Lcwv;

    invoke-static {v3}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;)V

    .line 350
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    const-string/jumbo v0, "im"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendRedPacket "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcwv$5;->a:Lcwv;

    iget-object v1, v1, Lcwv;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcwv$5;->a:Lcwv;

    invoke-static {v2}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 370
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 364
    return-void
.end method
