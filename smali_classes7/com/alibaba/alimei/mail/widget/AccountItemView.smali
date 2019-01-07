.class public Lcom/alibaba/alimei/mail/widget/AccountItemView;
.super Landroid/widget/FrameLayout;
.source "AccountItemView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    sget v1, Laxo$g;->cmail_mailbox_menu_account_item:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    sget v1, Laxo$f;->icon:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a:Landroid/widget/ImageView;

    .line 69
    sget v1, Laxo$f;->mail:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->d:Landroid/widget/TextView;

    .line 70
    sget v1, Laxo$f;->red_dot:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->b:Landroid/view/View;

    .line 71
    sget v1, Laxo$f;->new_mail_count:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    .line 72
    sget v1, Laxo$f;->select:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->e:Landroid/view/View;

    .line 73
    sget v1, Laxo$f;->divider:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->g:Landroid/view/View;

    .line 74
    sget v1, Laxo$f;->no_notice:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->h:Landroid/view/View;

    .line 75
    return-void
.end method

.method private setHasNewMsg(Z)V
    .locals 2
    .param p1, "hasNewMsg"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->i:Z

    .line 92
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getmAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->f:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Lrx;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->k:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setIsCurrent(Z)V
    .locals 3
    .param p1, "isCurrent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->j:Z

    .line 97
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->e:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setHasNewMsg(Z)V

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setNewMailNumModel(Laha;)V
    .locals 12
    .param p1, "newMailNumModel"    # Laha;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x8

    .line 104
    if-nez p1, :cond_1

    .line 105
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->b:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {}, Lajj;->a()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x1

    .line 112
    .local v4, "showDot":Z
    :goto_1
    invoke-virtual {p1}, Laha;->a()J

    move-result-wide v2

    .line 113
    .local v2, "newMailCount":J
    invoke-virtual {p1}, Laha;->b()J

    move-result-wide v0

    .line 114
    .local v0, "newDotCount":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_4

    .line 115
    iget-object v6, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    const-wide/16 v6, 0x63

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 117
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    const-string/jumbo v6, "99+"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_2
    iget-boolean v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->j:Z

    if-eqz v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->b:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "newDotCount":J
    .end local v2    # "newMailCount":J
    .end local v4    # "showDot":Z
    :cond_2
    move v4, v5

    .line 110
    goto :goto_1

    .line 119
    .restart local v0    # "newDotCount":J
    .restart local v2    # "newMailCount":J
    .restart local v4    # "showDot":Z
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 121
    :cond_4
    cmp-long v6, v0, v10

    if-lez v6, :cond_5

    if-eqz v4, :cond_5

    .line 122
    iget-object v6, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v6, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->b:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 125
    :cond_5
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/AccountItemView;->b:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
