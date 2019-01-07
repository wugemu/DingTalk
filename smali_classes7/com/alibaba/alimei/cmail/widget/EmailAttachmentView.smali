.class public Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;
.super Landroid/widget/FrameLayout;
.source "EmailAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

.field protected b:Z

.field private c:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field private d:Lsd;

.field private e:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

.field private j:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

.field private k:Landroid/widget/ImageView;

.field private l:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->l:Lfp;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->n:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->g:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->e:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;

    return-object v0
.end method


# virtual methods
.method protected final a(J)Ljava/lang/String;
    .locals 3
    .param p1, "fileSize"    # J

    .prologue
    .line 103
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->l:Lfp;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->l:Lfp;

    .line 1096
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {p1, p2}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->l:Lfp;

    invoke-virtual {v1, p1, p2, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 110
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    sget v0, Laxo$f;->attachent_item_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    .line 57
    sget v0, Laxo$f;->attachment_video_info_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->f:Landroid/view/ViewGroup;

    .line 58
    sget v0, Laxo$f;->video_size:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->g:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    .line 59
    sget v0, Laxo$f;->attachment_file_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->h:Landroid/widget/RelativeLayout;

    .line 60
    sget v0, Laxo$f;->tv_file_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->i:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    .line 61
    sget v0, Laxo$f;->tv_file_size:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->j:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    .line 62
    sget v0, Laxo$f;->tv_file_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->k:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    new-instance v1, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;-><init>(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->setImageContentObserver(Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;)V

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 13
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 145
    iput-object p2, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->c:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 146
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->c:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v0}, Lse;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "extension":Ljava/lang/String;
    invoke-static {v9}, Lse;->a(Ljava/lang/String;)Z

    move-result v10

    .line 148
    .local v10, "isImage":Z
    invoke-static {v9}, Lse;->c(Ljava/lang/String;)Z

    move-result v11

    .line 149
    .local v11, "isVideo":Z
    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->setIsVideo(Z)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->c:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->c:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 2085
    iput-wide v6, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->n:J

    .line 2086
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->i:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2087
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2088
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->setVisibility(I)V

    .line 2089
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->k:Landroid/widget/ImageView;

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2090
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->j:Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->d:Lsd;

    if-eqz v0, :cond_1

    if-nez v10, :cond_0

    if-eqz v11, :cond_1

    .line 152
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$3;

    invoke-direct {v0, p0, v9}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$3;-><init>(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "accessToken":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    if-eqz v10, :cond_3

    .line 163
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->d:Lsd;

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    invoke-interface {v0, v2, p1, v3, p2}, Lsd;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    .line 176
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "accessToken":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->b:Z

    if-eqz v0, :cond_2

    .line 3128
    sget v0, Laxo$f;->attachment_delete_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3129
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3130
    new-instance v3, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;-><init>(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_2
    return-void

    .line 165
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "accessToken":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->d:Lsd;

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lsd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    goto :goto_0

    .line 168
    .end local v2    # "accessToken":Ljava/lang/String;
    :cond_4
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    if-eqz v10, :cond_5

    .line 170
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->d:Lsd;

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    invoke-interface {v0, v5, p1, v3, p2}, Lsd;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    goto :goto_0

    .line 172
    :cond_5
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->d:Lsd;

    iget-object v7, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    move-object v4, v1

    move-object v6, p1

    move-object v8, p2

    invoke-interface/range {v3 .. v8}, Lsd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    goto :goto_0
.end method

.method public setAttachmentImageLoader(Lsd;)V
    .locals 0
    .param p1, "loader"    # Lsd;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->d:Lsd;

    .line 125
    return-void
.end method

.method public setDeleteListener(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->e:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;

    .line 121
    return-void
.end method

.method public setFileSizeTextCache(Lfp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "cache":Lfp;, "Lfp<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->l:Lfp;

    .line 99
    return-void
.end method

.method public setForMailCompose(Z)V
    .locals 0
    .param p1, "forMailCompose"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->b:Z

    .line 183
    return-void
.end method

.method protected setIsVideo(Z)V
    .locals 0
    .param p1, "isVideo"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->m:Z

    .line 117
    return-void
.end method
