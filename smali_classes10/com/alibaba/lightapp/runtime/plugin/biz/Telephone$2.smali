.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createFreeCall(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhqu",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 169
    const-class v6, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    invoke-static {v6}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    .line 170
    .local v0, "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 171
    .local v3, "size":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 172
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 173
    .local v5, "userData":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v5, :cond_0

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 174
    invoke-static {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 175
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;

    move-result-object v6

    invoke-interface {v0, v6, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;->createACall(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 177
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 201
    .end local v0    # "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v3    # "size":I
    .end local v5    # "userData":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_0
    return-void

    .line 179
    .restart local v0    # "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    .restart local v3    # "size":I
    .restart local v5    # "userData":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v5    # "userData":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 184
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v4, :cond_2

    .line 187
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 188
    .restart local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 191
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;->createCall(Landroid/content/Context;Ljava/util/List;)V

    .line 193
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0    # "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    .end local v1    # "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v3    # "size":I
    :cond_5
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
