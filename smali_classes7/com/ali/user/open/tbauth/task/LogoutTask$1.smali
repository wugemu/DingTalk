.class Lcom/ali/user/open/tbauth/task/LogoutTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/task/LogoutTask;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/tbauth/task/LogoutTask;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/task/LogoutTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/task/LogoutTask$1;->a:Lcom/ali/user/open/tbauth/task/LogoutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 0

    return-void
.end method

.method public onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 0

    return-void
.end method
