.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;
.super Ljava/lang/Object;
.source "VaildRequest.java"


# instance fields
.field private accessCode:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private osType:Ljava/lang/String;

.field private vendor_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->osType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->accessCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->osType:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor_key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->vendor_key:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->accessCode:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->deviceType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->location:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->mobile:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setOsType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->osType:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVendor_key(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->vendor_key:Ljava/lang/String;

    .line 38
    return-void
.end method
