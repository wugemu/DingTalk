.class final Lbwq$6;
.super Lbyi$a;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwq;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwq;


# direct methods
.method constructor <init>(Lbwq;)V
    .locals 0
    .param p1, "this$0"    # Lbwq;

    .prologue
    .line 578
    iput-object p1, p0, Lbwq$6;->a:Lbwq;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 578
    .line 1581
    iget-object v0, p0, Lbwq$6;->a:Lbwq;

    invoke-static {v0}, Lbwq;->b(Lbwq;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    invoke-virtual {v0}, Lbtq;->e()V

    .line 1586
    iget-object v0, p0, Lbwq$6;->a:Lbwq;

    invoke-static {v0}, Lbwq;->j(Lbwq;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lbwq$6;->a:Lbwq;

    invoke-static {v0}, Lbwq;->k(Lbwq;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1589
    iget-object v0, p0, Lbwq$6;->a:Lbwq;

    invoke-static {v0}, Lbwq;->l(Lbwq;)V

    .line 1593
    :goto_0
    iget-object v0, p0, Lbwq$6;->a:Lbwq;

    invoke-static {v0}, Lbwq;->n(Lbwq;)V

    .line 578
    :cond_0
    return-void

    .line 1591
    :cond_1
    iget-object v0, p0, Lbwq$6;->a:Lbwq;

    invoke-static {v0}, Lbwq;->m(Lbwq;)V

    goto :goto_0
.end method
