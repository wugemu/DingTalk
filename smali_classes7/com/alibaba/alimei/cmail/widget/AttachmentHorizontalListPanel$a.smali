.class public final Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "AttachmentHorizontalListPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private f:I

.field private g:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "panel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 106
    const/16 v0, 0x60

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->c:I

    .line 107
    const/16 v0, 0x7e

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->f:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->b:Ljava/util/List;

    .line 1136
    if-eqz p1, :cond_0

    .line 1139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1140
    sget v1, Laxo$d;->alm_cmail_attachment_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->f:I

    .line 1141
    sget v1, Laxo$d;->alm_cmail_attachment_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->c:I

    .line 115
    :cond_0
    iput-object p2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->g:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->g:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->b()Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "attList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->b:Ljava/util/List;

    .line 125
    if-eqz v0, :cond_2

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;

    .line 127
    .local v1, "model":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->isImageAttachment()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lacg;->f()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v3}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->b:Ljava/util/List;

    iget-object v4, v1, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v1    # "model":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->b:Ljava/util/List;

    return-object v2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 147
    if-nez p2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->mail_attachment_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .line 149
    .local v0, "attachmentView":Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a()V

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->g:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-static {v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->setForMailCompose(Z)V

    .line 154
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->g:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-static {v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->b(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Lfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->setFileSizeTextCache(Lfp;)V

    .line 155
    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 156
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 157
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->f:I

    iget v3, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->c:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 158
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a()Lsd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->setAttachmentImageLoader(Lsd;)V

    .line 161
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 162
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->g:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-static {v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    new-instance v2, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;-><init>(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;I)V

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->setDeleteListener(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;)V

    .line 173
    :cond_1
    return-object v0

    .end local v0    # "attachmentView":Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    move-object v0, p2

    .line 151
    check-cast v0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .restart local v0    # "attachmentView":Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;
    goto :goto_0
.end method
