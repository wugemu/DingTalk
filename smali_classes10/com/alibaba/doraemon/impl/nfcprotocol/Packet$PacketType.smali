.class final enum Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;
.super Ljava/lang/Enum;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PacketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

.field public static final enum ACK:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

.field public static final enum CALL:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;


# instance fields
.field public code:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    const-string/jumbo v1, "CALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->CALL:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    .line 249
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    const-string/jumbo v1, "ACK"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->ACK:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->CALL:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->ACK:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->$VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "code"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 252
    iput-byte p3, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->code:B

    .line 253
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    const-class v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->$VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    return-object v0
.end method
