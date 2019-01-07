.class final Ladc$1;
.super Ljava/lang/Object;
.source "MailSignListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladc;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laca;

.field final synthetic b:Ladc;


# direct methods
.method constructor <init>(Ladc;Laca;)V
    .locals 0
    .param p1, "this$0"    # Ladc;

    .prologue
    .line 200
    iput-object p1, p0, Ladc$1;->b:Ladc;

    iput-object p2, p0, Ladc$1;->a:Laca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Ladc$1;->b:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Ladc$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Ladc$1;->b:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Ladc$c;

    move-result-object v0

    iget-object v1, p0, Ladc$1;->a:Laca;

    invoke-interface {v0, v1}, Ladc$c;->a(Laca;)V

    .line 206
    :cond_0
    return-void
.end method
