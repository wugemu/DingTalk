.class final Letg$1;
.super Ljava/lang/Object;
.source "DeptSearchViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Letg;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Letg;


# direct methods
.method constructor <init>(Letg;)V
    .locals 0
    .param p1, "this$0"    # Letg;

    .prologue
    .line 52
    iput-object p1, p0, Letg$1;->a:Letg;

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
    .line 60
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 1032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 60
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 2032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 62
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 3032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 65
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

    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 4032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 70
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 5032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    if-eqz p2, :cond_1

    .line 76
    const/4 p2, 0x4

    .line 77
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 6032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    :goto_1
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 8032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 81
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Letg$1;->a:Letg;

    .line 7032
    iget-object v0, v0, Letg;->e:Landroid/view/View;

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method
