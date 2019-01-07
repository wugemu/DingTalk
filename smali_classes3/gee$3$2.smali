.class final Lgee$3$2;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgeh;

.field final synthetic b:Lgee$3;


# direct methods
.method constructor <init>(Lgee$3;Lgeh;)V
    .locals 0
    .param p1, "this$1"    # Lgee$3;

    .prologue
    .line 466
    iput-object p1, p0, Lgee$3$2;->b:Lgee$3;

    iput-object p2, p0, Lgee$3$2;->a:Lgeh;

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
    .line 469
    iget-object v0, p0, Lgee$3$2;->b:Lgee$3;

    iget-object v0, v0, Lgee$3;->a:Lgee;

    .line 1054
    iget-object v0, v0, Lgee;->b:Lged$b;

    .line 469
    iget-object v1, p0, Lgee$3$2;->a:Lgeh;

    invoke-interface {v0, v1}, Lged$b;->a(Lgeh;)V

    .line 470
    return-void
.end method
