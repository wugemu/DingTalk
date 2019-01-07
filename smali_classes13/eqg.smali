.class public final Leqg;
.super Leqc;
.source "MailSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leqg$a;
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
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x19

    const/16 v11, 0x8

    const/4 v7, 0x4

    const/4 v10, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 40
    iget-object v5, p0, Leqg;->b:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lemt$f;->mail_item_search:I

    invoke-virtual {v5, v6, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Leqg$a;

    invoke-direct {v0, v10}, Leqg$a;-><init>(B)V

    .line 42
    .local v0, "holder":Leqg$a;
    sget v5, Lemt$e;->imgMailReadStatus:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Leqg$a;->a:Landroid/view/View;

    .line 43
    sget v5, Lemt$e;->txtMailSender:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Leqg$a;->e:Landroid/widget/TextView;

    .line 44
    sget v5, Lemt$e;->imgMailImportant:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Leqg$a;->b:Landroid/view/View;

    .line 45
    sget v5, Lemt$e;->txtMailTitle:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Leqg$a;->c:Landroid/widget/TextView;

    .line 46
    sget v5, Lemt$e;->imgMailAttachment:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Leqg$a;->f:Landroid/view/View;

    .line 47
    sget v5, Lemt$e;->txtMailContent:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Leqg$a;->d:Landroid/widget/TextView;

    .line 48
    sget v5, Lemt$e;->divider_line:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Leqg$a;->g:Landroid/view/View;

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Leqg;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leql;

    .line 55
    .local v4, "model":Leql;
    invoke-virtual {v4, p1}, Leql;->b(I)V

    .line 56
    iget-object v1, v0, Leqg$a;->a:Landroid/view/View;

    .line 1094
    .local v1, "mReadView":Landroid/view/View;
    iget-boolean v5, v4, Leql;->g:Z

    .line 57
    if-eqz v5, :cond_1

    .line 58
    iget-object v5, v0, Leqg$a;->a:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2074
    :goto_1
    iget-boolean v5, v4, Leql;->d:Z

    .line 63
    if-eqz v5, :cond_2

    .line 64
    iget-object v5, v0, Leqg$a;->b:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2098
    :goto_2
    iget-boolean v5, v4, Leql;->h:Z

    .line 69
    if-eqz v5, :cond_3

    .line 70
    iget-object v5, v0, Leqg$a;->f:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_3
    iget-object v5, v0, Leqg$a;->e:Landroid/widget/TextView;

    iget-object v6, p0, Leqg;->b:Landroid/app/Activity;

    .line 3078
    iget-object v7, v4, Leql;->e:Ljava/lang/String;

    .line 75
    iget-object v8, p0, Leqg;->c:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v4}, Leql;->a()Ljava/lang/CharSequence;

    move-result-object v3

    .line 78
    .local v3, "mailTitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    iget-object v5, v0, Leqg$a;->c:Landroid/widget/TextView;

    sget v6, Lemt$g;->search_mail_no_subject:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 85
    :goto_4
    invoke-virtual {v4}, Leql;->b()Ljava/lang/CharSequence;

    move-result-object v2

    .line 86
    .local v2, "mailDesc":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 87
    iget-object v5, v0, Leqg$a;->d:Landroid/widget/TextView;

    sget v6, Lemt$g;->search_mail_no_content:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :goto_5
    new-instance v5, Leqg$1;

    invoke-direct {v5, p0, v4, v1}, Leqg$1;-><init>(Leqg;Leql;Landroid/view/View;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Leqg;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_6

    .line 119
    iget-object v5, v0, Leqg$a;->g:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_6
    return-object p2

    .line 51
    .end local v0    # "holder":Leqg$a;
    .end local v1    # "mReadView":Landroid/view/View;
    .end local v2    # "mailDesc":Ljava/lang/CharSequence;
    .end local v3    # "mailTitle":Ljava/lang/CharSequence;
    .end local v4    # "model":Leql;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqg$a;

    .restart local v0    # "holder":Leqg$a;
    goto :goto_0

    .line 60
    .restart local v1    # "mReadView":Landroid/view/View;
    .restart local v4    # "model":Leql;
    :cond_1
    iget-object v5, v0, Leqg$a;->a:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v5, v0, Leqg$a;->b:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_3
    iget-object v5, v0, Leqg$a;->f:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 81
    .restart local v3    # "mailTitle":Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, v0, Leqg$a;->c:Landroid/widget/TextView;

    iget-object v6, p0, Leqg;->b:Landroid/app/Activity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Leqg;->c:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 89
    .restart local v2    # "mailDesc":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, v0, Leqg$a;->d:Landroid/widget/TextView;

    iget-object v6, p0, Leqg;->b:Landroid/app/Activity;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Leqg;->c:Ljava/lang/String;

    const/16 v9, 0x32

    invoke-static {v6, v7, v8, v9}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 121
    :cond_6
    iget-object v5, v0, Leqg$a;->g:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method
