.class final enum Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AttrType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

.field public static final enum CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

.field public static final enum METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

.field public static final enum MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;


# instance fields
.field public code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    const-string/jumbo v1, "CLASS"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    .line 59
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    const-string/jumbo v1, "METHOD"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    .line 60
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    const-string/jumbo v1, "MessageId"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->CLASS:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->METHOD:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->MessageId:Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->$VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->code:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->$VALUES:[Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/impl/nfcprotocol/Call$AttrType;

    return-object v0
.end method
