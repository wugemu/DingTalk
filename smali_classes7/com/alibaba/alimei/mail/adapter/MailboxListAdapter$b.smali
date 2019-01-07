.class final Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$b;
.super Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;
.source "MailboxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V
    .locals 0
    .param p1, "listAdapter"    # Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V

    .line 1105
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1109
    sget v0, Laxo$g;->cmail_mailbox_child_folder:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1114
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x3

    const-wide/16 v6, 0x0

    .line 1101
    move-object v2, p2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2119
    sget v0, Laxo$f;->icon:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 2119
    check-cast v0, Landroid/widget/TextView;

    .line 2120
    sget v1, Laxo$f;->name:I

    .line 4100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 2120
    check-cast v1, Landroid/widget/TextView;

    .line 5096
    iget-object v3, p1, Lrr;->a:Landroid/content/Context;

    .line 2122
    iget v4, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2123
    iget v1, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v1}, Lrx;->a(I)I

    move-result v1

    .line 2124
    if-gez v1, :cond_0

    .line 2125
    sget v1, Laxo$i;->icon_file:I

    .line 2127
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2129
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6096
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 2130
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_theme_bg_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2136
    :goto_0
    if-eqz p3, :cond_2

    .line 2137
    array-length v1, p3

    .line 2138
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/util/Map;

    .line 2139
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2140
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2143
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v4, v0

    .line 2150
    :goto_1
    if-le v1, v8, :cond_2

    .line 2152
    const/4 v0, 0x2

    aget-object v3, p3, v0

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2153
    aget-object v0, p3, v8

    check-cast v0, Ljava/util/Map;

    .line 2155
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2156
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 2158
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$b;->a(Lrr;Lcom/alibaba/alimei/sdk/model/FolderModel;Lcom/alibaba/alimei/sdk/model/FolderModel;JJ)V

    .line 1101
    :cond_2
    return-void

    .line 7096
    :cond_3
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 2132
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->cmail_color_7d8082:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2144
    :catch_0
    move-exception v0

    .line 2145
    const-string/jumbo v3, "MailboxListAdapter"

    const-string/jumbo v4, "mailbox list adapter parser number failed"

    invoke-static {v3, v4, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-wide v4, v6

    goto :goto_1
.end method
