.class final Lfaq$10;
.super Lcmi;
.source "LWPOAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfaq;


# direct methods
.method constructor <init>(Lfaq;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaq;

    .prologue
    .line 497
    iput-object p1, p0, Lfaq$10;->b:Lfaq;

    iput-object p2, p0, Lfaq$10;->a:Lcma;

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
    .line 513
    iget-object v0, p0, Lfaq$10;->a:Lcma;

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lfaq$10;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 497
    check-cast p1, Lcge;

    .line 1500
    iget-object v0, p0, Lfaq$10;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1503
    if-nez p1, :cond_1

    .line 1504
    iget-object v0, p0, Lfaq$10;->a:Lcma;

    const-string/jumbo v1, "12303"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    iget-object v0, p0, Lfaq$10;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
