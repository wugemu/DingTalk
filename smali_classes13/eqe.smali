.class public final Leqe;
.super Leqc;
.source "FunctionSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leqe$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Leqc;-><init>(Landroid/app/Activity;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 40
    new-instance v2, Leqe$a;

    invoke-direct {v2, p0, v5}, Leqe$a;-><init>(Leqe;B)V

    .line 41
    .local v2, "holder":Leqe$a;
    iget-object v3, p0, Leqe;->b:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lemt$f;->function_item_search:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    sget v3, Lemt$e;->tv_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Leqe$a;->b:Landroid/widget/TextView;

    .line 43
    sget v3, Lemt$e;->divider_line:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Leqe$a;->c:Landroid/view/View;

    .line 44
    sget v3, Lemt$e;->tv_avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v2, Leqe$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 45
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Leqe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqj;

    .line 51
    .local v0, "fsm":Leqj;
    invoke-virtual {v0, p1}, Leqj;->b(I)V

    .line 52
    iget-object v3, v2, Leqe$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Leqj;->a()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget v1, v0, Leqj;->e:I

    .line 54
    .local v1, "functionId":I
    iget-object v3, v2, Leqe$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2017
    iget v4, v0, Leqj;->d:I

    .line 54
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 56
    new-instance v3, Leqe$1;

    invoke-direct {v3, p0, v0, v1}, Leqe$1;-><init>(Leqe;Leqj;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Leqe;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 79
    iget-object v3, v2, Leqe$a;->c:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_1
    return-object p2

    .line 47
    .end local v0    # "fsm":Leqj;
    .end local v1    # "functionId":I
    .end local v2    # "holder":Leqe$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leqe$a;

    .restart local v2    # "holder":Leqe$a;
    goto :goto_0

    .line 81
    .restart local v0    # "fsm":Leqj;
    .restart local v1    # "functionId":I
    :cond_1
    iget-object v3, v2, Leqe$a;->c:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
