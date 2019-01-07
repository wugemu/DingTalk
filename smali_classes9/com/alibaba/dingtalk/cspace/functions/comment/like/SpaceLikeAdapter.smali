.class public Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "SpaceLikeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgqw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;

    invoke-direct {v1, p0, v5}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;B)V

    .line 52
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lfzs$g;->cspace_staticstic_list_item:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    sget v2, Lfzs$f;->tv_avatar:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 54
    sget v2, Lfzs$f;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->b:Landroid/widget/TextView;

    .line 55
    sget v2, Lfzs$f;->view_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->c:Landroid/view/View;

    .line 56
    sget v2, Lfzs$f;->view_divider_full:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->d:Landroid/view/View;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqw;

    .line 66
    .local v0, "model":Lgqw;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 67
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->d:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->c:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_1
    if-nez v0, :cond_2

    move-object p2, v3

    .line 81
    .end local p2    # "convertView":Landroid/view/View;
    :goto_2
    return-object p2

    .line 61
    .end local v0    # "model":Lgqw;
    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;

    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;
    goto :goto_0

    .line 70
    .restart local v0    # "model":Lgqw;
    :cond_1
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->c:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v0, Lgqw;->e:Ljava/lang/String;

    iget-object v4, v0, Lgqw;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lgqw;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
