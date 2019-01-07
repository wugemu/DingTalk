.class public final Leqh;
.super Leqc;
.source "SpaceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leqh$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Leqc;-><init>(Landroid/app/Activity;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v3, p0, Leqh;->b:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lemt$f;->space_item_search:I

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    new-instance v1, Leqh$a;

    invoke-direct {v1, v7}, Leqh$a;-><init>(B)V

    .line 43
    .local v1, "holder":Leqh$a;
    sget v3, Lemt$e;->tv_avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Leqh$a;->a:Landroid/view/View;

    .line 44
    sget v3, Lemt$e;->item_title_tv:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Leqh$a;->b:Landroid/widget/TextView;

    .line 45
    sget v3, Lemt$e;->item_desc_tv:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Leqh$a;->c:Landroid/widget/TextView;

    .line 46
    sget v3, Lemt$e;->divider_line:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Leqh$a;->d:Landroid/view/View;

    .line 47
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    :goto_0
    invoke-virtual {p0, p1}, Leqh;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leqm;

    .line 53
    .local v2, "model":Leqm;
    invoke-virtual {v2, p1}, Leqm;->b(I)V

    .line 54
    const-string/jumbo v3, "file"

    .line 1076
    iget-object v4, v2, Leqm;->h:Ljava/lang/String;

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, v1, Leqh$a;->a:Landroid/view/View;

    .line 2044
    iget-object v4, v2, Leqm;->d:Ljava/lang/String;

    .line 55
    invoke-static {v4}, Lcow;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    :goto_1
    iget-object v3, v1, Leqh$a;->b:Landroid/widget/TextView;

    iget-object v4, p0, Leqh;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Leqm;->a()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Leqh;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v8}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    .line 2060
    iget-object v4, v2, Leqm;->f:Ljava/lang/String;

    .line 60
    invoke-virtual {v2}, Leqm;->a()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Leqm;->b()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "desc":Ljava/lang/String;
    iget-object v3, v1, Leqh$a;->c:Landroid/widget/TextView;

    iget-object v4, p0, Leqh;->b:Landroid/app/Activity;

    iget-object v5, p0, Leqh;->c:Ljava/lang/String;

    invoke-static {v4, v0, v5, v8}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v3, Leqh$1;

    invoke-direct {v3, p0, v2}, Leqh$1;-><init>(Leqh;Leqm;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Leqh;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 101
    iget-object v3, v1, Leqh$a;->d:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_2
    return-object p2

    .line 49
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "holder":Leqh$a;
    .end local v2    # "model":Leqm;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leqh$a;

    .restart local v1    # "holder":Leqh$a;
    goto :goto_0

    .line 57
    .restart local v2    # "model":Leqm;
    :cond_1
    iget-object v3, v1, Leqh$a;->a:Landroid/view/View;

    sget v4, Lemt$d;->cspace_search_folder_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 103
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Leqh$a;->d:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
