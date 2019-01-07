.class Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;
.super Ljava/lang/Object;
.source "UserProfileProxyImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;->createUserByMobile(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;

.field final synthetic val$l:Lcma;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->this$0:Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$l:Lcma;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$mobile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 96
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$l:Lcma;

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 101
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$mobile:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "****"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$mobile:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$mobile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$mobile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$l:Lcma;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$l:Lcma;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$l:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$l:Lcma;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;->val$l:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 113
    :cond_0
    return-void
.end method
