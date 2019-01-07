.class final Lhl$b;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lhl;


# direct methods
.method constructor <init>(Lhl;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lhl$b;->a:Lhl;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 492
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 496
    iget-object v0, p0, Lhl$b;->a:Lhl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhl;->mDataValid:Z

    .line 497
    iget-object v0, p0, Lhl$b;->a:Lhl;

    invoke-virtual {v0}, Lhl;->notifyDataSetChanged()V

    .line 498
    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 502
    iget-object v0, p0, Lhl$b;->a:Lhl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhl;->mDataValid:Z

    .line 503
    iget-object v0, p0, Lhl$b;->a:Lhl;

    invoke-virtual {v0}, Lhl;->notifyDataSetInvalidated()V

    .line 504
    return-void
.end method
