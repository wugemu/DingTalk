.class final Letf$1;
.super Ljava/lang/Object;
.source "ContactSearchViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Letf;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Letf;


# direct methods
.method constructor <init>(Letf;)V
    .locals 0
    .param p1, "this$0"    # Letf;

    .prologue
    .line 123
    iput-object p1, p0, Letf$1;->a:Letf;

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
    .line 131
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    if-nez p2, :cond_0

    .line 133
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
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

    .line 140
    if-nez p1, :cond_0

    .line 141
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    if-eqz p2, :cond_1

    .line 147
    const/4 p2, 0x4

    .line 148
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 152
    :goto_1
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Letf$1;->a:Letf;

    iget-object v0, v0, Letf;->p:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method
