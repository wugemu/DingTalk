.class final Lgee$2$2;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgee$2;


# direct methods
.method constructor <init>(Lgee$2;)V
    .locals 0
    .param p1, "this$1"    # Lgee$2;

    .prologue
    .line 340
    iput-object p1, p0, Lgee$2$2;->a:Lgee$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lgee$2$2;->a:Lgee$2;

    iget-object v0, v0, Lgee$2;->a:Lgee;

    invoke-virtual {v0}, Lgee;->n()V

    .line 344
    return-void
.end method
