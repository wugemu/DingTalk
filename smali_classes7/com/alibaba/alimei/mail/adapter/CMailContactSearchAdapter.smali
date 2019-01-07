.class public Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;
.super Lrq;
.source "CMailContactSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public e:Ljava/lang/String;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget v0, Laxo$g;->cmail_contact_search_item:I

    invoke-direct {p0, p1, v0}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->a:Z

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->f:Ljava/util/Set;

    .line 30
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x32

    .line 21
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    .line 1034
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    .line 1038
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->alias:Ljava/lang/String;

    invoke-static {v0, v1}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    if-eqz v1, :cond_3

    .line 1044
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1047
    :goto_1
    if-eqz v0, :cond_2

    .line 1048
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1096
    :goto_2
    iget-object v0, p1, Lrr;->a:Landroid/content/Context;

    .line 1052
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v5}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1053
    iget-object v4, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->e:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1055
    sget v4, Laxo$f;->name:I

    invoke-virtual {p1, v4, v3}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1056
    sget v3, Laxo$f;->address:I

    invoke-virtual {p1, v3, v0}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1058
    sget v0, Laxo$f;->avatar:I

    .line 1100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1058
    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1059
    invoke-static {v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1061
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->a:Z

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->f:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v2, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lrq;->b()V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->c()V

    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 105
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 85
    :cond_0
    return-void
.end method
