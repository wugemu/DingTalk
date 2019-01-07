.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Landroid/content/Context;Lcma;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 436
    .line 1439
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;->b:Lcma;

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;ILcma;)V

    .line 436
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 449
    const-string/jumbo v0, "checkFirstUseDingMail"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;->b:Lcma;

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;ILcma;)V

    .line 452
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 445
    return-void
.end method
