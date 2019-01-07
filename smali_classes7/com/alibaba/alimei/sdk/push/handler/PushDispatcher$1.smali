.class final Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;
.super Ljava/lang/Object;
.source "PushDispatcher.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->dispatchFromArbitraryEmail(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$object:Lcom/google/gson/JsonObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$object:Lcom/google/gson/JsonObject;

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
    .line 119
    const-string/jumbo v0, "PushDispatcher"

    const-string/jumbo v1, "queryAllAccounts fail"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/framework/model/UserAccountModel;>;"
    if-eqz p1, :cond_2

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "targetAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 94
    .local v0, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    .line 98
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$email:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    move-object v1, v0

    .line 109
    .end local v0    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 110
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$context:Landroid/content/Context;

    iget-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$object:Lcom/google/gson/JsonObject;

    invoke-static {v2, v3, v4}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->access$000(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 115
    .end local v1    # "targetAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_2
    :goto_1
    return-void

    .line 103
    .restart local v0    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .restart local v1    # "targetAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$email:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->masterAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    move-object v1, v0

    .line 105
    goto :goto_0

    .line 112
    .end local v0    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_4
    const-string/jumbo v2, "PushDispatcher"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "not found account with email:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher$1;->val$email:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
