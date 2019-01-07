.class final Lbih$1;
.super Ljava/lang/Object;
.source "CompleteMemberViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbih;-><init>(Landroid/app/Activity;Laxx;Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbih;


# direct methods
.method constructor <init>(Lbih;)V
    .locals 0
    .param p1, "this$0"    # Lbih;

    .prologue
    .line 70
    iput-object p1, p0, Lbih$1;->a:Lbih;

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
    .line 73
    iget-object v0, p0, Lbih$1;->a:Lbih;

    .line 1031
    iget-object v0, v0, Lbih;->j:Lbih$a;

    .line 73
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbih$1;->a:Lbih;

    .line 2031
    iget-object v0, v0, Lbih;->m:Lbff;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lbih$1;->a:Lbih;

    .line 3031
    iget-object v0, v0, Lbih;->j:Lbih$a;

    .line 74
    iget-object v1, p0, Lbih$1;->a:Lbih;

    .line 4031
    iget-object v1, v1, Lbih;->m:Lbff;

    .line 74
    invoke-interface {v0, v1}, Lbih$a;->onClick(Lbff;)V

    .line 76
    :cond_0
    return-void
.end method
