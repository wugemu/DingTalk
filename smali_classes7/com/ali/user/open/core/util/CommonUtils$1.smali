.class final Lcom/ali/user/open/core/util/CommonUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/core/util/CommonUtils;->onFailure(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/callback/FailureCallback;

.field final synthetic b:Lcom/ali/user/open/core/model/ResultCode;


# direct methods
.method constructor <init>(Lcom/ali/user/open/core/callback/FailureCallback;Lcom/ali/user/open/core/model/ResultCode;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/core/util/CommonUtils$1;->a:Lcom/ali/user/open/core/callback/FailureCallback;

    iput-object p2, p0, Lcom/ali/user/open/core/util/CommonUtils$1;->b:Lcom/ali/user/open/core/model/ResultCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    iget-object v0, p0, Lcom/ali/user/open/core/util/CommonUtils$1;->a:Lcom/ali/user/open/core/callback/FailureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/core/util/CommonUtils$1;->a:Lcom/ali/user/open/core/callback/FailureCallback;

    iget-object v1, p0, Lcom/ali/user/open/core/util/CommonUtils$1;->b:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    iget-object v2, p0, Lcom/ali/user/open/core/util/CommonUtils$1;->b:Lcom/ali/user/open/core/model/ResultCode;

    iget-object v2, v2, Lcom/ali/user/open/core/model/ResultCode;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/callback/FailureCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
