.class Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl$1;
.super Ljava/lang/Object;
.source "OrgEmployeeProxyImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl;->queryUserIdentityObjectList(Ljava/lang/String;Ljava/util/List;Lhqu;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl;

.field final synthetic val$callback:Lhqu;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl;Lhqu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl$1;->this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl$1;->val$callback:Lhqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl$1;->val$callback:Lhqu;

    invoke-interface {v0, p1}, Lhqu;->onSuccess(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/OrgEmployeeProxyImpl$1;->val$callback:Lhqu;

    invoke-interface {v0, p1, p2}, Lhqu;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 27
    return-void
.end method
