.class final Lfls$23;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfls;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 361
    iput-boolean p1, p0, Lfls$23;->a:Z

    iput-object p2, p0, Lfls$23;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 364
    iget-boolean v0, p0, Lfls$23;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfls$23;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfls$23;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lfls$23;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 367
    :cond_0
    return-void
.end method
