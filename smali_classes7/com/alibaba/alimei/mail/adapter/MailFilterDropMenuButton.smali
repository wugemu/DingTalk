.class public Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;
.super Landroid/widget/FrameLayout;
.source "MailFilterDropMenuButton.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1037
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->mail_filter_drop_menu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1038
    sget v0, Laxo$f;->item_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->a:Landroid/widget/TextView;

    .line 1039
    sget v0, Laxo$f;->img_mail_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->c:Landroid/widget/ImageView;

    .line 1040
    sget v0, Laxo$f;->item_select_status_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->b:Landroid/view/View;

    .line 1041
    sget v0, Laxo$f;->item_unread_count_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->d:Landroid/widget/TextView;

    .line 1042
    sget v0, Laxo$f;->red_dot_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->e:Landroid/view/View;

    .line 1043
    sget v0, Laxo$f;->item_mail_selected:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->f:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    if-lez p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setMailSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 84
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    :cond_1
    move v0, v2

    .line 85
    goto :goto_1

    :cond_2
    move v2, v1

    .line 86
    goto :goto_2
.end method

.method public setText(I)V
    .locals 1
    .param p1, "stringRes"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public setUnreadCount(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    const-wide/16 v0, 0x63

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;->d:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
