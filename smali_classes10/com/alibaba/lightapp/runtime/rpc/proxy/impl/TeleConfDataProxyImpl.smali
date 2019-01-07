.class public Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/TeleConfDataProxyImpl;
.super Ljava/lang/Object;
.source "TeleConfDataProxyImpl.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfDataProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConfOnGoing()Z
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b()Z

    move-result v0

    return v0
.end method

.method public isOpenBizCall(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Ljava/lang/String;Lcma;)V

    .line 21
    return-void
.end method
