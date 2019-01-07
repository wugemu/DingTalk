.class public Lcom/alibaba/doraemon/impl/nfcprotocol/Call;
.super Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->CALL:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    const/16 v2, 0x800

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;-><init>(BLcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;S)V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;)V
    .locals 0
    .param p1, "header"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;
    .param p2, "body"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;-><init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;)V

    .line 16
    return-void
.end method


# virtual methods
.method public body([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->setData([B)V

    .line 51
    return-void
.end method

.method public body()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

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
    .line 19
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->code:I

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
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->code:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public messageId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->code:I

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
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

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
    .line 29
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->code:I

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
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->code:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(ILjava/lang/String;)V

    goto :goto_0
.end method
