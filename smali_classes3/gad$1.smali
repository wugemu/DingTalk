.class final Lgad$1;
.super Ljava/lang/Object;
.source "CSpaceShareMemberAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgad;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lgad;


# direct methods
.method constructor <init>(Lgad;I)V
    .locals 0
    .param p1, "this$0"    # Lgad;

    .prologue
    .line 77
    iput-object p1, p0, Lgad$1;->b:Lgad;

    iput p2, p0, Lgad$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lgad$1;->b:Lgad;

    invoke-static {v0}, Lgad;->a(Lgad;)Lgad$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lgad$1;->b:Lgad;

    invoke-static {v0}, Lgad;->a(Lgad;)Lgad$a;

    move-result-object v0

    iget v1, p0, Lgad$1;->a:I

    invoke-interface {v0, v1}, Lgad$a;->b(I)V

    .line 83
    :cond_0
    return-void
.end method
