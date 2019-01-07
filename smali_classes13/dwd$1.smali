.class final Ldwd$1;
.super Ljava/lang/Object;
.source "LiveFloatWindowViewHolder.java"

# interfaces
.implements Lbyu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldwd;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldwd;


# direct methods
.method constructor <init>(Ldwd;)V
    .locals 0
    .param p1, "this$0"    # Ldwd;

    .prologue
    .line 40
    iput-object p1, p0, Ldwd$1;->a:Ldwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Ldwd$1;->a:Ldwd;

    iget-object v0, v0, Ldwd;->a:Ldvw;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Ldwd$1;->a:Ldwd;

    iget-object v0, v0, Ldwd;->a:Ldvw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldvw;->c(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Ldwd$1;->a:Ldwd;

    iget-object v0, v0, Ldwd;->a:Ldvw;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Ldwd$1;->a:Ldwd;

    iget-object v0, v0, Ldwd;->a:Ldvw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldvw;->a(Z)V

    .line 53
    :cond_0
    return-void
.end method
