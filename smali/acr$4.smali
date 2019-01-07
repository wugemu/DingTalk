.class final Lacr$4;
.super Lgqq;
.source "MultiMailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lacr;


# direct methods
.method constructor <init>(Lacr;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 1407
    iput-object p1, p0, Lacr$4;->b:Lacr;

    iput-object p2, p0, Lacr$4;->a:Lcma;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 1410
    iget-object v0, p0, Lacr$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lacr$4;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1413
    :cond_0
    const-string/jumbo v0, "tryAliAccountAuthFailed, onDataReceived"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1407
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lacr$4;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1418
    iget-object v0, p0, Lacr$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lacr$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :cond_0
    const-string/jumbo v0, "tryAliAccountAuthFailed, ticketLogin"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    return-void
.end method
