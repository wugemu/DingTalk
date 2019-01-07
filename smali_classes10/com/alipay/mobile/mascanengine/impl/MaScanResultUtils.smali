.class public Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;
.super Ljava/lang/Object;
.source "MaScanResultUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MaScanResultUtils"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static fromMaResult(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MaScanResult;
    .locals 7
    .param p0, "maResult"    # Lcom/alipay/ma/decode/DecodeResult;

    .prologue
    .line 47
    const-string/jumbo v1, "MaScanResultUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fromMaResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2029
    sget-object v1, Liir;->a:Liir$a;

    .line 48
    if-nez p0, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanResult;

    invoke-direct {v0}, Lcom/alipay/mobile/mascanengine/MaScanResult;-><init>()V

    .line 52
    .local v0, "result":Lcom/alipay/mobile/mascanengine/MaScanResult;
    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->text:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/alipay/ma/decode/DecodeResult;->resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

    invoke-static {v1}, Lcom/alipay/mobile/mascanengine/MaScanType;->getType(Lcom/alipay/ma/common/result/ResultMaType;)Lcom/alipay/mobile/mascanengine/MaScanType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->type:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 54
    iget-char v1, p0, Lcom/alipay/ma/decode/DecodeResult;->ecLevel:C

    iput-char v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->ecLevel:C

    .line 55
    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->bitErrors:I

    iput v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->bitErrors:I

    .line 56
    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->version:I

    iput v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->version:I

    .line 57
    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->strategy:I

    iput v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->strategy:I

    .line 58
    iget-object v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->type:Lcom/alipay/mobile/mascanengine/MaScanType;

    sget-object v2, Lcom/alipay/mobile/mascanengine/MaScanType;->QR:Lcom/alipay/mobile/mascanengine/MaScanType;

    if-ne v1, v2, :cond_0

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/alipay/ma/decode/DecodeResult;->x:I

    iget v3, p0, Lcom/alipay/ma/decode/DecodeResult;->y:I

    iget v4, p0, Lcom/alipay/ma/decode/DecodeResult;->x:I

    iget v5, p0, Lcom/alipay/ma/decode/DecodeResult;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/alipay/ma/decode/DecodeResult;->y:I

    iget v6, p0, Lcom/alipay/ma/decode/DecodeResult;->height:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/alipay/mobile/mascanengine/MaScanResult;->rect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public static fromMaResults([Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    .locals 10
    .param p0, "maResults"    # [Lcom/alipay/ma/decode/DecodeResult;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    if-nez p0, :cond_0

    move-object v3, v6

    .line 42
    :goto_0
    return-object v3

    .line 26
    :cond_0
    new-instance v3, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;

    invoke-direct {v3}, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;-><init>()V

    .line 27
    .local v3, "multiMaScanResult":Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/mascanengine/MaScanResult;>;"
    array-length v8, p0

    move v5, v7

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v1, p0, v5

    .line 29
    .local v1, "maResult":Lcom/alipay/ma/decode/DecodeResult;
    invoke-static {v1}, Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;->fromMaResult(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MaScanResult;

    move-result-object v2

    .line 30
    .local v2, "maScanResult":Lcom/alipay/mobile/mascanengine/MaScanResult;
    iget-object v9, v2, Lcom/alipay/mobile/mascanengine/MaScanResult;->rect:Landroid/graphics/Rect;

    if-eqz v9, :cond_1

    .line 31
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 34
    .end local v1    # "maResult":Lcom/alipay/ma/decode/DecodeResult;
    .end local v2    # "maScanResult":Lcom/alipay/mobile/mascanengine/MaScanResult;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 35
    aget-object v5, p0, v7

    invoke-static {v5}, Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;->fromMaResult(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MaScanResult;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_3
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/alipay/mobile/mascanengine/MaScanResult;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/alipay/mobile/mascanengine/MaScanResult;

    iput-object v5, v3, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->maScanResults:[Lcom/alipay/mobile/mascanengine/MaScanResult;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "MaScanResultUtils"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    .line 1047
    sget-object v5, Liir;->a:Liir$a;

    move-object v3, v6

    .line 42
    goto :goto_0
.end method
