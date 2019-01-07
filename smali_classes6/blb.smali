.class public final Lblb;
.super Ljava/lang/Object;
.source "SingleSelectViewHolder.java"


# instance fields
.field public a:Landroid/content/Context;

.field b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public g:Landroid/view/View;

.field public h:Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lblb;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lblb;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .line 36
    iget-object v0, p0, Lblb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_item_single_select_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lblb;->c:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lblb;->c:Landroid/view/View;

    sget v1, Laxp$f;->view_top_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lblb;->d:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lblb;->c:Landroid/view/View;

    sget v1, Laxp$f;->tv_base_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lblb;->e:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lblb;->c:Landroid/view/View;

    sget v1, Laxp$f;->iv_base_mode_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lblb;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 40
    iget-object v0, p0, Lblb;->c:Landroid/view/View;

    sget v1, Laxp$f;->ll_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lblb;->g:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lblb;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
