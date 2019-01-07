.class final Leab$5;
.super Ljava/lang/Object;
.source "PushTaskListHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ListPopupWindow;

.field final synthetic b:Leab;


# direct methods
.method constructor <init>(Leab;Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Leab;

    .prologue
    .line 465
    iput-object p1, p0, Leab$5;->b:Leab;

    iput-object p2, p0, Leab$5;->a:Landroid/support/v7/widget/ListPopupWindow;

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
    .line 468
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Leab$5;->b:Leab;

    iget-object v1, p0, Leab$5;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0, v1}, Leab;->a(Leab;Landroid/support/v7/widget/ListPopupWindow;)V

    .line 469
    return-void
.end method
