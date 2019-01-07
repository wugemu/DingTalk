.class public interface abstract Lcom/taobao/wireless/security/sdk/safetoken/ISafeTokenComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "main"
.end annotation


# virtual methods
.method public abstract decryptWithToken(Ljava/lang/String;[BI)[B
.end method

.method public abstract encryptWithToken(Ljava/lang/String;[BI)[B
.end method

.method public abstract getOtp(Ljava/lang/String;I[Ljava/lang/String;[[B)[B
.end method

.method public abstract isTokenExisted(Ljava/lang/String;)Z
.end method

.method public abstract removeToken(Ljava/lang/String;)V
.end method

.method public abstract saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract signWithToken(Ljava/lang/String;[BI)Ljava/lang/String;
.end method
