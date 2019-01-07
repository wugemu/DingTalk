.class final Lfaq$13;
.super Lcmi;
.source "LWPOAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfaq;


# direct methods
.method constructor <init>(Lfaq;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfaq;

    .prologue
    .line 542
    iput-object p1, p0, Lfaq$13;->c:Lfaq;

    iput-object p2, p0, Lfaq$13;->a:Lcma;

    iput-object p3, p0, Lfaq$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 565
    iget-object v0, p0, Lfaq$13;->a:Lcma;

    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lfaq$13;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 542
    check-cast p1, Lcee;

    .line 1545
    iget-object v0, p0, Lfaq$13;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1549
    if-nez p1, :cond_1

    .line 1550
    iget-object v0, p0, Lfaq$13;->a:Lcma;

    const-string/jumbo v1, "12303"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget-object v0, p1, Lcee;->i:Lcgj;

    .line 1555
    if-nez v0, :cond_2

    .line 1556
    iget-object v0, p0, Lfaq$13;->a:Lcma;

    const-string/jumbo v1, "12303"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1559
    :cond_2
    new-instance v0, Lfaq$a;

    iget-object v1, p0, Lfaq$13;->c:Lfaq;

    invoke-direct {v0, v1}, Lfaq$a;-><init>(Lfaq;)V

    .line 1560
    iget-object v1, p0, Lfaq$13;->b:Ljava/lang/String;

    iget-object v2, p0, Lfaq$13;->a:Lcma;

    invoke-virtual {v0, p1, v1, v2}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
