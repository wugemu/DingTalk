.class Lcom/ali/user/enterprise/login/LoginController$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/login/LoginController;->multiLogin(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/enterprise/login/LoginController;

.field final synthetic val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/enterprise/login/LoginController;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ali/user/enterprise/login/LoginController$1;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iput-object p2, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    if-eqz v2, :cond_1

    .line 127
    const/4 v0, -0x3

    .line 128
    .local v0, "code":I
    const-string/jumbo v1, "Error"

    .line 129
    .local v1, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 130
    iget v0, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 131
    iget-object v1, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$1;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-static {v2, v3, v0, v1}, Lcom/ali/user/enterprise/login/LoginController;->access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    .line 135
    .end local v0    # "code":I
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    if-eqz p1, :cond_4

    iget-object v6, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 68
    iget-object v3, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v3, Lcom/ali/user/enterprise/base/data/LoginReturnData;

    .line 69
    .local v3, "loginData":Lcom/ali/user/enterprise/base/data/LoginReturnData;
    iget-object v6, v3, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 70
    const-string/jumbo v6, "list"

    iget-object v7, v3, Lcom/ali/user/enterprise/base/data/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v8, "resultType"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    const/4 v5, 0x0

    .line 74
    .local v5, "userListReturnData":Lcom/ali/user/enterprise/base/data/UserListReturnData;
    :try_start_0
    iget-object v6, v3, Lcom/ali/user/enterprise/base/data/LoginReturnData;->data:Ljava/lang/String;

    const-class v7, Lcom/ali/user/enterprise/base/data/UserListReturnData;

    invoke-static {v6, v7}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/ali/user/enterprise/base/data/UserListReturnData;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iget-object v6, v5, Lcom/ali/user/enterprise/base/data/UserListReturnData;->userList:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 79
    iget-object v6, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    iget-object v7, v5, Lcom/ali/user/enterprise/base/data/UserListReturnData;->userList:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/ali/user/enterprise/login/MultiLoginCallback;->onMultiList(Ljava/util/List;)V

    .line 109
    .end local v3    # "loginData":Lcom/ali/user/enterprise/base/data/LoginReturnData;
    .end local v5    # "userListReturnData":Lcom/ali/user/enterprise/base/data/UserListReturnData;
    :cond_0
    :goto_1
    return-void

    .line 75
    .restart local v3    # "loginData":Lcom/ali/user/enterprise/base/data/LoginReturnData;
    .restart local v5    # "userListReturnData":Lcom/ali/user/enterprise/base/data/UserListReturnData;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x4

    .line 82
    .local v1, "code":I
    const-string/jumbo v4, "parse data failed"

    .line 83
    .local v4, "message":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 84
    iget v1, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 85
    iget-object v4, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 87
    :cond_2
    iget-object v6, p0, Lcom/ali/user/enterprise/login/LoginController$1;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v7, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-static {v6, v7, v1, v4}, Lcom/ali/user/enterprise/login/LoginController;->access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v1    # "code":I
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "userListReturnData":Lcom/ali/user/enterprise/base/data/UserListReturnData;
    :cond_3
    sget-object v6, Lcom/ali/user/enterprise/Login;->session:Lcom/ali/user/enterprise/base/session/ISession;

    invoke-interface {v6}, Lcom/ali/user/enterprise/base/session/ISession;->clearCookieManager()V

    .line 92
    const-string/jumbo v6, "ding"

    iget-object v7, p0, Lcom/ali/user/enterprise/login/LoginController$1;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v7, v7, Lcom/ali/user/enterprise/login/LoginController;->browserRefUrl:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper;->processLoginReturnData(Lcom/ali/user/enterprise/base/data/LoginReturnData;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    iget-object v6, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    if-eqz v6, :cond_0

    .line 94
    iget-object v6, p0, Lcom/ali/user/enterprise/login/LoginController$1;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v7, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-static {v6, v7}, Lcom/ali/user/enterprise/login/LoginController;->access$100(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;)V

    goto :goto_1

    .line 99
    .end local v3    # "loginData":Lcom/ali/user/enterprise/base/data/LoginReturnData;
    :cond_4
    iget-object v6, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    if-eqz v6, :cond_0

    .line 100
    const/4 v1, -0x1

    .line 101
    .restart local v1    # "code":I
    const-string/jumbo v4, "get data failed"

    .line 102
    .restart local v4    # "message":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 103
    iget v1, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 104
    iget-object v4, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 106
    :cond_5
    iget-object v6, p0, Lcom/ali/user/enterprise/login/LoginController$1;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v7, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-static {v6, v7, v1, v4}, Lcom/ali/user/enterprise/login/LoginController;->access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public onSystemError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 113
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    if-eqz v2, :cond_1

    .line 114
    const/4 v0, -0x2

    .line 115
    .local v0, "code":I
    const-string/jumbo v1, "System Error"

    .line 116
    .local v1, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 117
    iget v0, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 118
    iget-object v1, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$1;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$1;->val$multiLoginCallback:Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-static {v2, v3, v0, v1}, Lcom/ali/user/enterprise/login/LoginController;->access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    .line 122
    .end local v0    # "code":I
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method
