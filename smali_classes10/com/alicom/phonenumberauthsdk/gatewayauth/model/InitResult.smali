.class public Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;
.super Ljava/lang/Object;
.source "InitResult.java"


# static fields
.field public static final NO_READ_PHONE_STATE_PERMISSION:I = -0x2

.field public static final READ_SUCCESS:I = 0x0

.field public static final SIM_NO_DATA:I = -0x1


# instance fields
.field private SimPhoneNumberRetCode:I

.field private can4GAuth:Z

.field private simPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSimPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->simPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimPhoneNumberRetCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->SimPhoneNumberRetCode:I

    return v0
.end method

.method public isCan4GAuth()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->can4GAuth:Z

    return v0
.end method

.method public setCan4GAuth(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->can4GAuth:Z

    .line 31
    return-void
.end method

.method public setSimPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->simPhoneNumber:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setSimPhoneNumberRetCode(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->SimPhoneNumberRetCode:I

    .line 39
    return-void
.end method
