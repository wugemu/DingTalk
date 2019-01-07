.class final Lgee$4;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgee;->p()V
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
        "Ltl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgeg;

.field final synthetic b:Lgee;


# direct methods
.method constructor <init>(Lgee;Lgeg;)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 604
    iput-object p1, p0, Lgee$4;->b:Lgee;

    iput-object p2, p0, Lgee$4;->a:Lgeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 604
    check-cast p1, Ltl;

    .line 1607
    if-nez p1, :cond_0

    .line 1608
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgee$4;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    :goto_0
    return-void

    .line 1611
    :cond_0
    iget-object v1, p0, Lgee$4;->b:Lgee;

    iget-object v0, p0, Lgee$4;->a:Lgeg;

    .line 2698
    if-nez v0, :cond_1

    .line 2699
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgee;->b(Z)Z

    goto :goto_0

    .line 2702
    :cond_1
    invoke-static {}, Lglr;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 3031
    iget-object v2, p1, Ltl;->d:Ljava/util/List;

    .line 2702
    if-eqz v2, :cond_2

    .line 4031
    iget-object v2, p1, Ltl;->d:Ljava/util/List;

    .line 2702
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2703
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lgee;->a(Ltl;Ljava/util/Map;Lgeg;)V

    goto :goto_0

    .line 5031
    :cond_3
    iget-object v2, p1, Ltl;->d:Ljava/util/List;

    .line 2707
    new-instance v3, Lgee$6;

    invoke-direct {v3, v1, p1, v0}, Lgee$6;-><init>(Lgee;Ltl;Lgeg;)V

    .line 2722
    const-class v0, Lcma;

    iget-object v4, v1, Lgee;->c:Landroid/content/Context;

    invoke-static {v3, v0, v4}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2723
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    iget-object v1, v1, Lgee;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, v2, v0}, Lgon;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 620
    iget-object v0, p0, Lgee$4;->b:Lgee;

    .line 1054
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgee;->b(Z)Z

    .line 621
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 616
    return-void
.end method
