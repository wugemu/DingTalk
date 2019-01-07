.class final Lfge$1;
.super Ljava/lang/Object;
.source "BaseListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfge;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lfge;


# direct methods
.method constructor <init>(Lfge;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Lfge;

    .prologue
    .line 135
    .local p0, "this":Lfge$1;, "Lfge$1;"
    iput-object p1, p0, Lfge$1;->c:Lfge;

    iput-object p2, p0, Lfge$1;->a:Ljava/lang/Object;

    iput p3, p0, Lfge$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 138
    .local p0, "this":Lfge$1;, "Lfge$1;"
    iget-object v0, p0, Lfge$1;->c:Lfge;

    iget-object v1, p0, Lfge$1;->a:Ljava/lang/Object;

    iget v2, p0, Lfge$1;->b:I

    invoke-virtual {v0, v1, v2}, Lfge;->a(Ljava/lang/Object;I)V

    .line 139
    return-void
.end method
