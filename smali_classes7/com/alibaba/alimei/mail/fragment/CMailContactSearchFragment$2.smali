.class final Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;
.super Ljava/lang/Object;
.source "CMailContactSearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;
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
        "Lcom/alibaba/alimei/contact/model/SearchContactResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 170
    const-string/jumbo v0, "searchFromAlimeiServerContacts"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v8, 0x14

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    check-cast p1, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iput-boolean v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->r:Z

    .line 1128
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->i:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1132
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchResut:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchResut:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(I)V

    .line 1137
    :cond_2
    :goto_0
    return-void

    .line 1140
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchKey:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1144
    iget-object v3, p1, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;->searchResut:Ljava/util/List;

    .line 1145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;

    .line 1147
    if-eqz v0, :cond_4

    .line 1151
    iget-object v6, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    .line 1152
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-static {v7}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;)Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1156
    new-instance v6, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;-><init>()V

    .line 1157
    iget-object v7, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->email:Ljava/lang/String;

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    .line 1158
    iget-object v7, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->alias:Ljava/lang/String;

    .line 1159
    iget v0, v0, Lcom/alibaba/alimei/contact/model/SearchContactModel;->type:I

    iput v0, v6, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->type:I

    .line 1160
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1163
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v8, :cond_6

    move v0, v1

    .line 1164
    :goto_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-static {v2, v4, v8, v1, v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;Ljava/util/List;IZZ)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->q:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->q:I

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1163
    goto :goto_2
.end method
