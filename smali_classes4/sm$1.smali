.class final Lsm$1;
.super Ljava/lang/Object;
.source "SlideFromTopPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsm;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsm;


# direct methods
.method constructor <init>(Lsm;)V
    .locals 0
    .param p1, "this$0"    # Lsm;

    .prologue
    .line 113
    iput-object p1, p0, Lsm$1;->a:Lsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lsm$1;->a:Lsm;

    invoke-static {v1}, Lsm;->a(Lsm;)Lsm$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lsm$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafn;

    .line 1144
    .local v0, "item":Lafn;
    iget-boolean v1, v0, Lafn;->f:Z

    .line 117
    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lsm$1;->a:Lsm;

    invoke-virtual {v1}, Lsm;->i()V

    .line 120
    :cond_0
    iget-object v1, p0, Lsm$1;->a:Lsm;

    invoke-static {v1}, Lsm;->b(Lsm;)Lafo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lsm$1;->a:Lsm;

    invoke-static {v1}, Lsm;->b(Lsm;)Lafo;

    move-result-object v2

    iget-object v1, p0, Lsm$1;->a:Lsm;

    invoke-static {v1}, Lsm;->a(Lsm;)Lsm$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lsm$a;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafn;

    iget-object v3, p0, Lsm$1;->a:Lsm;

    invoke-interface {v2, v1, v3}, Lafo;->a(Lafn;Ljava/lang/Object;)V

    .line 123
    :cond_1
    return-void
.end method
