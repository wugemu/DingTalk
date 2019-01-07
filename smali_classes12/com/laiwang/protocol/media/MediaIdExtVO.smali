.class public Lcom/laiwang/protocol/media/MediaIdExtVO;
.super Ljava/lang/Object;
.source "MediaIdExtVO.java"


# instance fields
.field private authType:I

.field private height:I

.field private idc:I

.field private randFactor:[B

.field private type:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->authType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->height:I

    return v0
.end method

.method public getIdc()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->idc:I

    return v0
.end method

.method public getRandFactor()[B
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->randFactor:[B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->width:I

    return v0
.end method

.method public setAuthType(I)V
    .locals 0
    .param p1, "authType"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->authType:I

    .line 43
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->height:I

    .line 67
    return-void
.end method

.method public setIdc(I)V
    .locals 0
    .param p1, "idc"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->idc:I

    .line 27
    return-void
.end method

.method public setRandFactor([B)V
    .locals 0
    .param p1, "randFactor"    # [B

    .prologue
    .line 50
    iput-object p1, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->randFactor:[B

    .line 51
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->type:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/laiwang/protocol/media/MediaIdExtVO;->width:I

    .line 59
    return-void
.end method
