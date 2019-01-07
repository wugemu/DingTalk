.class final Lgee$5$2;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgee$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgee$5;


# direct methods
.method constructor <init>(Lgee$5;)V
    .locals 0
    .param p1, "this$1"    # Lgee$5;

    .prologue
    .line 686
    iput-object p1, p0, Lgee$5$2;->a:Lgee$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lgee$5$2;->a:Lgee$5;

    iget-object v0, v0, Lgee$5;->a:Lgee;

    .line 1054
    invoke-virtual {v0}, Lgee;->p()V

    .line 690
    return-void
.end method
