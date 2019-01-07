.class public abstract Lcom/mybank/android/phone/common/service/api/CipherService;
.super Lcom/mybank/android/phone/common/service/api/CommonService;
.source "CipherService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/CommonService;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract decrypt_Base64_RSA_ByRSAPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract decrypt_DES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt_DES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt_Hard_RSA_Base64(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt_RSA_Base64(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract encrypt_RSA_Base64_ByRSAPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt_SHA256_RSA_Base64(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract encrypt_Soft_SHA256_RSA_Base64(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt_Soft_SM3_SM2_Base64(Ljava/lang/String;)Ljava/lang/String;
.end method
