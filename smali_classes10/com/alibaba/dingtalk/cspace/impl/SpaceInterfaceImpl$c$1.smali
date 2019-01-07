.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 881
    check-cast p1, Ljava/lang/String;

    .line 1884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :goto_0
    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    .line 2907
    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;Ljava/lang/String;)V

    invoke-static {v1}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 897
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    const-string/jumbo v1, "checkConversationSpaceId"

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->a(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->a:Lcma;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 893
    return-void
.end method
