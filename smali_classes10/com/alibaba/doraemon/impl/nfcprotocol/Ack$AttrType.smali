.class final enum Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;
.super Ljava/lang/Enum;
.source "Ack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AttrType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

.field public static final enum CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

.field public static final enum METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

.field public static final enum MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;


# instance fields
.field public code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    const-string/jumbo v1, "CLASS"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    .line 58
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    const-string/jumbo v1, "METHOD"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    .line 59
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    const-string/jumbo v1, "MessageId"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->$VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->code:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->$VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/impl/nfcprotocol/Ack$AttrType;

    return-object v0
.end method
