.class Lcom/ali/user/enterprise/login/LoginController$2;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/login/LoginController;->directLogin(Lcom/ali/user/enterprise/login/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/enterprise/login/LoginController;

.field final synthetic val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/enterprise/login/LoginController;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ali/user/enterprise/login/LoginController$2;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iput-object p2, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

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
    .line 178
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    if-eqz v2, :cond_1

    .line 179
    const/4 v0, -0x3

    .line 180
    .local v0, "code":I
    const-string/jumbo v1, "Error"

    .line 181
    .local v1, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 182
    iget v0, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 183
    iget-object v1, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$2;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-static {v2, v3, v0, v1}, Lcom/ali/user/enterprise/login/LoginController;->access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    .line 187
    .end local v0    # "code":I
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 145
    iget-object v1, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v1, Lcom/ali/user/enterprise/base/data/LoginReturnData;

    .line 146
    .local v1, "loginData":Lcom/ali/user/enterprise/base/data/LoginReturnData;
    const-string/jumbo v3, "ding"

    iget-object v4, p0, Lcom/ali/user/enterprise/login/LoginController$2;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v4, v4, Lcom/ali/user/enterprise/login/LoginController;->browserRefUrl:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/ali/user/enterprise/base/helper/LoginDataHelper;->processLoginReturnData(Lcom/ali/user/enterprise/base/data/LoginReturnData;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$2;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v4, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-static {v3, v4}, Lcom/ali/user/enterprise/login/LoginController;->access$100(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;)V

    .line 161
    .end local v1    # "loginData":Lcom/ali/user/enterprise/base/data/LoginReturnData;
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    if-eqz v3, :cond_0

    .line 152
    const/4 v0, -0x1

    .line 153
    .local v0, "code":I
    const-string/jumbo v2, "get data failed"

    .line 154
    .local v2, "message":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 155
    iget v0, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 156
    iget-object v2, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$2;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v4, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-static {v3, v4, v0, v2}, Lcom/ali/user/enterprise/login/LoginController;->access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onSystemError(Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 165
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    if-eqz v2, :cond_1

    .line 166
    const/4 v0, -0x2

    .line 167
    .local v0, "code":I
    const-string/jumbo v1, "System Error"

    .line 168
    .local v1, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 169
    iget v0, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->code:I

    .line 170
    iget-object v1, p1, Lcom/ali/user/enterprise/base/rpc/model/RpcResponse;->message:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/ali/user/enterprise/login/LoginController$2;->this$0:Lcom/ali/user/enterprise/login/LoginController;

    iget-object v3, p0, Lcom/ali/user/enterprise/login/LoginController$2;->val$loginCallback:Lcom/ali/user/enterprise/login/LoginCallback;

    invoke-static {v2, v3, v0, v1}, Lcom/ali/user/enterprise/login/LoginController;->access$000(Lcom/ali/user/enterprise/login/LoginController;Lcom/ali/user/enterprise/login/LoginCallback;ILjava/lang/String;)V

    .line 174
    .end local v0    # "code":I
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method
