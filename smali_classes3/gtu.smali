.class public final Lgtu;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "IntroducerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lgtv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lgup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "introducerObjects":Ljava/util/List;, "Ljava/util/List<Lgup;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    iput-object p1, p0, Lgtu;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lgtu;->b:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 31
    int-to-long v0, p1

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 14
    check-cast p1, Lgtv;

    .line 1042
    const/4 v0, 0x0

    .line 1043
    iget-object v3, p0, Lgtu;->b:Ljava/util/List;

    if-eqz v3, :cond_0

    if-ltz p2, :cond_0

    iget-object v3, p0, Lgtu;->b:Ljava/util/List;

    .line 1045
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1046
    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgup;

    .line 1054
    :cond_0
    iput-object v0, p1, Lgtv;->j:Lgup;

    .line 1056
    iget-object v0, p1, Lgtv;->j:Lgup;

    if-nez v0, :cond_1

    .line 1057
    iget-object v0, p1, Lgtv;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9107
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p1, Lgtv;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    iget-object v0, p1, Lgtv;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p1, Lgtv;->j:Lgup;

    .line 2021
    iget-object v3, v3, Lgup;->b:Ljava/lang/String;

    .line 1071
    iget-object v4, p1, Lgtv;->j:Lgup;

    .line 3017
    iget-object v4, v4, Lgup;->a:Ljava/lang/String;

    .line 1071
    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    iget-object v0, p1, Lgtv;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lgtv;->j:Lgup;

    .line 4021
    iget-object v3, v3, Lgup;->b:Ljava/lang/String;

    .line 3075
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4079
    iget-object v3, p1, Lgtv;->d:Landroid/widget/ImageView;

    iget-object v0, p1, Lgtv;->j:Lgup;

    .line 5025
    iget-boolean v0, v0, Lgup;->c:Z

    .line 4079
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5083
    iget-object v0, p1, Lgtv;->j:Lgup;

    .line 6029
    iget-object v0, v0, Lgup;->d:Ljava/lang/String;

    .line 5083
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5084
    iget-object v0, p1, Lgtv;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7095
    :goto_2
    iget-object v0, p1, Lgtv;->j:Lgup;

    .line 8037
    iget-object v0, v0, Lgup;->f:Ljava/lang/String;

    .line 7095
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7096
    iget-object v0, p1, Lgtv;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9105
    :goto_3
    iget-object v0, p1, Lgtv;->j:Lgup;

    .line 10041
    iget-object v0, v0, Lgup;->g:Ljava/lang/String;

    .line 9105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9106
    iget-object v0, p1, Lgtv;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4079
    goto :goto_1

    .line 5088
    :cond_3
    iget-object v0, p1, Lgtv;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5089
    iget-object v0, p1, Lgtv;->f:Landroid/widget/TextView;

    iget-object v3, p1, Lgtv;->j:Lgup;

    .line 7029
    iget-object v3, v3, Lgup;->d:Ljava/lang/String;

    .line 5089
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5091
    iget-object v0, p1, Lgtv;->g:Landroid/widget/ImageView;

    iget-object v3, p1, Lgtv;->j:Lgup;

    .line 7033
    iget v3, v3, Lgup;->e:I

    .line 5091
    invoke-static {v3}, Lgux;->a(I)Lecw;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 7100
    :cond_4
    iget-object v0, p1, Lgtv;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7101
    iget-object v0, p1, Lgtv;->h:Landroid/widget/TextView;

    iget-object v3, p1, Lgtv;->j:Lgup;

    .line 9037
    iget-object v3, v3, Lgup;->f:Ljava/lang/String;

    .line 7101
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 9110
    :cond_5
    iget-object v0, p1, Lgtv;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9111
    iget-object v0, p1, Lgtv;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lgtv;->j:Lgup;

    .line 11041
    iget-object v1, v1, Lgup;->g:Ljava/lang/String;

    .line 9111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 14
    .line 12036
    iget-object v0, p0, Lgtu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_item_introducer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 12037
    new-instance v1, Lgtv;

    iget-object v2, p0, Lgtu;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lgtv;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 14
    return-object v1
.end method
