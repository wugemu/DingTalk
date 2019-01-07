.class final Lace$3;
.super Ljava/lang/Object;
.source "MailBridge.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lxv;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lxv;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lace$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lace$3;->b:Lxv;

    iput-object p3, p0, Lace$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 131
    iget-object v0, p0, Lace$3;->b:Lxv;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lace$3;->b:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    check-cast p1, Ljava/util/List;

    .line 1098
    if-eqz p1, :cond_3

    .line 1099
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    iget-object v2, p0, Lace$3;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1102
    iget-object v2, p0, Lace$3;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1103
    const-string/jumbo v2, "MailBridge"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "found account with email: "

    aput-object v4, v3, v5

    iget-object v4, p0, Lace$3;->a:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v2, p0, Lace$3;->b:Lxv;

    if-eqz v2, :cond_2

    .line 1105
    iget-object v1, p0, Lace$3;->b:Lxv;

    invoke-interface {v1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 1116
    :cond_1
    :goto_0
    return-void

    .line 1111
    :cond_2
    iget-object v2, p0, Lace$3;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    iget-object v2, p0, Lace$3;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->masterAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    const-string/jumbo v2, "MailBridge"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "found account with master email: "

    aput-object v4, v3, v5

    iget-object v4, p0, Lace$3;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v2, p0, Lace$3;->b:Lxv;

    if-eqz v2, :cond_0

    .line 1115
    iget-object v1, p0, Lace$3;->b:Lxv;

    invoke-interface {v1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1124
    :cond_3
    iget-object v0, p0, Lace$3;->b:Lxv;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lace$3;->b:Lxv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
