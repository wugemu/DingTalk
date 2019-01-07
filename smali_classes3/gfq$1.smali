.class final Lgfq$1;
.super Ljava/lang/Object;
.source "PermissionSettingUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfq;->a(Landroid/app/Activity;Lgfn$a;Lgfl;Z)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfn$a;

.field final synthetic b:Z

.field final synthetic c:Lgfl;


# direct methods
.method constructor <init>(Lgfn$a;ZLgfl;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lgfq$1;->a:Lgfn$a;

    iput-boolean p2, p0, Lgfq$1;->b:Z

    iput-object p3, p0, Lgfq$1;->c:Lgfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 249
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    iget-object v0, p0, Lgfq$1;->a:Lgfn$a;

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-boolean v0, p0, Lgfq$1;->b:Z

    if-eqz v0, :cond_4

    .line 256
    if-nez p2, :cond_2

    .line 257
    iget-object v0, p0, Lgfq$1;->a:Lgfn$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lgfq$1;->c:Lgfl;

    iget v2, v2, Lgfl;->a:I

    invoke-interface {v0, v1, v2}, Lgfn$a;->a(II)V

    goto :goto_0

    .line 258
    :cond_2
    if-ne p2, v2, :cond_3

    .line 259
    iget-object v0, p0, Lgfq$1;->a:Lgfn$a;

    iget-object v1, p0, Lgfq$1;->c:Lgfl;

    iget v1, v1, Lgfl;->b:I

    invoke-interface {v0, v2, v1}, Lgfn$a;->a(II)V

    goto :goto_0

    .line 260
    :cond_3
    if-ne p2, v3, :cond_0

    .line 261
    iget-object v0, p0, Lgfq$1;->a:Lgfn$a;

    iget-object v1, p0, Lgfq$1;->c:Lgfl;

    iget v1, v1, Lgfl;->c:I

    invoke-interface {v0, v3, v1}, Lgfn$a;->a(II)V

    goto :goto_0

    .line 264
    :cond_4
    if-nez p2, :cond_5

    .line 265
    iget-object v0, p0, Lgfq$1;->a:Lgfn$a;

    iget-object v1, p0, Lgfq$1;->c:Lgfl;

    iget v1, v1, Lgfl;->b:I

    invoke-interface {v0, v2, v1}, Lgfn$a;->a(II)V

    goto :goto_0

    .line 266
    :cond_5
    if-ne p2, v2, :cond_0

    .line 267
    iget-object v0, p0, Lgfq$1;->a:Lgfn$a;

    iget-object v1, p0, Lgfq$1;->c:Lgfl;

    iget v1, v1, Lgfl;->c:I

    invoke-interface {v0, v3, v1}, Lgfn$a;->a(II)V

    goto :goto_0
.end method
