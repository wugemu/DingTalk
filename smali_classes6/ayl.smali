.class public final Layl;
.super Landroid/widget/BaseAdapter;
.source "RecentDingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layl$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbfx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Layl$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Layl$a;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "onUserSelectedListener"    # Layl$a;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layl;->a:Ljava/util/List;

    .line 27
    iput-object p1, p0, Layl;->b:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Layl;->c:Layl$a;

    .line 29
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Layl;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Layl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Layl;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Layl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 52
    iget-object v0, p0, Layl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    if-nez p2, :cond_3

    .line 64
    iget-object v2, p0, Layl;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Laxp$g;->ding_activity_recent_ding_item:I

    invoke-virtual {v2, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v0, Lbiq;

    iget-object v2, p0, Layl;->b:Landroid/app/Activity;

    iget-object v5, p0, Layl;->c:Layl$a;

    invoke-direct {v0, v2, p2, v5}, Lbiq;-><init>(Landroid/app/Activity;Landroid/view/View;Layl$a;)V

    .line 66
    .local v0, "holder":Lbiq;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v2, p0, Layl;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    move v1, v3

    .line 71
    .local v1, "isLastItem":Z
    :goto_1
    invoke-virtual {p0, p1}, Layl;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfx;

    .line 1111
    if-eqz v2, :cond_5

    iget-object v5, v0, Lbiq;->f:Lbfx;

    if-eqz v5, :cond_5

    iget-wide v6, v2, Lbfx;->a:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5

    iget-wide v6, v2, Lbfx;->a:J

    iget-object v5, v0, Lbiq;->f:Lbfx;

    iget-wide v8, v5, Lbfx;->a:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    move v5, v3

    .line 1059
    :goto_2
    if-nez v5, :cond_1

    .line 1118
    iget-object v5, v0, Lbiq;->g:Lbhu;

    if-eqz v5, :cond_0

    .line 1119
    iget-object v5, v0, Lbiq;->g:Lbhu;

    .line 2099
    iput-boolean v3, v5, Lbhu;->a:Z

    .line 1120
    iput-object v10, v0, Lbiq;->g:Lbhu;

    .line 1122
    :cond_0
    iput-object v10, v0, Lbiq;->f:Lbfx;

    .line 1045
    :cond_1
    iput-object v2, v0, Lbiq;->f:Lbfx;

    .line 1046
    if-eqz v2, :cond_8

    .line 3065
    iget-object v5, v0, Lbiq;->c:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3066
    iget-object v5, v0, Lbiq;->f:Lbfx;

    iget-object v5, v5, Lbfx;->d:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 3067
    iget-object v5, v0, Lbiq;->f:Lbfx;

    iget-object v5, v5, Lbfx;->d:Ljava/util/List;

    invoke-virtual {v0, v5}, Lbiq;->a(Ljava/util/Collection;)V

    .line 3089
    :goto_3
    iget-object v5, v0, Lbiq;->d:Landroid/widget/TextView;

    iget-object v6, v0, Lbiq;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$i;->ding_receiver_count:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, v2, Lbfx;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3093
    iget-object v3, v0, Lbiq;->e:Landroid/view/View;

    if-eqz v1, :cond_2

    const/16 v4, 0x8

    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3097
    iget-object v3, v0, Lbiq;->b:Landroid/view/View;

    new-instance v4, Lbiq$2;

    invoke-direct {v4, v0, v2}, Lbiq$2;-><init>(Lbiq;Lbfx;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :goto_4
    return-object p2

    .line 68
    .end local v0    # "holder":Lbiq;
    .end local v1    # "isLastItem":Z
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiq;

    .restart local v0    # "holder":Lbiq;
    goto/16 :goto_0

    :cond_4
    move v1, v4

    .line 70
    goto/16 :goto_1

    .restart local v1    # "isLastItem":Z
    :cond_5
    move v5, v4

    .line 1111
    goto :goto_2

    .line 3069
    :cond_6
    iget-object v5, v0, Lbiq;->g:Lbhu;

    if-nez v5, :cond_7

    .line 3070
    new-instance v5, Lbhu;

    iget-object v6, v0, Lbiq;->f:Lbfx;

    iget-object v6, v6, Lbfx;->b:Ljava/util/List;

    new-instance v7, Lbiq$1;

    invoke-direct {v7, v0, v2}, Lbiq$1;-><init>(Lbiq;Lbfx;)V

    invoke-direct {v5, v6, v7}, Lbhu;-><init>(Ljava/util/List;Lbhu$a;)V

    iput-object v5, v0, Lbiq;->g:Lbhu;

    .line 3084
    :cond_7
    iget-object v5, v0, Lbiq;->g:Lbhu;

    invoke-virtual {v5}, Lbhu;->a()V

    goto :goto_3

    .line 1052
    :cond_8
    iget-object v2, v0, Lbiq;->c:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v2, v0, Lbiq;->d:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v2, v0, Lbiq;->b:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method
