.class final Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;
.super Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;
.source "MailboxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V
    .locals 0
    .param p1, "listAdapter"    # Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V

    .line 790
    return-void
.end method

.method private a(Lcom/alibaba/alimei/sdk/model/FolderModel;Ljava/util/Map;)Z
    .locals 6
    .param p1, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "newMailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    .line 906
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 907
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 908
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v0, :cond_2

    .line 909
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 910
    .local v1, "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 919
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v1    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :goto_0
    return v2

    .line 913
    .restart local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .restart local v1    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 919
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v1    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 794
    sget v0, Laxo$g;->cmail_mailbox_folder:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 799
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 786
    move-object v2, p2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1804
    sget v0, Laxo$f;->icon:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1804
    check-cast v0, Landroid/widget/TextView;

    .line 1805
    sget v1, Laxo$f;->name:I

    .line 3100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1805
    check-cast v1, Landroid/widget/TextView;

    .line 1806
    sget v3, Laxo$f;->switch_btn:I

    .line 4100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    .line 1806
    check-cast v8, Landroid/widget/TextView;

    .line 1807
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5096
    iget-object v3, p1, Lrr;->a:Landroid/content/Context;

    .line 1809
    iget v4, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isNoSelectFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1813
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxo$c;->cspace_bottom_disable:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1814
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_icon_disabled_bg_color:I

    invoke-static {v1, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1817
    :cond_0
    iget v1, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v1}, Lrx;->a(I)I

    move-result v1

    .line 1818
    if-gez v1, :cond_1

    .line 1819
    sget v1, Laxo$i;->icon_file:I

    .line 1821
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1823
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6096
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 1824
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_bg_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1829
    :goto_0
    const-wide/16 v4, 0x0

    .line 1830
    if-eqz p3, :cond_6

    .line 1831
    array-length v10, p3

    .line 1832
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/util/Map;

    .line 1833
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1834
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1835
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1837
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v4, v0

    .line 1851
    :cond_2
    :goto_1
    const/4 v0, 0x4

    if-le v10, v0, :cond_5

    .line 1853
    const/4 v0, 0x3

    aget-object v3, p3, v0

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1854
    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    .line 1855
    const-wide/16 v6, 0x0

    .line 1856
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1857
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8044
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 1859
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;->a(Lrr;Lcom/alibaba/alimei/sdk/model/FolderModel;Lcom/alibaba/alimei/sdk/model/FolderModel;JJ)V

    .line 1860
    sget-boolean v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a:Z

    if-eqz v0, :cond_5

    .line 1861
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a:Z

    .line 1862
    invoke-direct {p0, v2, v9}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1863
    const/4 v1, 0x0

    .line 1864
    array-length v0, p3

    const/4 v2, 0x5

    if-le v0, v2, :cond_4

    .line 1865
    const/4 v0, 0x5

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 1867
    :cond_4
    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1868
    if-ltz v2, :cond_5

    .line 1869
    if-eqz v1, :cond_5

    instance-of v0, v1, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 1870
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 1871
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1879
    :cond_5
    const/4 v0, 0x2

    if-le v10, v0, :cond_6

    .line 1880
    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1881
    if-eqz v0, :cond_8

    .line 1882
    sget v0, Laxo$i;->icon_act_close:I

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1887
    :goto_2
    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1888
    new-instance v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d$1;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;I)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    :cond_6
    return-void

    .line 7096
    :cond_7
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 1826
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->cmail_color_7d8082:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    const-string/jumbo v1, "MailboxListAdapter"

    const-string/jumbo v3, "mailbox list adapter parser number failed"

    invoke-static {v1, v3, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1884
    :cond_8
    sget v0, Laxo$i;->icon_act_open:I

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
