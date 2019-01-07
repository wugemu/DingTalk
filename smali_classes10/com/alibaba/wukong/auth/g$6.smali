.class Lcom/alibaba/wukong/auth/g$6;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/auth/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;

.field final synthetic F:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    iput-object p2, p0, Lcom/alibaba/wukong/auth/g$6;->F:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/auth/o;)V
    .locals 4
    .param p1, "t"    # Lcom/alibaba/wukong/auth/o;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->accessToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->v:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->refreshToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->w:Ljava/lang/String;

    .line 318
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/wukong/auth/d;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v2}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/wukong/auth/d;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/auth/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p1, Lcom/alibaba/wukong/auth/o;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/wukong/auth/o;->accessToken:Ljava/lang/String;

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/wukong/auth/o;->refreshToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->U:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/wukong/auth/o;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/auth/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/g;->logout()V

    .line 324
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$6;->F:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "401"

    const-string/jumbo v2, "tmpTokenLogin"

    invoke-static {v0, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/g$6;->F:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v3, v2, v3}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;Z)V

    goto :goto_0
.end method

.method public a(Lcom/alibaba/wukong/auth/o;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/wukong/auth/o;
    .param p2, "progress"    # I

    .prologue
    .line 348
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    invoke-static {p1}, Ligb;->f(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "codeInt":I
    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->UNAUTHORIZED:Lcom/laiwang/protocol/core/Constants$Status;

    iget v1, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    if-eq v1, v0, :cond_0

    const v1, 0x1adb0

    if-ge v0, v1, :cond_0

    const v1, 0x18a8a

    if-eq v0, v1, :cond_0

    const v1, 0x18a8c

    if-ne v0, v1, :cond_1

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/g;->logout()V

    .line 338
    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$6;->F:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, p1, p2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->OFFLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    iput-object v2, v1, Lcom/alibaba/wukong/auth/d;->u:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    .line 341
    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    sget-object v2, Lcom/alibaba/wukong/auth/g$b;->L:Lcom/alibaba/wukong/auth/g$b;

    invoke-static {v1, v2}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/auth/g$b;)Lcom/alibaba/wukong/auth/g$b;

    .line 342
    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$6;->F:Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/g$6;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v2}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Lcom/alibaba/wukong/auth/o;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/g$6;->a(Lcom/alibaba/wukong/auth/o;I)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Lcom/alibaba/wukong/auth/o;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/g$6;->a(Lcom/alibaba/wukong/auth/o;)V

    return-void
.end method
