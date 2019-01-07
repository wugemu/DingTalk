.class public Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;,
        Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;,
        Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;
    }
.end annotation


# instance fields
.field protected mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

.field protected mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;


# direct methods
.method public constructor <init>(BLcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;S)V
    .locals 2
    .param p1, "version"    # B
    .param p2, "type"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;
    .param p3, "magicNumber"    # S

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    iget-byte v1, p2, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->code:B

    invoke-direct {v0, p1, v1, p3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;-><init>(BBS)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    .line 21
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;)V
    .locals 0
    .param p1, "header"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;
    .param p2, "body"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    .line 16
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    .line 17
    return-void
.end method


# virtual methods
.method public length()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "len":I
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    if-eqz v1, :cond_0

    .line 27
    add-int/lit8 v0, v0, 0xa

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_1
    return v0
.end method
