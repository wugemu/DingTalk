.class public interface abstract Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "securitybody"
.end annotation


# virtual methods
.method public abstract getSecurityBodyData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecurityBodyDataEx(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract initSecurityBody(Ljava/lang/String;)Z
.end method

.method public abstract putUserActionRecord(Ljava/lang/String;Ljava/lang/String;FF)Z
.end method

.method public abstract putUserTrackRecord(Ljava/lang/String;)Z
.end method

.method public abstract setSecurityBodyServer(I)V
.end method
