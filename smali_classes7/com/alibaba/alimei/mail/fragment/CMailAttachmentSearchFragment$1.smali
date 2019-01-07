.class final Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

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
    .line 89
    const-string/jumbo v0, "CMailAttachmentSearchFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 43
    check-cast p1, Ljava/util/Map;

    .line 1046
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1050
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    .line 1051
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    :cond_0
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1057
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1058
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1059
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1061
    :goto_0
    if-eqz v2, :cond_4

    .line 1062
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    .line 1066
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1072
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    .line 1073
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v3, :cond_1

    .line 1077
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;)Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1080
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1084
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    const/16 v2, 0x50

    invoke-static {v0, v1, v2, v6}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;Ljava/util/List;IZ)V

    .line 43
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method
