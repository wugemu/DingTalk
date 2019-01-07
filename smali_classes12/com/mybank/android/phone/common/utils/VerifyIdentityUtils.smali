.class public Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;
.super Ljava/lang/Object;
.source "VerifyIdentityUtils.java"


# static fields
.field private static final RND_BOUND:I = 0x80

.field private static final RSA_PUB_KEY_HARD_ONLINE:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv+8ILqsASxulyk44beo/JJeMs4l1JcrkQI6LAfxBsSVFFm0/RkRGjd9pLT0Y4VcPU/CfKvXesp2PcYOkdj+E74gZ49ePRtohCfvJmeIvNFcwT5etvDLcqxX04+MbwtrQt7gvluQaPmCoRIXXTTAZf9cSvDYoRKQZ9A64Rqrse/YpImurI1yuT8vGw5vf22/7P87C5qTT/lpqsPx9kVdDZ/pY1O72SON25VDrjEK7R5rwRxMQOY9TxCmgPJzj3uUXtYf1ZObZVlbIjpZ20rtPTmh48lyjYSToIWwJa6UzvF0NcwXWMI3DrgKLUVCUpktWqWeYgV7JGc9E8LZmMNLmYwIDAQAB"

.field private static final RSA_PUB_KEY_HARD_TEST:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA+u3dJpvadxMqVJH4uEfhmY9+yjJJaplnd9iL9aX4nKty1yuRTSSDUWCaSXMF+RR/LWc1Wkt5lLWbXTZ2Bcv3vUTORrOyfRd5b3IGTJVERrcEDEJVbKN+CdX53CS18hAV3ugCUOHzI53VT4TLWh0P9OtqBXpOkBzsRvCl36Yc+L5whiBy64cTfcp+GAcRBLaUl2ZvVojg6WKwcTBinkEsGIcUdv/whftnXIWAK4jeOX7NddKcaZO7aehEq2XO1IryzgAUnRr9Og515VpRBvBYMxKBvHcXFpCGWfg8xWIalU4BiwY6etKsYyAOz9JOnt8kLMR0POyVVwRWGn20xUOuKwIDAQAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->encrypt_Hard_RSA_Base64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "encryptedPwd":Ljava/lang/String;
    return-object v0
.end method

.method public static encrypt_Hard_RSA_Base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x100

    .line 106
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/16 v10, 0x100

    new-array v9, v10, [B

    .line 109
    .local v9, "targetBytes":[B
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 110
    .local v7, "random":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_0

    .line 111
    const/16 v10, 0x80

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x80

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    .local v2, "integer":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v10

    aput-byte v10, v9, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "integer":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 115
    .local v3, "length":I
    const/16 v10, 0xa

    if-ge v3, v10, :cond_1

    .line 116
    const-string/jumbo v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    :goto_1
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 123
    .local v5, "pin":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    add-int/lit8 v12, v3, 0x2

    invoke-static {v5, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    const-string/jumbo v10, "RSA"

    invoke-static {}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->getRsaPkHard()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v6

    .line 130
    .local v6, "pubkey":Ljava/security/PublicKey;
    if-nez v6, :cond_2

    .line 132
    const/4 v10, 0x0

    .line 142
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v5    # "pin":[B
    .end local v6    # "pubkey":Ljava/security/PublicKey;
    .end local v7    # "random":Ljava/util/Random;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "targetBytes":[B
    :goto_2
    return-object v10

    .line 119
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v7    # "random":Ljava/util/Random;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "targetBytes":[B
    :cond_1
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v7    # "random":Ljava/util/Random;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "targetBytes":[B
    :catch_0
    move-exception v10

    const-string/jumbo v10, ""

    goto :goto_2

    .line 134
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v5    # "pin":[B
    .restart local v6    # "pubkey":Ljava/security/PublicKey;
    .restart local v7    # "random":Ljava/util/Random;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "targetBytes":[B
    :cond_2
    :try_start_1
    const-string/jumbo v10, "RSA/ECB/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 136
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 138
    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 139
    .local v4, "output":[B
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v4, v11}, Lhv;->c([BI)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v3, 0x2

    :try_start_0
    invoke-static {p1, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 156
    .local v0, "decodedKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 157
    .local v2, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 158
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 160
    .end local v0    # "decodedKey":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getRsaPkHard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Ljev;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA+u3dJpvadxMqVJH4uEfhmY9+yjJJaplnd9iL9aX4nKty1yuRTSSDUWCaSXMF+RR/LWc1Wkt5lLWbXTZ2Bcv3vUTORrOyfRd5b3IGTJVERrcEDEJVbKN+CdX53CS18hAV3ugCUOHzI53VT4TLWh0P9OtqBXpOkBzsRvCl36Yc+L5whiBy64cTfcp+GAcRBLaUl2ZvVojg6WKwcTBinkEsGIcUdv/whftnXIWAK4jeOX7NddKcaZO7aehEq2XO1IryzgAUnRr9Og515VpRBvBYMxKBvHcXFpCGWfg8xWIalU4BiwY6etKsYyAOz9JOnt8kLMR0POyVVwRWGn20xUOuKwIDAQAB"

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv+8ILqsASxulyk44beo/JJeMs4l1JcrkQI6LAfxBsSVFFm0/RkRGjd9pLT0Y4VcPU/CfKvXesp2PcYOkdj+E74gZ49ePRtohCfvJmeIvNFcwT5etvDLcqxX04+MbwtrQt7gvluQaPmCoRIXXTTAZf9cSvDYoRKQZ9A64Rqrse/YpImurI1yuT8vGw5vf22/7P87C5qTT/lpqsPx9kVdDZ/pY1O72SON25VDrjEK7R5rwRxMQOY9TxCmgPJzj3uUXtYf1ZObZVlbIjpZ20rtPTmh48lyjYSToIWwJa6UzvF0NcwXWMI3DrgKLUVCUpktWqWeYgV7JGc9E8LZmMNLmYwIDAQAB"

    goto :goto_0
.end method

.method public static preVerifyAlipay(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "gwUrl"

    const-string/jumbo v3, "gateway_url"

    invoke-static {p0, v3}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "pubkey"

    const-string/jumbo v3, "alipay"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-class v2, Lcom/mybank/android/phone/common/service/api/AlipayRpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 73
    .local v1, "rpcService":Lcom/mybank/android/phone/common/service/api/RpcService;
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    move-result-object v2

    new-instance v3, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$3;

    invoke-direct {v3, v1}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$3;-><init>(Lcom/mybank/android/phone/common/service/api/RpcService;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->inject(Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;)V

    .line 83
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getInstance()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    move-result-object v2

    new-instance v3, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$4;

    invoke-direct {v3, v1}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$4;-><init>(Lcom/mybank/android/phone/common/service/api/RpcService;)V

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->inject(Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;)V

    .line 95
    return-object v0
.end method

.method public static preVerifyMYBank(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "gwUrl"

    const-string/jumbo v3, "gateway_url"

    invoke-static {p0, v3}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "pubkey"

    const-string/jumbo v3, "mybank"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v2, "VI_PWD_SCENE"

    const-string/jumbo v3, "mybank"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-class v2, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 40
    .local v1, "rpcService":Lcom/mybank/android/phone/common/service/api/RpcService;
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    move-result-object v2

    new-instance v3, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$1;

    invoke-direct {v3, v1}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$1;-><init>(Lcom/mybank/android/phone/common/service/api/RpcService;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->inject(Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;)V

    .line 50
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getInstance()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    move-result-object v2

    new-instance v3, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$2;

    invoke-direct {v3, v1}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils$2;-><init>(Lcom/mybank/android/phone/common/service/api/RpcService;)V

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->inject(Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;)V

    .line 62
    return-object v0
.end method
