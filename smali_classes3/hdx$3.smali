.class final Lhdx$3;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
.source "DrawerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdx;

.field private b:Z


# direct methods
.method constructor <init>(Lhdx;)V
    .locals 1
    .param p1, "this$0"    # Lhdx;

    .prologue
    .line 280
    iput-object p1, p0, Lhdx$3;->a:Lhdx;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdx$3;->b:Z

    return-void
.end method

.method static synthetic a(Lhdx$3;Z)Z
    .locals 1
    .param p0, "x0"    # Lhdx$3;
    .param p1, "x1"    # Z

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdx$3;->b:Z

    return v0
.end method


# virtual methods
.method public final close()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 368
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->h(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    .line 2034
    iget-object v0, v0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 368
    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    iget-object v0, v0, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->i(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lhdx$3$4;

    invoke-direct {v1, p0}, Lhdx$3$4;-><init>(Lhdx$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    :cond_0
    iget-boolean v0, p0, Lhdx$3;->b:Z

    return v0
.end method

.method public final config(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
    .locals 2
    .param p1, "cfg"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 315
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->d(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    iget-object v0, v0, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->e(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lhdx$3$2;

    invoke-direct {v1, p0, p1}, Lhdx$3$2;-><init>(Lhdx$3;Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public final disable()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 393
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->l(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    .line 4034
    iget-object v0, v0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 393
    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->m(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lhdx$3$6;

    invoke-direct {v1, p0}, Lhdx$3$6;-><init>(Lhdx$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    :cond_0
    return-void
.end method

.method public final enable()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->j(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    .line 3034
    iget-object v0, v0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 381
    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->k(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lhdx$3$5;

    invoke-direct {v1, p0}, Lhdx$3$5;-><init>(Lhdx$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 389
    :cond_0
    return-void
.end method

.method public final init(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
    .locals 2
    .param p1, "cfg"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    .prologue
    .line 286
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->a(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->c(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lhdx$3$1;

    invoke-direct {v1, p0, p1}, Lhdx$3$1;-><init>(Lhdx$3;Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 311
    :cond_0
    return-void
.end method

.method public final open()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 355
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->f(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    .line 1034
    iget-object v0, v0, Lhdx;->c:Landroid/support/v4/widget/DrawerLayout;

    .line 355
    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    iget-object v0, v0, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lhdx$3;->a:Lhdx;

    invoke-static {v0}, Lhdx;->g(Lhdx;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lhdx$3$3;

    invoke-direct {v1, p0}, Lhdx$3$3;-><init>(Lhdx$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 363
    :cond_0
    iget-boolean v0, p0, Lhdx$3;->b:Z

    return v0
.end method
