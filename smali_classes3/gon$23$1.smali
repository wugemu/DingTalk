.class final Lgon$23$1;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgon$23;


# direct methods
.method constructor <init>(Lgon$23;)V
    .locals 0
    .param p1, "this$1"    # Lgon$23;

    .prologue
    .line 304
    iput-object p1, p0, Lgon$23$1;->a:Lgon$23;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 314
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "getTicket (alimeiTicketService.getUserTicket)"

    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lgon$23$1;->a:Lgon$23;

    iget-object v0, v0, Lgon$23;->a:Lcma;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lgon$23$1;->a:Lgon$23;

    iget-object v0, v0, Lgon$23;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 304
    check-cast p1, Lcef;

    .line 1307
    iget-object v0, p0, Lgon$23$1;->a:Lgon$23;

    iget-object v0, v0, Lgon$23;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lgon$23$1;->a:Lgon$23;

    iget-object v0, v0, Lgon$23;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 304
    :cond_0
    return-void
.end method
