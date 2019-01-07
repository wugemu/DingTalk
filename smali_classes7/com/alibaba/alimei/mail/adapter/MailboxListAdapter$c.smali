.class final Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$c;
.super Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;
.source "MailboxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V
    .locals 0
    .param p1, "listAdapter"    # Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V

    .line 707
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 711
    sget v0, Laxo$g;->cmail_mailbox_folder:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x4

    const-wide/16 v6, 0x0

    .line 703
    move-object v2, p2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1721
    sget v0, Laxo$f;->icon:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1721
    check-cast v0, Landroid/widget/TextView;

    .line 1722
    sget v1, Laxo$f;->name:I

    .line 3100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1722
    check-cast v1, Landroid/widget/TextView;

    .line 4096
    iget-object v3, p1, Lrr;->a:Landroid/content/Context;

    .line 1730
    iget v4, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isNoSelectFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1733
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxo$c;->cspace_bottom_disable:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1734
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_icon_disabled_bg_color:I

    invoke-static {v1, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1737
    :cond_0
    iget v1, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v1}, Lrx;->a(I)I

    move-result v1

    .line 1738
    if-gez v1, :cond_1

    .line 1739
    sget v1, Laxo$i;->icon_file:I

    .line 1741
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1742
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5096
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 1743
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_bg_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1749
    :goto_0
    if-eqz p3, :cond_3

    array-length v0, p3

    if-lez v0, :cond_3

    .line 1750
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/util/Map;

    .line 1751
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1752
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1755
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v4, v0

    .line 1769
    :goto_1
    array-length v0, p3

    .line 1770
    if-le v0, v8, :cond_3

    .line 1772
    const/4 v0, 0x3

    aget-object v3, p3, v0

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1773
    aget-object v0, p3, v8

    check-cast v0, Ljava/util/Map;

    .line 1775
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1776
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 7044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    :cond_2
    move-object v0, p0

    move-object v1, p1

    .line 1778
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$c;->a(Lrr;Lcom/alibaba/alimei/sdk/model/FolderModel;Lcom/alibaba/alimei/sdk/model/FolderModel;JJ)V

    .line 703
    :cond_3
    return-void

    .line 6096
    :cond_4
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 1745
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->cmail_color_7d8082:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    const-string/jumbo v1, "MailboxListAdapter"

    const-string/jumbo v3, "mailbox list adapter parser number failed"

    invoke-static {v1, v3, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move-wide v4, v6

    goto :goto_1
.end method
