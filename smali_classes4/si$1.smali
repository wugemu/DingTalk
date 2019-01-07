.class final Lsi$1;
.super Ljava/lang/Object;
.source "SingleChoiceAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsi;


# direct methods
.method constructor <init>(Lsi;)V
    .locals 0
    .param p1, "this$0"    # Lsi;

    .prologue
    .line 121
    .local p0, "this":Lsi$1;, "Lsi$1;"
    iput-object p1, p0, Lsi$1;->a:Lsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 124
    .local p0, "this":Lsi$1;, "Lsi$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lsi$1;->a:Lsi;

    invoke-virtual {v1}, Lsi;->getCount()I

    move-result v0

    .line 125
    .local v0, "count":I
    if-ltz p3, :cond_0

    if-lt p3, v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lsi$1;->a:Lsi;

    invoke-virtual {v1, p3}, Lsi;->b(I)V

    goto :goto_0
.end method
