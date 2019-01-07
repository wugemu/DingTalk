.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6$1;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;

    .prologue
    .line 1706
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1719
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1706
    check-cast p1, Ljava/lang/String;

    .line 2709
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1706
    :cond_0
    return-void
.end method
