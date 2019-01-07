.class Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;
.super Ljava/lang/Object;
.source "UserProfileProxyImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;->getUserProfile(JLhqu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;

.field final synthetic val$callback:Lhqu;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;Lhqu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;->this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;->val$callback:Lhqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;->val$callback:Lhqu;

    invoke-interface {v0, p1}, Lhqu;->onSuccess(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;->onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;->val$callback:Lhqu;

    invoke-interface {v0, p1, p2}, Lhqu;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 35
    return-void
.end method
