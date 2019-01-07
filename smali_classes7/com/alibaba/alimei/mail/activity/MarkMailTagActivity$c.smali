.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 703
    sget v0, Laxo$g;->cmail_mark_mail_tag_list_item:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 708
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 699
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 1713
    if-nez p2, :cond_0

    .line 1729
    :goto_0
    return-void

    .line 1716
    :cond_0
    sget v0, Laxo$f;->delete:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v4

    .line 1717
    sget v0, Laxo$f;->icon:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1717
    check-cast v0, Landroid/widget/TextView;

    .line 1718
    sget v1, Laxo$f;->description:I

    .line 4100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1718
    check-cast v1, Landroid/widget/TextView;

    .line 1719
    sget v5, Laxo$f;->select:I

    .line 5100
    invoke-virtual {p1, v5}, Lrr;->a(I)Landroid/view/View;

    move-result-object v5

    .line 1720
    sget v6, Laxo$f;->right_arrow:I

    .line 6100
    invoke-virtual {p1, v6}, Lrr;->a(I)Landroid/view/View;

    move-result-object v6

    .line 1722
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->getColor()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1723
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1725
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->g(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1727
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1729
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c$1;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1736
    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->d(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1741
    const/4 v0, 0x1

    .line 1743
    :goto_1
    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method
