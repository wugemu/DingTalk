.class final Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lagv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

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
    .line 109
    const-string/jumbo v0, "CMailContactSearchFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    check-cast p1, Ljava/util/Map;

    .line 1056
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1060
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    .line 1061
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    :cond_0
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1068
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1069
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1070
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1072
    :goto_0
    if-eqz v3, :cond_1

    .line 1073
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagv;

    move-object v1, v0

    .line 1076
    :cond_1
    if-eqz v1, :cond_5

    .line 1077
    iget-boolean v0, v1, Lagv;->c:Z

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 1081
    :goto_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-object v4, v4, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->m:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1085
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    if-eqz v0, :cond_3

    .line 1088
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    iget-wide v6, v0, Lagv;->b:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;I)I

    .line 1089
    iget-object v0, v0, Lagv;->d:Ljava/util/List;

    .line 1090
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1091
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    .line 1092
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1096
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;)Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    move-result-object v5

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1099
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1104
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    const/16 v4, 0x50

    invoke-static {v0, v3, v4, v2, v1}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;Ljava/util/List;IZZ)V

    .line 53
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_1

    :cond_6
    move-object v3, v1

    goto :goto_0

    :cond_7
    move-object v0, v1

    move-object v3, v1

    move v1, v2

    goto :goto_1
.end method
