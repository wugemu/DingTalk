.class public Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/CreateCallProxyImpl;
.super Ljava/lang/Object;
.source "CreateCallProxyImpl.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createACall(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 20
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 21
    return-void
.end method

.method public createBizCall(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 1
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 35
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 36
    return-void
.end method

.method public createCall(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
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

    .prologue
    .line 25
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    return-void
.end method

.method public createSystemCall(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
