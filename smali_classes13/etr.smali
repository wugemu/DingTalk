.class public final Letr;
.super Lete;
.source "MailSearchViewHolder.java"


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    sget v0, Lemt$e;->txtMailTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letr;->e:Landroid/widget/TextView;

    .line 53
    sget v0, Lemt$e;->txtMailContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letr;->f:Landroid/widget/TextView;

    .line 54
    sget v0, Lemt$e;->imgMailReadStatus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letr;->g:Landroid/view/View;

    .line 55
    sget v0, Lemt$e;->txtMailSender:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letr;->i:Landroid/widget/TextView;

    .line 56
    sget v0, Lemt$e;->imgMailImportant:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letr;->h:Landroid/view/View;

    .line 57
    sget v0, Lemt$e;->imgMailAttachment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letr;->j:Landroid/view/View;

    .line 58
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letr;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "mailModel":Lcom/alibaba/android/search/model/MailModel;
    instance-of v3, p1, Lcom/alibaba/android/search/model/MailModel;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 66
    check-cast v1, Lcom/alibaba/android/search/model/MailModel;

    .line 69
    :cond_0
    if-nez v1, :cond_1

    .line 108
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MailModel;->isHaveRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Letr;->g:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MailModel;->isStarMail()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    iget-object v3, p0, Letr;->h:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MailModel;->isHasAttachment()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    iget-object v3, p0, Letr;->j:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_3
    iget-object v3, p0, Letr;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MailModel;->getSenderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Letr;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MailModel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "mailTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    iget-object v3, p0, Letr;->e:Landroid/widget/TextView;

    sget v4, Lemt$g;->search_mail_no_subject:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :goto_4
    iget-object v3, p0, Letr;->a:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/MailModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "mailDesc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 104
    iget-object v3, p0, Letr;->f:Landroid/widget/TextView;

    sget v4, Lemt$g;->search_mail_no_content:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    .end local v0    # "mailDesc":Ljava/lang/String;
    .end local v2    # "mailTitle":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Letr;->g:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_3
    iget-object v3, p0, Letr;->h:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 88
    :cond_4
    iget-object v3, p0, Letr;->j:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 98
    .restart local v2    # "mailTitle":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Letr;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Letr;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 106
    .restart local v0    # "mailDesc":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Letr;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Letr;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
