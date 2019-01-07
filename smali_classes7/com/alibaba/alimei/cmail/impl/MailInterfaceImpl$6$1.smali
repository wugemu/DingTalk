.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;
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

.field final synthetic b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    .prologue
    .line 1768
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1768
    check-cast p1, Ljava/lang/Void;

    .line 2771
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1$1;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2781
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->c:Lcma;

    if-eqz v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->c:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1768
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->c:Lcma;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$1;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1788
    return-void
.end method
