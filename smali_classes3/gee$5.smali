.class final Lgee$5;
.super Lgoi;
.source "DentryListViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgee;


# direct methods
.method constructor <init>(Lgee;)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 629
    iput-object p1, p0, Lgee$5;->a:Lgee;

    invoke-direct {p0}, Lgoi;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 686
    new-instance v0, Lgee$5$2;

    invoke-direct {v0, p0}, Lgee$5$2;-><init>(Lgee$5;)V

    invoke-static {v0}, Lgpr;->a(Ljava/lang/Runnable;)V

    .line 692
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3
    .param p2, "exception"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 632
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-super {p0, p1, p2}, Lgoi;->a(Ljava/util/List;Z)V

    .line 633
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    :cond_0
    invoke-virtual {p0}, Lgee$5;->a()V

    .line 648
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v1, p0, Lgee$5;->a:Lgee;

    invoke-virtual {v1}, Lgee;->b()Lgeg;

    move-result-object v0

    .line 638
    .local v0, "listWrapper":Lgeg;
    if-nez v0, :cond_2

    .line 639
    invoke-virtual {p0}, Lgee$5;->a()V

    goto :goto_0

    .line 642
    :cond_2
    const-string/jumbo v1, "handleDataBaseData"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lgee$5$1;

    invoke-direct {v2, p0, p1, v0}, Lgee$5$1;-><init>(Lgee$5;Ljava/util/List;Lgeg;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
