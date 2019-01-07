.class Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;
.super Ljava/lang/Object;
.source "UserDataProxyImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;->getUidByCorpIdAndStaffId(Ljava/lang/String;Ljava/lang/String;Lhqu;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;

.field final synthetic val$callback:Lhqu;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;Lhqu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;->this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;->val$callback:Lhqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Long;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Long;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;->val$callback:Lhqu;

    invoke-interface {v0, p1}, Lhqu;->onSuccess(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;->onDataReceived(Ljava/lang/Long;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserDataProxyImpl$1;->val$callback:Lhqu;

    invoke-interface {v0, p1, p2}, Lhqu;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 36
    return-void
.end method
