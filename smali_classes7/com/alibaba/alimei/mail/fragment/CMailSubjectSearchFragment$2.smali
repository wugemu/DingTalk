.class final Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;
.super Ljava/lang/Object;
.source "CMailSubjectSearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

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
    .line 121
    const-string/jumbo v0, "CMailSubjectSearchFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(I)V

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

    .line 84
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    iput-boolean v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->r:Z

    .line 1094
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->i:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1098
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->total:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(I)V

    .line 1103
    :cond_2
    :goto_0
    return-void

    .line 1105
    :cond_3
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;->mails:Ljava/util/List;

    .line 1107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;

    .line 1110
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;)Lacv;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSearchModel;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lacv;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1113
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1115
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;Ljava/util/List;IZ)V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    iget v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->q:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->q:I

    goto :goto_0
.end method
