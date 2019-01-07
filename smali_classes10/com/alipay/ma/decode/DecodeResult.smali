.class public Lcom/alipay/ma/decode/DecodeResult;
.super Ljava/lang/Object;
.source "DecodeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfa5728004b6425dL


# instance fields
.field public bitErrors:I

.field public bytes:[B

.field public decodeBytes:[B

.field public ecLevel:C

.field public height:I

.field public hiddenData:Ljava/lang/String;

.field public resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

.field public strCode:Ljava/lang/String;

.field public strategy:I

.field public subType:I

.field public type:I

.field public version:I

.field public width:I

.field public x:I

.field public xCorner:[I

.field public y:I

.field public yCorner:[I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/alipay/ma/decode/DecodeResult;->type:I

    .line 62
    iput p2, p0, Lcom/alipay/ma/decode/DecodeResult;->subType:I

    .line 63
    iput-object p3, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    .line 64
    return-void
.end method

.method public constructor <init>(II[BIIII[BLjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "decodeBytes"    # [B
    .param p9, "hiddenData"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/alipay/ma/decode/DecodeResult;->type:I

    .line 48
    iput p2, p0, Lcom/alipay/ma/decode/DecodeResult;->subType:I

    .line 49
    iput-object p3, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    .line 50
    iput p4, p0, Lcom/alipay/ma/decode/DecodeResult;->x:I

    .line 51
    iput p5, p0, Lcom/alipay/ma/decode/DecodeResult;->y:I

    .line 52
    iput p6, p0, Lcom/alipay/ma/decode/DecodeResult;->width:I

    .line 53
    iput p7, p0, Lcom/alipay/ma/decode/DecodeResult;->height:I

    .line 54
    iput-object p8, p0, Lcom/alipay/ma/decode/DecodeResult;->decodeBytes:[B

    .line 55
    iput-object p9, p0, Lcom/alipay/ma/decode/DecodeResult;->hiddenData:Ljava/lang/String;

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/ma/decode/DecodeResult;->xCorner:[I

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/ma/decode/DecodeResult;->yCorner:[I

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DecodeResult [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", strCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->bytes:[B

    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", decodeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->decodeBytes:[B

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hiddenData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->hiddenData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method
