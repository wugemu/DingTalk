.class final Ladd$1;
.super Ljava/lang/Object;
.source "MailSignTemplateAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladd;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laca;

.field final synthetic b:Ladd;


# direct methods
.method constructor <init>(Ladd;Laca;)V
    .locals 0
    .param p1, "this$0"    # Ladd;

    .prologue
    .line 122
    iput-object p1, p0, Ladd$1;->b:Ladd;

    iput-object p2, p0, Ladd$1;->a:Laca;

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
    .line 125
    iget-object v0, p0, Ladd$1;->b:Ladd;

    invoke-static {v0}, Ladd;->b(Ladd;)Ladd$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ladd$1;->b:Ladd;

    invoke-static {v0}, Ladd;->b(Ladd;)Ladd$a;

    move-result-object v0

    iget-object v1, p0, Ladd$1;->a:Laca;

    invoke-interface {v0, v1}, Ladd$a;->a(Laca;)V

    .line 128
    :cond_0
    return-void
.end method
