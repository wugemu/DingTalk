.class final Lacr$6$1;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr$6;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacr$6;


# direct methods
.method constructor <init>(Lacr$6;)V
    .locals 0
    .param p1, "this$1"    # Lacr$6;

    .prologue
    .line 944
    iput-object p1, p0, Lacr$6$1;->a:Lacr$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 944
    .line 1948
    iget-object v0, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v0, v0, Lacr$6;->c:Lacr;

    iget-object v1, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v1, v1, Lacr$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacr;->e(Lacr;Ljava/lang/String;)V

    .line 1949
    iget-object v0, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v0, v0, Lacr$6;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v0, v0, Lacr$6;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 944
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 960
    const-string/jumbo v0, "tryLoginNewOrgEmail.agentTicketLogin"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v0, v0, Lacr$6;->c:Lacr;

    iget-object v1, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v1, v1, Lacr$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacr;->e(Lacr;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v0, v0, Lacr$6;->b:Lcma;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lacr$6$1;->a:Lacr$6;

    iget-object v0, v0, Lacr$6;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 956
    return-void
.end method
