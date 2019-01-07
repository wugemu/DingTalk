.class final Lfls$22;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfls;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Z

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLandroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lfls$22;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lfls$22;->b:Z

    iput-object p3, p0, Lfls$22;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Lfls$22;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 335
    const-string/jumbo v0, "pref_key_newFlow"

    invoke-static {v0}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lfls$22;->a:Landroid/app/Activity;

    invoke-static {v0}, Lfls;->b(Landroid/app/Activity;)V

    .line 342
    :goto_0
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->e()V

    .line 343
    iget-boolean v0, p0, Lfls$22;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfls$22;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfls$22;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lfls$22;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 346
    :cond_0
    return-void

    .line 337
    :cond_1
    iget-boolean v0, p0, Lfls$22;->b:Z

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lfls$22;->a:Landroid/app/Activity;

    invoke-static {v0}, Lfls;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lfls$22;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfls$22;->c:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lfls;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method
