.class public Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/TeleFloatingConfProxyImpl;
.super Ljava/lang/Object;
.source "TeleFloatingConfProxyImpl.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleFloatingConfProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startShowFloating()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->f()V

    .line 15
    return-void
.end method
