.class final Lgee$8;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgeg;

.field final synthetic b:Z

.field final synthetic c:Lgee;


# direct methods
.method constructor <init>(Lgee;Lgeg;Z)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 811
    iput-object p1, p0, Lgee$8;->c:Lgee;

    iput-object p2, p0, Lgee$8;->a:Lgeg;

    iput-boolean p3, p0, Lgee$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 814
    iget-object v0, p0, Lgee$8;->c:Lgee;

    .line 1054
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgee;->b(Z)Z

    .line 815
    iget-object v0, p0, Lgee$8;->c:Lgee;

    iget-object v1, p0, Lgee$8;->a:Lgeg;

    .line 2054
    invoke-virtual {v0, v1}, Lgee;->a(Lgeg;)V

    .line 816
    iget-boolean v0, p0, Lgee$8;->b:Z

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgee$8$1;

    invoke-direct {v1, p0}, Lgee$8$1;-><init>(Lgee$8;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
