.class public final Lcwt;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QuickReplyMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcwt$a;,
        Lcwt$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcwt$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldry;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcwt$b;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcwt;->a:Ljava/util/List;

    .line 69
    new-instance v0, Lcwt$1;

    invoke-direct {v0, p0}, Lcwt$1;-><init>(Lcwt;)V

    iput-object v0, p0, Lcwt;->c:Landroid/view/View$OnClickListener;

    .line 82
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcwt;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcwt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 16
    check-cast p1, Lcwt$a;

    .line 1036
    iget-object v0, p0, Lcwt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1037
    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lcwt;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldry;

    .line 1042
    if-eqz v0, :cond_0

    .line 1045
    iget-object v1, p1, Lcwt$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    iget-object v2, v0, Ldry;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v1, p1, Lcwt$a;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 16
    .line 2028
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->im_quick_reply_message_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2029
    new-instance v1, Lcwt$a;

    invoke-direct {v1, v0}, Lcwt$a;-><init>(Landroid/view/View;)V

    .line 2030
    iget-object v0, v1, Lcwt$a;->b:Landroid/view/View;

    iget-object v2, p0, Lcwt;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-object v1
.end method
