.class public final Lbsz$5;
.super Ljava/lang/Object;
.source "LanBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbsz;


# direct methods
.method public constructor <init>(Lbsz;I)V
    .locals 0
    .param p1, "this$0"    # Lbsz;

    .prologue
    .line 405
    iput-object p1, p0, Lbsz$5;->b:Lbsz;

    iput p2, p0, Lbsz$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 408
    iget-object v0, p0, Lbsz$5;->b:Lbsz;

    invoke-virtual {v0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lbsz$5;->b:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    iget v1, p0, Lbsz$5;->a:I

    invoke-interface {v0, v1}, Lbsw$b;->e(I)V

    .line 412
    iget-object v0, p0, Lbsz$5;->b:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    goto :goto_0
.end method
