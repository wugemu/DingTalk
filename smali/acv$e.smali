.class final Lacv$e;
.super Lacv$a;
.source "CMailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field A:Landroid/view/ViewStub;

.field B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:Landroid/view/ViewStub;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Lcom/alibaba/alimei/mail/widget/TagView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/view/View;

.field p:Landroid/widget/TextView;

.field q:Landroid/view/ViewStub;

.field r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

.field v:Landroid/view/View;

.field w:Landroid/view/ViewStub;

.field x:Landroid/widget/TextView;

.field y:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lacv$a;-><init>(I)V

    .line 705
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxo$g;->alm_cmail_list_mail_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1104
    .local v0, "convertView":Landroid/view/View;
    sget v1, Laxo$f;->select:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->d:Landroid/widget/TextView;

    .line 1105
    sget v1, Laxo$f;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iput-object v1, p0, Lacv$e;->e:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1106
    sget v1, Laxo$f;->readReplyFroward:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->f:Landroid/widget/TextView;

    .line 1107
    sget v1, Laxo$f;->imgMailAlarm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lacv$e;->g:Landroid/widget/ImageView;

    .line 1108
    sget v1, Laxo$f;->txtMailSender:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->h:Landroid/widget/TextView;

    .line 1109
    sget v1, Laxo$f;->flagOrComplete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->i:Landroid/widget/TextView;

    .line 1110
    sget v1, Laxo$f;->txtMailTime:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->j:Landroid/widget/TextView;

    .line 1111
    sget v1, Laxo$f;->status_view:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lacv$e;->q:Landroid/view/ViewStub;

    .line 1113
    sget v1, Laxo$f;->txtMailStatus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->s:Landroid/widget/TextView;

    .line 1114
    sget v1, Laxo$f;->tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/TagView;

    iput-object v1, p0, Lacv$e;->k:Lcom/alibaba/alimei/mail/widget/TagView;

    .line 1115
    sget v1, Laxo$f;->imgMailImportant:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->l:Landroid/widget/TextView;

    .line 1116
    sget v1, Laxo$f;->cmail_list_calendar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->m:Landroid/widget/TextView;

    .line 1117
    sget v1, Laxo$f;->txtMailTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->n:Landroid/widget/TextView;

    .line 1118
    sget v1, Laxo$f;->urgent_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lacv$e;->o:Landroid/view/View;

    .line 1119
    sget v1, Laxo$f;->ll_mail_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lacv$e;->z:Landroid/view/View;

    .line 1120
    sget v1, Laxo$f;->txtMailContent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->t:Landroid/widget/TextView;

    .line 1121
    sget v1, Laxo$f;->txtMailCount:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->p:Landroid/widget/TextView;

    .line 1122
    sget v1, Laxo$f;->hsvAttachmentView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lacv$e;->w:Landroid/view/ViewStub;

    .line 1123
    sget v1, Laxo$f;->txtUnreadCount:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacv$e;->x:Landroid/widget/TextView;

    .line 1125
    sget v1, Laxo$f;->alm_event_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lacv$e;->E:Landroid/view/ViewStub;

    .line 1126
    sget v1, Laxo$f;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lacv$e;->C:Landroid/view/View;

    .line 1127
    sget v1, Laxo$f;->revoke_tip_layout:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lacv$e;->A:Landroid/view/ViewStub;

    .line 1129
    return-object v0
.end method

.method public final a(JJ)V
    .locals 3
    .param p1, "mailId"    # J
    .param p3, "timestamp"    # J

    .prologue
    .line 741
    iget-object v0, p0, Lacv$e;->s:Landroid/widget/TextView;

    invoke-static {p1, p2, p3, p4}, Lacv$e;->b(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 742
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;I)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p3, "position"    # I

    .prologue
    .line 746
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v4, v5, v6, v7}, Lacv$e;->b(JJ)Ljava/lang/String;

    move-result-object v27

    .line 747
    .local v27, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->s:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 750
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lacv$e;->y:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 2222
    iget-boolean v5, v3, Lacv;->o:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_18

    .line 754
    :cond_1
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 755
    .local v25, "sformatSubject":Ljava/lang/String;
    const/16 v24, 0x0

    .line 756
    .local v24, "sformatSender":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 757
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v3, :cond_2

    .line 758
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 759
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 764
    :cond_2
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 770
    .local v23, "sformatDesc":Ljava/lang/String;
    if-eqz v25, :cond_3

    .line 771
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 773
    :cond_3
    if-eqz v24, :cond_4

    .line 774
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 776
    :cond_4
    if-eqz v23, :cond_5

    .line 777
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 780
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->f(Lacv;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    iget-object v3, v3, Lacv;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->g(Lacv;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    iget-object v4, v4, Lacv;->j:Ljava/lang/String;

    const/16 v5, 0x19

    move-object/from16 v0, v25

    invoke-static {v3, v0, v4, v5}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 782
    .local v17, "formatSubject":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->h(Lacv;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    iget-object v4, v4, Lacv;->j:Ljava/lang/String;

    const/16 v5, 0x19

    move-object/from16 v0, v24

    invoke-static {v3, v0, v4, v5}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 783
    .local v16, "formatSender":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->i(Lacv;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    iget-object v4, v4, Lacv;->j:Ljava/lang/String;

    const/16 v5, 0x32

    move-object/from16 v0, v23

    invoke-static {v3, v0, v4, v5}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 790
    .local v15, "formatDesc":Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v3, :cond_1b

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->h:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v29

    .line 797
    .local v29, "tp":Landroid/text/TextPaint;
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    if-eqz v3, :cond_1e

    .line 798
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v3, :cond_1c

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lacv$e;->f:Landroid/widget/TextView;

    .line 801
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$d;->alm_cmail_font_size_s8:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 800
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    sget v4, Laxo$i;->icon_round_fill:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    :goto_5
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 821
    invoke-static/range {p2 .. p2}, Lrx;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->i:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->i:Landroid/widget/TextView;

    sget v4, Laxo$i;->icon_task_fill:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3133
    :goto_7
    if-nez p2, :cond_22

    .line 3153
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->k:Lcom/alibaba/alimei/mail/widget/TagView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    .line 836
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    iget-boolean v3, v3, Lacv;->l:Z

    if-eqz v3, :cond_25

    invoke-static/range {p2 .. p2}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->l:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    :goto_9
    invoke-static/range {p2 .. p2}, Lrx;->f(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->m:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    :goto_a
    invoke-static/range {p2 .. p2}, Lrx;->g(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->g:Landroid/widget/ImageView;

    sget v4, Laxo$e;->alm_cmail_mail_icon_alarm:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 856
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->j(Lacv;)I

    move-result v3

    if-eqz v3, :cond_28

    const/16 v19, 0x1

    .line 857
    .local v19, "isScrolling":Z
    :goto_c
    const-string/jumbo v14, ""

    .line 858
    .local v14, "email":Ljava/lang/String;
    const-string/jumbo v21, ""

    .line 859
    .local v21, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isSendFolder()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 860
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getTo()Ljava/util/List;

    move-result-object v28

    .line 861
    .local v28, "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz v28, :cond_29

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 862
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 863
    .local v20, "m":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v20, :cond_8

    .line 864
    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 865
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 878
    .end local v20    # "m":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v28    # "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_8
    :goto_d
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isSendFolder()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 879
    :cond_9
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->k(Lacv;)Landroid/content/Context;

    move-result-object v3

    sget v4, Laxo$i;->alm_cmail_mail_unknown_sender:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 880
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFromName()Ljava/lang/String;

    move-result-object v21

    .line 882
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->e:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v3, v14, v0, v1}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 889
    move-object/from16 v0, p2

    iget v5, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    .line 4062
    const/4 v4, 0x1

    .line 4063
    if-eqz v5, :cond_b

    .line 5049
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    if-nez v3, :cond_b

    .line 5050
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->q:Landroid/view/ViewStub;

    sget v6, Laxo$f;->status_view:I

    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 5051
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->q:Landroid/view/ViewStub;

    sget v6, Laxo$g;->cmail_list_mail_status_view:I

    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 5052
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->q:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    .line 4066
    :cond_b
    packed-switch v5, :pswitch_data_0

    .line 4085
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->setStatus(I)V

    .line 4086
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->s:Landroid/widget/TextView;

    sget v5, Laxo$i;->alm_cmail_status_code_unknown:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    move v3, v4

    .line 4089
    :goto_f
    if-eqz v3, :cond_2b

    .line 4090
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->setVisibility(I)V

    .line 4091
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->s:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    :cond_c
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->j:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->j:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v4, v6, v7}, Lacv;->a(Lacv;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :goto_11
    const/4 v13, 0x0

    .line 911
    .local v13, "draftFlagText":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_d

    .line 912
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "["

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Laxo$i;->compose_draft_title:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "]"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 916
    :cond_d
    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2f

    .line 917
    :cond_e
    sget v3, Laxo$i;->alm_cmail_mail_no_subject:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 918
    .local v22, "noSubject":Ljava/lang/String;
    if-eqz v13, :cond_2e

    .line 919
    new-instance v30, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 931
    .end local v22    # "noSubject":Ljava/lang/String;
    .local v30, "wholeSubject":Landroid/text/SpannableString;
    :goto_12
    if-eqz v13, :cond_f

    .line 932
    new-instance v26, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$c;->ui_common_warming_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 933
    .local v26, "span":Landroid/text/style/ForegroundColorSpan;
    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 936
    .end local v26    # "span":Landroid/text/style/ForegroundColorSpan;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->n:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    if-eqz v15, :cond_10

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_32

    .line 939
    :cond_10
    invoke-static {}, Lacg;->f()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->t:Landroid/widget/TextView;

    sget v4, Laxo$i;->alm_cmail_mail_no_content:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 953
    :goto_13
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v3, :cond_35

    move-object/from16 v0, p2

    iget v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    if-lez v3, :cond_35

    .line 954
    move-object/from16 v0, p2

    iget v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    const/16 v4, 0x63

    if-le v3, v4, :cond_34

    const-string/jumbo v11, "99+"

    .line 955
    .local v11, "countText":Ljava/lang/String;
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->p:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    .end local v11    # "countText":Ljava/lang/String;
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->o:Landroid/view/View;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_36

    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    invoke-static/range {p2 .. p2}, Lrx;->f(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 6039
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->D:Landroid/view/View;

    if-nez v3, :cond_11

    .line 6040
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->E:Landroid/view/ViewStub;

    sget v4, Laxo$f;->alm_event_panel:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 6041
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->E:Landroid/view/ViewStub;

    sget v4, Laxo$g;->alm_cmail_list_mail_item_event:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 6042
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->E:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lacv$e;->D:Landroid/view/View;

    .line 6043
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->D:Landroid/view/View;

    sget v4, Laxo$f;->alm_event_meeting_addr:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lacv$e;->F:Landroid/widget/TextView;

    .line 6044
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->D:Landroid/view/View;

    sget v4, Laxo$f;->alm_event_meeting_time:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lacv$e;->G:Landroid/widget/TextView;

    .line 974
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->z:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->D:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 976
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-object v2, v3, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    .line 977
    .local v2, "address":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->F:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxo$i;->alm_cmail_meeting_location:I

    .line 979
    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Laxo$i;->no_location_label:I

    .line 980
    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 978
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->G:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxo$i;->alm_cmail_meeting_time:I

    .line 986
    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 987
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v8, v8, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-static {v7, v8, v9, v0, v1}, Lsc;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 985
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6158
    .end local v2    # "address":Ljava/lang/String;
    :cond_12
    :goto_18
    invoke-static {}, Lacg;->f()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 6159
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    if-eqz v3, :cond_13

    .line 6160
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6162
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7319
    :cond_14
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->f(Lacv;)Z

    move-result v3

    if-nez v3, :cond_4c

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    if-eqz v3, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->l(Lacv;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 7320
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    if-nez v3, :cond_16

    .line 8292
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    iget-object v3, v3, Lacv;->m:Lfp;

    if-nez v3, :cond_15

    .line 8293
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    new-instance v4, Lfp;

    invoke-direct {v4}, Lfp;-><init>()V

    iput-object v4, v3, Lacv;->m:Lfp;

    .line 8295
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    if-nez v3, :cond_16

    .line 8296
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->w:Landroid/view/ViewStub;

    sget v4, Laxo$f;->hsvAttachmentContainer:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 8297
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->w:Landroid/view/ViewStub;

    sget v4, Laxo$g;->alm_cmail_list_mail_item_attachment:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 8298
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->w:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lacv$e;->v:Landroid/view/View;

    .line 8299
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->v:Landroid/view/View;

    sget v4, Laxo$f;->hsvAttachmentView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .line 8300
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    iget-object v4, v4, Lacv;->m:Lfp;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setFileSizeTextCache(Lfp;)V

    .line 8301
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->t:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 8302
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->t:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 8303
    move-object/from16 v0, p0

    iget-object v5, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .line 8308
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 8309
    if-eqz v6, :cond_16

    .line 8310
    int-to-float v3, v3

    const v7, 0x3f51eb85    # 0.82f

    div-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8311
    int-to-float v3, v4

    const v4, 0x3f51eb85    # 0.82f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8312
    const v3, 0x3f51eb85    # 0.82f

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 8313
    const v3, 0x3f51eb85    # 0.82f

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 7323
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->v:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7324
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-virtual {v3}, Lacv;->f()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 7325
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setEnabled(Z)V

    .line 7329
    :goto_1a
    new-instance v3, Lacv$e$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lacv$e$4;-><init>(Lacv$e;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 7380
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    invoke-static {v4}, Lacv;->l(Lacv;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailNormalAttachments(Ljava/lang/String;Lxv;)V

    .line 1009
    :cond_17
    :goto_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-virtual {v3}, Lacv;->f()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->e:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setVisibility(I)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lacv;->a(Lacv;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->d:Landroid/widget/TextView;

    sget v4, Laxo$i;->icon_checkbox_fill:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->cmail_color_3296FA:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1025
    :goto_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-virtual {v3}, Lacv;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    if-ge v0, v3, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    add-int/lit8 v4, p3, 0x1

    .line 1026
    invoke-virtual {v3, v4}, Lacv;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_50

    const/16 v18, 0x1

    .line 1027
    .local v18, "hideDivider":Z
    :goto_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->C:Landroid/view/View;

    if-eqz v18, :cond_51

    const/16 v3, 0x8

    :goto_1e
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2225
    .end local v13    # "draftFlagText":Ljava/lang/String;
    .end local v14    # "email":Ljava/lang/String;
    .end local v15    # "formatDesc":Ljava/lang/CharSequence;
    .end local v16    # "formatSender":Ljava/lang/CharSequence;
    .end local v17    # "formatSubject":Ljava/lang/CharSequence;
    .end local v18    # "hideDivider":Z
    .end local v19    # "isScrolling":Z
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "sformatDesc":Ljava/lang/String;
    .end local v24    # "sformatSender":Ljava/lang/String;
    .end local v25    # "sformatSubject":Ljava/lang/String;
    .end local v29    # "tp":Landroid/text/TextPaint;
    .end local v30    # "wholeSubject":Landroid/text/SpannableString;
    :cond_18
    iget-object v5, v3, Lacv;->n:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 2226
    iget-object v3, v3, Lacv;->n:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 761
    .restart local v24    # "sformatSender":Ljava/lang/String;
    .restart local v25    # "sformatSubject":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    move-object/from16 v24, v0

    goto/16 :goto_2

    .line 785
    .restart local v23    # "sformatDesc":Ljava/lang/String;
    :cond_1a
    move-object/from16 v17, v25

    .line 786
    .restart local v17    # "formatSubject":Ljava/lang/CharSequence;
    move-object/from16 v16, v24

    .line 787
    .restart local v16    # "formatSender":Ljava/lang/CharSequence;
    move-object/from16 v15, v23

    .restart local v15    # "formatDesc":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 793
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->h:Landroid/widget/TextView;

    sget v4, Laxo$i;->alm_cmail_mail_unknown_sender:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 805
    .restart local v29    # "tp":Landroid/text/TextPaint;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lacv$e;->f:Landroid/widget/TextView;

    .line 806
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$d;->alm_cmail_font_size_s16:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 805
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->cmail_color_e3e3e4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 808
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    if-eqz v3, :cond_1d

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    sget v4, Laxo$i;->icon_reply_fill:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 811
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    sget v4, Laxo$i;->icon_forward_fill:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 816
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->f:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 819
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 825
    :cond_20
    invoke-static/range {p2 .. p2}, Lrx;->c(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->i:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->i:Landroid/widget/TextView;

    sget v4, Laxo$i;->icon_right_fill:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->ui_common_green_icon_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 830
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->i:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 3138
    :cond_22
    invoke-static {}, Lacg;->f()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3143
    invoke-static/range {p2 .. p2}, Lrx;->e(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3144
    invoke-static/range {p2 .. p2}, Lrx;->d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/util/List;

    move-result-object v3

    .line 3145
    if-eqz v3, :cond_23

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3146
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->k:Lcom/alibaba/alimei/mail/widget/TagView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    goto/16 :goto_8

    .line 3150
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->k:Lcom/alibaba/alimei/mail/widget/TagView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    .line 3151
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->k:Lcom/alibaba/alimei/mail/widget/TagView;

    invoke-virtual {v4, v3}, Lcom/alibaba/alimei/mail/widget/TagView;->setColors(Ljava/util/List;)V

    goto/16 :goto_8

    .line 839
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->l:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 845
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->m:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 852
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 856
    :cond_28
    const/16 v19, 0x0

    goto/16 :goto_c

    .line 868
    .restart local v14    # "email":Ljava/lang/String;
    .restart local v19    # "isScrolling":Z
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v28    # "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getCc()Ljava/util/List;

    move-result-object v10

    .line 869
    .local v10, "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 870
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 871
    .restart local v20    # "m":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v20, :cond_8

    .line 872
    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 873
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_d

    .line 879
    .end local v10    # "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v20    # "m":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v28    # "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_2a
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v14, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    goto/16 :goto_e

    .line 4068
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->setStatus(I)V

    .line 4069
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->s:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_cmail_network_error:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    move v3, v4

    .line 4070
    goto/16 :goto_f

    .line 4072
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->setStatus(I)V

    .line 4073
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->s:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_cmail_status_server_reject:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    move v3, v4

    .line 4074
    goto/16 :goto_f

    .line 4076
    :pswitch_3
    const/4 v3, 0x0

    .line 4077
    goto/16 :goto_f

    .line 4079
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->setStatus(I)V

    .line 4080
    const/4 v3, 0x0

    .line 4082
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->s:Landroid/widget/TextView;

    sget v5, Laxo$i;->cmail_compose_sending:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 4093
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->s:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4094
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    if-eqz v3, :cond_c

    .line 4095
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->r:Lcom/alibaba/alimei/cmail/widget/CMailStatusView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/CMailStatusView;->setVisibility(I)V

    goto/16 :goto_10

    .line 900
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v3, v4, v5}, Lacv;->b(Lacv;J)Ljava/lang/String;

    move-result-object v12

    .line 901
    .local v12, "date":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lacv$e;->b:Z

    if-eqz v3, :cond_2d

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->j:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lacv$e;->c:Lacv;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v6, v8, v9}, Lacv;->a(Lacv;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 904
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 921
    .end local v12    # "date":Ljava/lang/String;
    .restart local v13    # "draftFlagText":Ljava/lang/String;
    .restart local v22    # "noSubject":Ljava/lang/String;
    :cond_2e
    new-instance v30, Landroid/text/SpannableString;

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 923
    .restart local v30    # "wholeSubject":Landroid/text/SpannableString;
    goto/16 :goto_12

    .line 924
    .end local v22    # "noSubject":Ljava/lang/String;
    .end local v30    # "wholeSubject":Landroid/text/SpannableString;
    :cond_2f
    if-eqz v13, :cond_30

    .line 925
    new-instance v30, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v30    # "wholeSubject":Landroid/text/SpannableString;
    goto/16 :goto_12

    .line 927
    .end local v30    # "wholeSubject":Landroid/text/SpannableString;
    :cond_30
    new-instance v30, Landroid/text/SpannableString;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v30    # "wholeSubject":Landroid/text/SpannableString;
    goto/16 :goto_12

    .line 942
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->t:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->l(Lacv;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static/range {v3 .. v9}, Lafw;->a(Ljava/lang/String;JJJ)V

    goto/16 :goto_13

    .line 946
    :cond_32
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DINGTALK_EMPTY_SUMMARY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->t:Landroid/widget/TextView;

    sget v4, Laxo$i;->alm_cmail_mail_no_content:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_13

    .line 949
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    .line 954
    :cond_34
    move-object/from16 v0, p2

    iget v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_14

    .line 958
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->p:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 961
    :cond_36
    const/16 v3, 0x8

    goto/16 :goto_16

    .line 982
    .restart local v2    # "address":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->F:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxo$i;->alm_cmail_meeting_location:I

    .line 983
    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 982
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 992
    .end local v2    # "address":Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->z:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_39

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->z:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 995
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->D:Landroid/view/View;

    if-eqz v3, :cond_12

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->D:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_18

    .line 6165
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    if-eqz v3, :cond_3b

    .line 6166
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6169
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    .line 6452
    iget-boolean v4, v3, Lacv;->i:Z

    if-nez v4, :cond_3c

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isSendFolder()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 6453
    :cond_3c
    const/4 v3, 0x0

    .line 6169
    :goto_1f
    if-eqz v3, :cond_49

    .line 6171
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_43

    .line 6172
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->p:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 6173
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_3d

    .line 6174
    check-cast v3, Ljava/lang/Long;

    .line 6175
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_42

    .line 6176
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6185
    :cond_3d
    :goto_20
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 6186
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    invoke-static {v4}, Lacv;->c(Lacv;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 6187
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    invoke-static {v4}, Lacv;->c(Lacv;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    .line 6188
    if-eqz v3, :cond_46

    .line 6189
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    invoke-static {v4}, Lacv;->m(Lacv;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lrx;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;)Ljava/lang/String;

    move-result-object v5

    .line 6190
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    const/4 v4, 0x1

    .line 6191
    :goto_21
    if-eqz v4, :cond_46

    .line 6192
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->x:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6193
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->x:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6194
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->x:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lacv$e;->c:Lacv;

    invoke-static {v5}, Lacv;->n(Lacv;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lrx;->b(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6195
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-virtual {v3}, Lacv;->f()Z

    move-result v3

    if-nez v3, :cond_45

    .line 6196
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    new-instance v4, Lacv$e$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lacv$e$1;-><init>(Lacv$e;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_19

    .line 6459
    :cond_3e
    iget-object v4, v3, Lacv;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v4, :cond_41

    .line 6463
    iget-object v4, v3, Lacv;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v4

    if-nez v4, :cond_3f

    iget-object v4, v3, Lacv;->c:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 6464
    :cond_3f
    const/4 v3, 0x0

    goto/16 :goto_1f

    .line 6467
    :cond_40
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v4

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 6468
    iget-object v4, v3, Lacv;->r:Ljava/util/HashSet;

    if-eqz v4, :cond_41

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v4, :cond_41

    iget-object v3, v3, Lacv;->r:Ljava/util/HashSet;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 6469
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 6470
    const/4 v3, 0x1

    goto/16 :goto_1f

    .line 6472
    :cond_41
    const/4 v3, 0x0

    goto/16 :goto_1f

    .line 6178
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_20

    .line 6182
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_20

    .line 6190
    :cond_44
    const/4 v4, 0x0

    goto/16 :goto_21

    .line 6205
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_19

    .line 6213
    :cond_46
    new-instance v3, Lacv$e$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lacv$e$2;-><init>(Lacv$e;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 6263
    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->c:Lacv;

    invoke-static {v4}, Lacv;->l(Lacv;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    const-wide/16 v6, 0x1388

    invoke-interface {v4, v5, v6, v7, v3}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryMailReadStatus(Ljava/lang/String;JLxv;)V

    .line 6265
    if-nez p3, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->c:Lacv;

    invoke-static {v3}, Lacv;->r(Lacv;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 7031
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    if-nez v3, :cond_47

    .line 7032
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->A:Landroid/view/ViewStub;

    sget v4, Laxo$f;->revoke_tip_layout:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 7033
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->A:Landroid/view/ViewStub;

    sget v4, Laxo$g;->cmail_list_mail_revoke_tip_layout:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 7034
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->A:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lacv$e;->B:Landroid/view/View;

    .line 6267
    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6268
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    new-instance v4, Lacv$e$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lacv$e$3;-><init>(Lacv$e;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_19

    .line 6277
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    if-eqz v3, :cond_14

    .line 6278
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6279
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_19

    .line 6283
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    if-eqz v3, :cond_4a

    .line 6284
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6285
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->B:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6287
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19

    .line 7327
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setEnabled(Z)V

    goto/16 :goto_1a

    .line 7384
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    if-eqz v3, :cond_17

    .line 7385
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->v:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1016
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->d:Landroid/widget/TextView;

    sget v4, Laxo$i;->icon_checkbox:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacv$e;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->cmail_color_e3e3e4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1c

    .line 1020
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_4f

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->d:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lacv$e;->e:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setVisibility(I)V

    goto/16 :goto_1c

    .line 1026
    :cond_50
    const/16 v18, 0x0

    goto/16 :goto_1d

    .line 1027
    .restart local v18    # "hideDivider":Z
    :cond_51
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 4066
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
