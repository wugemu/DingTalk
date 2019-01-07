.class final Lbkh$1$1;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkh$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Lbkh$1;


# direct methods
.method constructor <init>(Lbkh$1;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lbkh$1;

    .prologue
    .line 672
    iput-object p1, p0, Lbkh$1$1;->b:Lbkh$1;

    iput-object p2, p0, Lbkh$1$1;->a:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 675
    iget-object v0, p0, Lbkh$1$1;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 676
    iget-object v0, p0, Lbkh$1$1;->b:Lbkh$1;

    iget-object v0, v0, Lbkh$1;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lbkh$1$1;->b:Lbkh$1;

    iget-object v0, v0, Lbkh$1;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 679
    :cond_0
    return-void
.end method
