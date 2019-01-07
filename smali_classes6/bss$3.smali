.class final Lbss$3;
.super Ljava/lang/Object;
.source "AlphaBaseBindPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbss;


# direct methods
.method constructor <init>(Lbss;)V
    .locals 0
    .param p1, "this$0"    # Lbss;

    .prologue
    .line 149
    iput-object p1, p0, Lbss$3;->a:Lbss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lbss$3;->a:Lbss;

    iget-object v0, v0, Lbss;->b:Lbsw$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbsw$b;->k(Z)V

    .line 153
    const-string/jumbo v0, "AlphaBaseBindPresenter"

    const-string/jumbo v1, "alpha_bind_scope_dialog_hidden_dontsend"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    return-void
.end method
