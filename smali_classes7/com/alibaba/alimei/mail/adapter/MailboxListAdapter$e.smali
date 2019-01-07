.class final Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;
.super Ljava/lang/Object;
.source "MailboxListAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 951
    sget v0, Laxo$g;->cmail_mailbox_folder:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 956
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v7, 0x8

    .line 947
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 1961
    sget v0, Laxo$f;->icon:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1961
    check-cast v0, Landroid/widget/TextView;

    .line 1962
    sget v1, Laxo$f;->name:I

    .line 3100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1962
    check-cast v1, Landroid/widget/TextView;

    .line 1963
    sget v2, Laxo$f;->new_mail_count:I

    .line 4100
    invoke-virtual {p1, v2}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1964
    sget v3, Laxo$f;->unread_count_layout:I

    .line 5100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1966
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lrx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1968
    invoke-static {p2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isFollowTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1969
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1970
    sget v1, Laxo$i;->icon_task:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5987
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 5990
    :cond_1
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafv;->i(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v1

    .line 5991
    if-eqz v1, :cond_0

    .line 5992
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    .line 6189
    iget v0, v0, Lafy;->o:I

    .line 5992
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 5993
    :goto_1
    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e$1;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;Lrr;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/alibaba/alimei/sdk/api/TagApi;->queryTagNewMailCounts(Ljava/lang/String;ZLxv;)V

    goto :goto_0

    .line 5992
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1972
    :cond_3
    invoke-static {p2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isCompleteTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1973
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_safe_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1974
    sget v1, Laxo$i;->icon_C1_suc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1975
    :cond_4
    invoke-static {p2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isUnreadTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7096
    iget-object v1, p1, Lrr;->a:Landroid/content/Context;

    .line 1976
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1977
    sget v1, Laxo$i;->icon_checkbox:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1979
    :cond_5
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1980
    sget v1, Laxo$i;->icon_tag_color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1981
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1982
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
