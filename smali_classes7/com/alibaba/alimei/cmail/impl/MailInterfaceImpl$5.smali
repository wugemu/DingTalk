.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcma;

.field final synthetic f:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->f:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->d:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1709
    .line 2712
    const-string/jumbo v0, "nav2ChooseParticipant"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "nav2ChooseParticipant, serverId:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->b:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->a:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5$1;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;)V

    invoke-interface {v0, v1, v4, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    .line 1709
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1738
    const-string/jumbo v0, "[API]nav2ChooseParticipant"

    const-string/jumbo v1, "2016"

    const-string/jumbo v2, "not login"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->e:Lcma;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;->e:Lcma;

    const-string/jumbo v1, "2016"

    const-string/jumbo v2, "need login first"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1734
    return-void
.end method
