.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;
.super Ljava/lang/Object;
.source "SpaceCooperationCreateDialog.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;
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
        "Lgin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 404
    check-cast p1, Lgin;

    .line 1407
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->m(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    .line 1408
    if-eqz p1, :cond_0

    .line 1411
    iget-object v0, p1, Lgin;->a:Ljava/lang/Boolean;

    .line 2022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1411
    if-eqz v0, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->n(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->n(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcma;

    move-result-object v0

    iget-object v1, p1, Lgin;->d:Lgit;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->n(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcma;

    move-result-object v0

    iget-object v1, p1, Lgin;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgin;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->m(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->n(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->n(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcma;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    const-string/jumbo v0, "space"

    const-string/jumbo v1, "cooperation create folder failed"

    invoke-static {v0, v1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 423
    return-void
.end method
