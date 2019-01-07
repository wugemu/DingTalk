.class final Lbab$3;
.super Ljava/lang/Object;
.source "BaseCreateEventActivityPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbab;


# direct methods
.method constructor <init>(Lbab;)V
    .locals 0
    .param p1, "this$0"    # Lbab;

    .prologue
    .line 363
    iput-object p1, p0, Lbab$3;->a:Lbab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 366
    iget-object v0, p0, Lbab$3;->a:Lbab;

    invoke-virtual {v0}, Lbab;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lbab$3;->a:Lbab;

    iget-object v0, v0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbab$3;->a:Lbab;

    iget v1, v1, Lbab;->c:I

    invoke-static {v0, v1}, Lbjm;->a(Landroid/app/Activity;I)V

    .line 369
    :cond_0
    iget-object v0, p0, Lbab$3;->a:Lbab;

    iget-object v0, v0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 370
    return-void
.end method
