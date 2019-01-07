.class final Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;
.super Ljava/lang/Object;
.source "CMailBodySearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;
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
        "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 71
    const-string/jumbo v0, "CMailBodySearchFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;Ljava/util/List;IZ)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 36
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    .line 1040
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    iput-boolean v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->r:Z

    .line 1046
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1048
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->total:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a(I)V

    .line 1050
    :cond_1
    :goto_0
    return-void

    .line 1052
    :cond_2
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    .line 1054
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;

    .line 1056
    if-eqz v0, :cond_3

    .line 1060
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;)Lacv;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lacv;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1063
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;Ljava/util/List;IZ)V

    .line 1066
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    iget v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->q:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->q:I

    goto :goto_0
.end method
