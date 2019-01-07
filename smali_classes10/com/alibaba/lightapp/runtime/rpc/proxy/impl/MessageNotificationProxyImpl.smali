.class public Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/MessageNotificationProxyImpl;
.super Ljava/lang/Object;
.source "MessageNotificationProxyImpl.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/rpc/proxy/MessageNotificationProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelMessageNotification()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    .line 16
    return-void
.end method

.method public switchToOngoing()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->g()V

    .line 22
    return-void
.end method
