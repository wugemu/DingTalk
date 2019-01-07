.class final Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;
.super Ljava/lang/Object;
.source "CMailAttachmentSearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lagu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    const-string/jumbo v0, "CMailAttachmentSearchFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 99
    check-cast p1, Lagu;

    .line 1103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iput-boolean v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->r:Z

    .line 1109
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->i:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1113
    if-eqz p1, :cond_0

    .line 2028
    iget-object v0, p1, Lagu;->a:Ljava/util/List;

    .line 1113
    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, p1, Lagu;->a:Ljava/util/List;

    .line 1113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(I)V

    .line 1118
    :cond_2
    :goto_0
    return-void

    .line 4028
    :cond_3
    iget-object v0, p1, Lagu;->a:Ljava/util/List;

    .line 1122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    .line 1125
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;)Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1128
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1130
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;Ljava/util/List;IZ)V

    .line 1131
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    .line 4036
    iget v1, p1, Lagu;->b:I

    .line 1131
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->q:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->q:I

    goto :goto_0
.end method
