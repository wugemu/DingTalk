.class public final Lro$16;
.super Lcmi;
.source "MailRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Labt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lro;


# direct methods
.method public constructor <init>(Lro;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lro;

    .prologue
    .line 631
    iput-object p1, p0, Lro$16;->b:Lro;

    iput-object p2, p0, Lro$16;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 642
    const-string/jumbo v0, "dispatchOrgMailByUid"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    iget-object v0, p0, Lro$16;->a:Lcma;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lro$16;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 631
    check-cast p1, Labt;

    .line 1634
    const-string/jumbo v0, "MailRPC"

    const-string/jumbo v1, "dispatchOrgMailByUid, onLoadSuccess"

    iget-object v2, p0, Lro$16;->a:Lcma;

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1635
    iget-object v0, p0, Lro$16;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lro$16;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 631
    :cond_0
    return-void
.end method
