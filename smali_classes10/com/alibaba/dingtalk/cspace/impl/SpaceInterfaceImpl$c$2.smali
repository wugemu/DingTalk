.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;
.super Lgqq;
.source "SpaceInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 8
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 910
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 911
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->a:Ljava/lang/String;

    .line 1927
    new-instance v0, Lglm;

    iget-object v1, v7, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->c:Landroid/content/Context;

    const-string/jumbo v3, "/"

    iget-object v4, v7, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->d:Ljava/lang/String;

    iget-object v5, v7, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->e:Ljava/lang/String;

    .line 1929
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->a:Lcma;

    invoke-direct/range {v0 .. v7}, Lglm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 2069
    iget-object v1, v0, Lglm;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 2070
    iget-object v1, v0, Lglm;->e:Lcma;

    if-eqz v1, :cond_0

    .line 2071
    iget-object v0, v0, Lglm;->e:Lcma;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->cspace_save_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    :cond_0
    :goto_0
    return-void

    .line 2075
    :cond_1
    iget-object v1, v0, Lglm;->a:Landroid/content/Context;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2076
    iget-object v1, v0, Lglm;->e:Lcma;

    if-eqz v1, :cond_0

    .line 2077
    iget-object v1, v0, Lglm;->e:Lcma;

    const-string/jumbo v2, ""

    iget-object v0, v0, Lglm;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->network_error:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2081
    :cond_2
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, v0, Lglm;->b:Ljava/lang/String;

    iget-object v4, v0, Lglm;->d:Ljava/lang/String;

    iget-object v5, v0, Lglm;->c:Ljava/lang/String;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lglm$1;

    invoke-direct {v6, v0}, Lglm$1;-><init>(Lglm;)V

    const-class v7, Lcma;

    iget-object v0, v0, Lglm;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2082
    invoke-interface {v1, v6, v7, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2081
    invoke-virtual {v2, v3, v4, v5, v0}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 907
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 916
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "checkConversationSpaceId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    invoke-static {v1, v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->a(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->a:Lcma;

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$2;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    return-void
.end method
