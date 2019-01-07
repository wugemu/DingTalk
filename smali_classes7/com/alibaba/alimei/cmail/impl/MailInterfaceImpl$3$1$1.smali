.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1$1;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;
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
.field final synthetic a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1557
    .line 2560
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->c:Lcma;

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->c:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1557
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->c:Lcma;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    :cond_0
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "forwardMessagesByMail-sendMail"

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Lrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1567
    return-void
.end method
