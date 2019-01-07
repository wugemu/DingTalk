.class Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttrValue"
.end annotation


# instance fields
.field protected mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

.field protected mValue:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "v"    # [B

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    .line 252
    return-void
.end method


# virtual methods
.method public dump(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    array-length v0, v0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public value()[B
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
