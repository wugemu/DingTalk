.class final Letx$1;
.super Ljava/lang/Object;
.source "MsgSearchViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Letx;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Letx;


# direct methods
.method constructor <init>(Letx;)V
    .locals 0
    .param p1, "this$0"    # Letx;

    .prologue
    .line 92
    iput-object p1, p0, Letx$1;->a:Letx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Z)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isCollapsed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 1049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 100
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    if-nez p2, :cond_0

    .line 102
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 2049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 102
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 3049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public final a(ZI)V
    .locals 3
    .param p1, "isCollapsed"    # Z
    .param p2, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 4049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 110
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 5049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    .line 116
    const/4 p2, 0x4

    .line 117
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 6049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 121
    :goto_1
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 8049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 121
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Letx$1;->a:Letx;

    .line 7049
    iget-object v0, v0, Letx;->l:Landroid/view/View;

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method
