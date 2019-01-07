.class public interface abstract Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "misc"
.end annotation


# virtual methods
.method public abstract indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
.end method

.method public abstract reportSusText(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract validateFileSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
