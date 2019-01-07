.class public Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;
.super Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
.source "Ack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->ACK:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    const/16 v2, 0x800

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;-><init>(BLcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;S)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;)V
    .locals 0
    .param p1, "header"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;
    .param p2, "body"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;-><init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;)V

    .line 15
    return-void
.end method


# virtual methods
.method public body([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->setData([B)V

    .line 54
    return-void
.end method

.method public body()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->data()[B

    move-result-object v0

    return-object v0
.end method

.method public clz()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->code:I

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->getStringAttr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clz(Ljava/lang/String;)V
    .locals 2
    .param p1, "clz"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->code:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public messageId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->code:I

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->getStringAttr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public messageId(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->code:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public method()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->code:I

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->getStringAttr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public method(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->code:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(ILjava/lang/String;)V

    goto :goto_0
.end method
