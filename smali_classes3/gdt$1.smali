.class public final Lgdt$1;
.super Ljava/lang/Object;
.source "DentryListActionBarMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdt;


# direct methods
.method public constructor <init>(Lgdt;)V
    .locals 0
    .param p1, "this$0"    # Lgdt;

    .prologue
    .line 178
    iput-object p1, p0, Lgdt$1;->a:Lgdt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 181
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lgdt$1;->a:Lgdt;

    .line 1028
    iget-object v1, v1, Lgdt;->i:Landroid/widget/ListPopupWindow;

    .line 181
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 182
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzx$a;

    .line 183
    .local v0, "menuItem":Lfzx$a;
    if-eqz v0, :cond_0

    .line 1073
    iget-boolean v1, v0, Lfzx$a;->f:Z

    .line 183
    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lgdt$1;->a:Lgdt;

    .line 2193
    if-eqz v0, :cond_0

    .line 3053
    iget v2, v0, Lfzx$a;->a:I

    .line 2196
    packed-switch v2, :pswitch_data_0

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2198
    :pswitch_0
    iget-object v1, v1, Lgdt;->a:Lgdu$a;

    invoke-interface {v1}, Lgdu$a;->f()V

    goto :goto_0

    .line 2201
    :pswitch_1
    iget-object v1, v1, Lgdt;->a:Lgdu$a;

    invoke-interface {v1}, Lgdu$a;->k()V

    goto :goto_0

    .line 2196
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
