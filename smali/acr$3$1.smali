.class final Lacr$3$1;
.super Lgqq;
.source "MultiMailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacr$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacr$3;


# direct methods
.method constructor <init>(Lacr$3;)V
    .locals 0
    .param p1, "this$1"    # Lacr$3;

    .prologue
    .line 1362
    iput-object p1, p0, Lacr$3$1;->a:Lacr$3;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 1365
    iget-object v0, p0, Lacr$3$1;->a:Lacr$3;

    iget-object v0, v0, Lacr$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lacg;->a(Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lacr$3$1;->a:Lacr$3;

    iget-object v0, v0, Lacr$3;->c:Lacr;

    invoke-static {v0}, Lacr;->e(Lacr;)V

    .line 1367
    iget-object v0, p0, Lacr$3$1;->a:Lacr$3;

    iget-object v0, v0, Lacr$3;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lacr$3$1;->a:Lacr$3;

    iget-object v0, v0, Lacr$3;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1370
    :cond_0
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1362
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lacr$3$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1374
    const-string/jumbo v0, "resetDingtalkOrgMail, ticketLogin"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lacr$3$1;->a:Lacr$3;

    iget-object v0, v0, Lacr$3;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lacr$3$1;->a:Lacr$3;

    iget-object v0, v0, Lacr$3;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_0
    return-void
.end method
