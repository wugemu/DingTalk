.class final Lbtw$5;
.super Ljava/lang/Object;
.source "ViewerFloatWindowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtw;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtw;


# direct methods
.method constructor <init>(Lbtw;)V
    .locals 0
    .param p1, "this$0"    # Lbtw;

    .prologue
    .line 294
    iput-object p1, p0, Lbtw$5;->a:Lbtw;

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
    const/4 v1, 0x0

    .line 297
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 1109
    iget-object v0, v0, Lbws;->a:Lbwq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 297
    :goto_0
    if-eqz v0, :cond_1

    .line 299
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->e()V

    .line 303
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1109
    goto :goto_0

    .line 301
    :cond_1
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbws;->c(Z)V

    goto :goto_1
.end method
