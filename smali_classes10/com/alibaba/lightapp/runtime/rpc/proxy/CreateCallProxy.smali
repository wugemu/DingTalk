.class public interface abstract Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
.super Ljava/lang/Object;
.source "CreateCallProxy.java"


# virtual methods
.method public abstract createACall(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
.end method

.method public abstract createBizCall(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
.end method

.method public abstract createCall(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createSystemCall(Landroid/app/Activity;Ljava/lang/String;)V
.end method
