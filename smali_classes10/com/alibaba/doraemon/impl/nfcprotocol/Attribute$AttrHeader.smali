.class Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttrHeader"
.end annotation


# static fields
.field public static final SIZE:I = 0x3


# instance fields
.field public mLength:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mType:I

    .line 120
    iput p2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mLength:I

    .line 121
    return-void
.end method

.method public static load(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;
    .locals 3
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 124
    if-eqz p0, :cond_0

    .line 125
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;-><init>()V

    .line 126
    .local v0, "attrHeader":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mType:I

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mLength:I

    .line 130
    .end local v0    # "attrHeader":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 134
    iget v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mType:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 135
    iget v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mLength:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 136
    return-void
.end method
