.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;
.super Ljava/lang/Object;
.source "VendorConfig.java"


# instance fields
.field private keyParam:Ljava/lang/String;

.field private vendorAccessId:Ljava/lang/String;

.field private vendorAccessSecret:Ljava/lang/String;

.field private vendorKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->keyParam:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorAccessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorAccessId:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorAccessSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorAccessSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorKey:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->keyParam:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setVendorAccessId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorAccessId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setVendorAccessSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorAccessSecret:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setVendorKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorKey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x27

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VendorConfig{keyParam=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->keyParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", vendorAccessId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorAccessId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", vendorAccessSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorAccessSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", vendorKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VendorConfig;->vendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
