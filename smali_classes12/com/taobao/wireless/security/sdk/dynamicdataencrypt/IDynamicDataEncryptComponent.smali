.class public interface abstract Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "main"
.end annotation


# virtual methods
.method public abstract dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dynamicDecryptDDp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dynamicEncryptDDp(Ljava/lang/String;)Ljava/lang/String;
.end method
