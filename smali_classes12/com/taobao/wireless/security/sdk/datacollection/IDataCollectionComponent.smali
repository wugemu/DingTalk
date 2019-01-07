.class public interface abstract Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "main"
.end annotation


# virtual methods
.method public abstract getEncryptedDevAndEnvInfo(ILjava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNick()Ljava/lang/String;
.end method

.method public abstract getNickEx(I)Ljava/lang/String;
.end method

.method public abstract setNick(Ljava/lang/String;)Z
.end method

.method public abstract setNickEx(ILjava/lang/String;)Z
.end method
