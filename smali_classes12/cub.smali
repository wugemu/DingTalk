.class public final Lcub;
.super Lcqr;
.source "CategoryManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcub$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Ljava/lang/String;

.field public f:J

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v2, p0, Lcub;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 53
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 54
    .local v1, "sbStr":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v2, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 55
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_0

    .line 56
    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 59
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .end local v1    # "sbStr":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_1
    return-object v2

    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    check-cast p1, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 1089
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-boolean v1, p0, Lcub;->g:Z

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcub;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 76
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 79
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 83
    .local v0, "model":Lcom/alibaba/wukong/im/category/CategoryObject;
    iget-object v1, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcub;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "edit"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcub;->g:Z

    .line 38
    iget-boolean v0, p0, Lcub;->g:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcub;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcub;->e:Ljava/lang/String;

    .line 41
    :cond_0
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 95
    if-nez p2, :cond_1

    .line 96
    iget-object v2, p0, Lcub;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lctk$g;->layout_category_manager_item:I

    const/4 v6, 0x0

    .line 97
    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v1, Lcub$a;

    invoke-direct {v1, p0}, Lcub$a;-><init>(Lcub;)V

    .line 100
    .local v1, "viewHolder":Lcub$a;
    sget v2, Lctk$f;->tv_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcub$a;->a:Landroid/widget/TextView;

    .line 101
    sget v2, Lctk$f;->tv_custom:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcub$a;->b:Landroid/widget/TextView;

    .line 102
    sget v2, Lctk$f;->img_arrow:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcub$a;->d:Landroid/widget/ImageView;

    .line 103
    sget v2, Lctk$f;->img_sort:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcub$a;->c:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcub;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 110
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, v1, Lcub$a;->a:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iget-wide v6, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v5, v6, v7}, Ldde;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-wide v6, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v6, v7}, Ldde;->a(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-boolean v2, p0, Lcub;->d:Z

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, v1, Lcub$a;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcub;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->ui_common_text_disabled_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    :goto_1
    iget-object v2, v1, Lcub$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_2
    iget-boolean v2, p0, Lcub;->g:Z

    if-eqz v2, :cond_5

    .line 124
    iget-object v5, v1, Lcub$a;->c:Landroid/widget/ImageView;

    iget-wide v6, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v2, v1, Lcub$a;->d:Landroid/widget/ImageView;

    .line 140
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :cond_0
    return-object p2

    .line 106
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    .end local v1    # "viewHolder":Lcub$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcub$a;

    .restart local v1    # "viewHolder":Lcub$a;
    goto :goto_0

    .line 116
    .restart local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_2
    iget-object v2, v1, Lcub$a;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcub;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->ui_common_level1_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 120
    :cond_3
    iget-object v2, v1, Lcub$a;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcub;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->ui_common_level1_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v2, v1, Lcub$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v2, v4

    .line 124
    goto :goto_3

    .line 128
    :cond_5
    iget-object v2, v1, Lcub$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-boolean v2, p0, Lcub;->d:Z

    if-eqz v2, :cond_8

    .line 130
    iget-object v2, v1, Lcub$a;->d:Landroid/widget/ImageView;

    sget v3, Lctk$e;->checkbox_pressed:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-wide v2, p0, Lcub;->f:J

    iget-wide v6, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 132
    iget-object v2, v1, Lcub$a;->d:Landroid/widget/ImageView;

    :cond_6
    :goto_5
    move v3, v4

    .line 140
    goto :goto_4

    .line 134
    :cond_7
    iget-object v2, v1, Lcub$a;->d:Landroid/widget/ImageView;

    const/4 v3, 0x4

    goto :goto_4

    .line 137
    :cond_8
    iget-wide v6, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-wide/16 v8, 0x6

    cmp-long v2, v6, v8

    if-nez v2, :cond_9

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v5, "f_im_not_disturb_only_at"

    .line 1083
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 137
    if-eqz v2, :cond_9

    .line 138
    iget-object v2, v1, Lcub$a;->d:Landroid/widget/ImageView;

    goto :goto_5

    .line 140
    :cond_9
    iget-object v2, v1, Lcub$a;->d:Landroid/widget/ImageView;

    iget-wide v6, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v6, v7}, Ldde;->a(J)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_4
.end method
