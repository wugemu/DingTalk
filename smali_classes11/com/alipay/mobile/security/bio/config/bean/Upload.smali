.class public Lcom/alipay/mobile/security/bio/config/bean/Upload;
.super Ljava/lang/Object;
.source "Upload.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->a:I

    .line 9
    const-string/jumbo v0, "2.0"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->b:Ljava/lang/String;

    .line 10
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->c:F

    return-void
.end method


# virtual methods
.method public getMinquality()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->a:I

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUpload_compress_rate()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->c:F

    return v0
.end method

.method public setMinquality(I)V
    .locals 0
    .param p1, "minquality"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->a:I

    .line 18
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUpload_compress_rate(F)V
    .locals 0
    .param p1, "upload_compress_rate"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/Upload;->c:F

    .line 34
    return-void
.end method
