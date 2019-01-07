.class final Lfgi$4;
.super Ljava/lang/Object;
.source "CreateOrgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgi;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfgi;


# direct methods
.method constructor <init>(Lfgi;I)V
    .locals 0
    .param p1, "this$0"    # Lfgi;

    .prologue
    .line 122
    iput-object p1, p0, Lfgi$4;->b:Lfgi;

    iput p2, p0, Lfgi$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lfgi$4;->b:Lfgi;

    .line 1151
    invoke-virtual {v0}, Lfgi;->e()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lfgi;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-virtual {v0}, Lfgi;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1153
    if-eqz v1, :cond_0

    .line 1154
    invoke-virtual {v0}, Lfgi;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 1155
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 126
    :cond_0
    iget-object v0, p0, Lfgi$4;->b:Lfgi;

    invoke-static {v0}, Lfgi;->b(Lfgi;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lfgi$4;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lfgi$4;->b:Lfgi;

    invoke-virtual {v0}, Lfgi;->notifyDataSetChanged()V

    .line 128
    iget-object v0, p0, Lfgi$4;->b:Lfgi;

    invoke-static {v0}, Lfgi;->c(Lfgi;)Lfgi$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lfgi$4;->b:Lfgi;

    invoke-static {v0}, Lfgi;->c(Lfgi;)Lfgi$a;

    move-result-object v0

    iget-object v1, p0, Lfgi$4;->b:Lfgi;

    invoke-static {v1}, Lfgi;->d(Lfgi;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lfgi$a;->a(I)V

    .line 131
    :cond_1
    return-void
.end method
