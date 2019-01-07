.class Lcom/alibaba/wukong/auth/g$9;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g;->a(Ljava/lang/String;ZLcom/alibaba/wukong/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;

.field final synthetic H:Z

.field final synthetic I:Z

.field final synthetic J:Lhzs$a;

.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/Callback;ZZLhzs$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    iput-object p2, p0, Lcom/alibaba/wukong/auth/g$9;->val$callback:Lcom/alibaba/wukong/Callback;

    iput-boolean p3, p0, Lcom/alibaba/wukong/auth/g$9;->H:Z

    iput-boolean p4, p0, Lcom/alibaba/wukong/auth/g$9;->I:Z

    iput-object p5, p0, Lcom/alibaba/wukong/auth/g$9;->J:Lhzs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Lcom/laiwang/protocol/core/Response;)V
    .locals 8
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v4

    .line 441
    .local v4, "status":Lcom/laiwang/protocol/core/Constants$Status;
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v5, p1}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;Lcom/laiwang/protocol/core/Response;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 442
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v5}, Lcom/alibaba/wukong/auth/g;->logout()V

    .line 443
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->val$callback:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v6, "140001"

    const-string/jumbo v7, "LOGIN_CONFLICT_ERR"

    invoke-static {v5, v6, v7}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_0
    return-void

    .line 447
    :cond_0
    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v4, v5, :cond_2

    .line 449
    const-string/jumbo v5, "[TAG] Auth login"

    const-string/jumbo v6, "[Auth] reg succ"

    const-string/jumbo v7, "auth"

    invoke-static {v5, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v5

    sget-object v6, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->ONLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    iput-object v6, v5, Lcom/alibaba/wukong/auth/d;->u:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    .line 451
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    sget-object v6, Lcom/alibaba/wukong/auth/g$b;->L:Lcom/alibaba/wukong/auth/g$b;

    invoke-static {v5, v6}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/auth/g$b;)Lcom/alibaba/wukong/auth/g$b;

    .line 452
    iget-boolean v5, p0, Lcom/alibaba/wukong/auth/g$9;->H:Z

    if-eqz v5, :cond_1

    .line 453
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "openId"

    iget-object v6, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v6}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/wukong/auth/d;->q:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 455
    const-string/jumbo v5, "domain"

    iget-object v6, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v6}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/wukong/auth/d;->r:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    const-string/jumbo v6, "com.alibaba.wukong.auth.LOGIN"

    invoke-virtual {v5, v6, v2}, Lcom/alibaba/wukong/auth/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 458
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->val$callback:Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v6}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 459
    const-string/jumbo v5, "Login"

    invoke-static {v5}, Lhzs;->b(Ljava/lang/String;)V

    .line 486
    :goto_1
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->J:Lhzs$a;

    invoke-virtual {v5}, Lhzs$a;->a()V

    goto :goto_0

    .line 461
    :cond_2
    const-string/jumbo v5, "[TAG] Auth login"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[Auth] reg fail "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "auth"

    invoke-static {v5, v6, v7}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v3

    .line 463
    .local v3, "payload":[B
    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->UNAUTHORIZED:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v4, v5, :cond_3

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reg failed offline, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    sget-object v6, Lcom/alibaba/wukong/auth/g$b;->L:Lcom/alibaba/wukong/auth/g$b;

    invoke-static {v5, v6}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/auth/g$b;)Lcom/alibaba/wukong/auth/g$b;

    .line 466
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v5

    sget-object v6, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->OFFLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    iput-object v6, v5, Lcom/alibaba/wukong/auth/d;->u:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    .line 467
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->val$callback:Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v6}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 468
    const-string/jumbo v5, "Login"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reg failed, refresh:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alibaba/wukong/auth/g$9;->I:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 471
    iget v5, v4, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "code":Ljava/lang/String;
    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 473
    .local v1, "errDesc":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v5}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v5

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/alibaba/wukong/auth/d;->v:Ljava/lang/String;

    .line 474
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/auth/j;->k()V

    .line 475
    iget-boolean v5, p0, Lcom/alibaba/wukong/auth/g$9;->I:Z

    if-eqz v5, :cond_5

    .line 476
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-static {v5, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 472
    .end local v1    # "errDesc":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "UNKNOWN_ERR"

    goto :goto_2

    .line 479
    .restart local v1    # "errDesc":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reg failed, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->B:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v5}, Lcom/alibaba/wukong/auth/g;->logout()V

    .line 481
    iget-object v5, p0, Lcom/alibaba/wukong/auth/g$9;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-static {v5, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string/jumbo v5, "Login"

    const-string/jumbo v6, ""

    invoke-static {v5, v0, v6}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 436
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/g$9;->on(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
