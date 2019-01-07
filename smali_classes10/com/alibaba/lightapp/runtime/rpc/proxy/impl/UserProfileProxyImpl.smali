.class public Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;
.super Ljava/lang/Object;
.source "UserProfileProxyImpl.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createUserByMobile(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "l":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v4, 0x1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 89
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 90
    iput v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "call_support_fixline"

    invoke-virtual {v2, v3}, Lchx;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$3;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;Lcma;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$4;

    invoke-direct {v3, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$4;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;Lcma;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public getCurrentUserProfileExtentionObject()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdentityByContactId(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile(JLhqu;)V
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lhqu",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "callback":Lhqu;, "Lhqu<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$1;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;Lhqu;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 43
    return-void
.end method

.method public getUserProfileByMobile(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "l":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/lang/String;Lcma;)V

    .line 80
    return-void
.end method

.method public getUserProfileList(Ljava/util/List;Lhqu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lhqu",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lhqu;, "Lhqu<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl$2;-><init>(Lcom/alibaba/lightapp/runtime/rpc/proxy/impl/UserProfileProxyImpl;Lhqu;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 70
    return-void
.end method
