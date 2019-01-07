.class public interface abstract Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "main"
.end annotation


# virtual methods
.method public abstract getAppKeyByIndex(I)Ljava/lang/String;
.end method

.method public abstract getExtraData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getKeyType(Ljava/lang/String;)I
.end method
