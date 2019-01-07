.class final Lfaq$17;
.super Lcmi;
.source "LWPOAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcma;)V
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
    .line 632
    iput-object p1, p0, Lfaq$17;->c:Lfaq;

    iput-object p2, p0, Lfaq$17;->a:Lcma;

    iput-object p3, p0, Lfaq$17;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 667
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 668
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lfaq$17;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Lfaq$17;->c:Lfaq;

    const/4 v2, 0x2

    iget-object v3, p0, Lfaq$17;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lfaq;->a(Lfaq;ILjava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 632
    check-cast p1, Lcee;

    .line 1636
    if-nez p1, :cond_0

    .line 1637
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "dt tempTokenLogin suc. result null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1638
    iget-object v0, p0, Lfaq$17;->a:Lcma;

    const-string/jumbo v1, "12303"

    invoke-interface {v0, v1, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :goto_0
    return-void

    .line 1642
    :cond_0
    iget-object v0, p1, Lcee;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "faceid"

    iget-object v1, p1, Lcee;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1643
    iget-object v0, p0, Lfaq$17;->a:Lcma;

    const-string/jumbo v1, "11066"

    iget-object v2, p1, Lcee;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1647
    :cond_1
    iget-object v0, p1, Lcee;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1648
    iget-object v0, p0, Lfaq$17;->a:Lcma;

    const-string/jumbo v1, "11044"

    iget-object v2, p1, Lcee;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1652
    :cond_2
    iget-object v0, p1, Lcee;->i:Lcgj;

    .line 1653
    if-nez v0, :cond_3

    .line 1654
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "dt tempTokenLogin suc. UserProfileExtensionModel null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1655
    iget-object v0, p0, Lfaq$17;->a:Lcma;

    const-string/jumbo v1, "12303"

    invoke-interface {v0, v1, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1658
    :cond_3
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1659
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "login"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "dt tempTokenLogin suc"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1661
    new-instance v0, Lfaq$a;

    iget-object v1, p0, Lfaq$17;->c:Lfaq;

    invoke-direct {v0, v1}, Lfaq$a;-><init>(Lfaq;)V

    .line 1662
    iget-object v1, p0, Lfaq$17;->b:Ljava/lang/String;

    iget-object v2, p0, Lfaq$17;->a:Lcma;

    invoke-virtual {v0, p1, v1, v2}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
