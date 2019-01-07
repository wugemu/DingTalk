.class final Lfgo$h$2$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$h$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo$h$2;


# direct methods
.method constructor <init>(Lfgo$h$2;)V
    .locals 0
    .param p1, "this$1"    # Lfgo$h$2;

    .prologue
    .line 491
    iput-object p1, p0, Lfgo$h$2$1;->a:Lfgo$h$2;

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
    .line 495
    if-eqz p2, :cond_0

    .line 503
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lfgo$h$2$1;->a:Lfgo$h$2;

    iget-object v0, v0, Lfgo$h$2;->c:Lfgo$h;

    .line 1241
    iget-object v0, v0, Lfgo$h;->b:Landroid/app/Activity;

    .line 498
    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    sget v0, Lezg$l;->network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lfgo$h$2$1;->a:Lfgo$h$2;

    iget-object v0, v0, Lfgo$h$2;->c:Lfgo$h;

    iget-object v1, p0, Lfgo$h$2$1;->a:Lfgo$h$2;

    iget-object v1, v1, Lfgo$h$2;->b:Lfgm;

    iget v1, v1, Lfgm;->b:I

    .line 1304
    iget-object v0, v0, Lfgo$h;->c:Lfgo$h$a;

    invoke-interface {v0, v1}, Lfgo$h$a;->a(I)V

    goto :goto_0
.end method
