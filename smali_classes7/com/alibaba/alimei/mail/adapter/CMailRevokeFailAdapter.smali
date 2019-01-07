.class public Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;
.super Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;
.source "CMailRevokeFailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$b;,
        Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 38
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final a(I)Lrs;
    .locals 2
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$a;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$a;-><init>(B)V

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$b;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter$b;-><init>(B)V

    goto :goto_0
.end method

.method public final e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;->a(Ljava/util/List;)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_revoke_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/adapter/CMailRevokeFailAdapter;->getItemViewType(I)I

    move-result v0

    .line 52
    .local v0, "viewType":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
