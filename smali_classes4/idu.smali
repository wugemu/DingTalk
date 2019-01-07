.class public final Lidu;
.super Ljava/lang/Object;
.source "UserRpc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/alibaba/wukong/idl/user/models/AliasModel;Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .param p1, "updateType"    # I
    .param p2, "model"    # Lcom/alibaba/wukong/idl/user/models/AliasModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 204
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/User;>;"
    new-instance v0, Lidu$4;

    invoke-direct {v0, p0, p3}, Lidu$4;-><init>(Lidu;Lcom/alibaba/wukong/Callback;)V

    .line 215
    .local v0, "handler":Lhzy;, "Lhzy<Lcom/alibaba/wukong/idl/user/models/AliasModel;Lcom/alibaba/wukong/im/User;>;"
    const-string/jumbo v2, "[TAG] UserRpc"

    const-string/jumbo v3, "[RPC] updAlias"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-class v2, Lcom/alibaba/wukong/idl/user/client/AliasIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/user/client/AliasIService;

    .line 218
    .local v1, "service":Lcom/alibaba/wukong/idl/user/client/AliasIService;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2, v0}, Lcom/alibaba/wukong/idl/user/client/AliasIService;->updateData(Ljava/lang/Integer;Lcom/alibaba/wukong/idl/user/models/AliasModel;Liyv;)V

    .line 219
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .param p1, "userModel"    # Lcom/alibaba/wukong/idl/user/models/ProfileModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/user/models/ProfileModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 149
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 150
    const-string/jumbo v2, "101002"

    const-string/jumbo v3, "101002 user model is null"

    invoke-interface {p2, v2, v3}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Lidu$3;

    invoke-direct {v0, p0, p2}, Lidu$3;-><init>(Lidu;Lcom/alibaba/wukong/Callback;)V

    .line 162
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-string/jumbo v2, "[TAG] UserRpc"

    const-string/jumbo v3, "[RPC] updProfile"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-class v2, Lcom/alibaba/wukong/idl/user/client/UserIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/user/client/UserIService;

    .line 165
    .local v1, "service":Lcom/alibaba/wukong/idl/user/client/UserIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/user/client/UserIService;->updateUserProfile(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    .local p1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "101002openIds is null or empty"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Lidu$2;

    invoke-direct {v0, p0, p2}, Lidu$2;-><init>(Lidu;Lcom/alibaba/wukong/Callback;)V

    .line 81
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/util/List<Lcom/alibaba/wukong/idl/user/models/ProfileModel;>;Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;>;"
    const-string/jumbo v1, "[TAG] UserRpc"

    const-string/jumbo v2, "[RPC] getProfile by OpenIds"

    invoke-virtual {v0}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-class v1, Lcom/alibaba/wukong/idl/user/client/UserIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/user/client/UserIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/user/client/UserIService;->getUserProfilesByOpenIds(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
