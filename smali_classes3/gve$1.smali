.class final Lgve$1;
.super Ljava/lang/Object;
.source "MultiProgressBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgve;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lgve;


# direct methods
.method constructor <init>(Lgve;I)V
    .locals 0
    .param p1, "this$0"    # Lgve;

    .prologue
    .line 82
    iput-object p1, p0, Lgve$1;->b:Lgve;

    iput p2, p0, Lgve$1;->a:I

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
    .line 85
    iget-object v0, p0, Lgve$1;->b:Lgve;

    invoke-static {v0}, Lgve;->a(Lgve;)Lgve$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lgve$1;->b:Lgve;

    invoke-static {v0}, Lgve;->a(Lgve;)Lgve$a;

    move-result-object v0

    iget v1, p0, Lgve$1;->a:I

    invoke-interface {v0, v1}, Lgve$a;->a(I)V

    .line 88
    :cond_0
    return-void
.end method
