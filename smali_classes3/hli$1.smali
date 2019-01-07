.class final Lhli$1;
.super Ljava/lang/Object;
.source "UICLogin.java"

# interfaces
.implements Lcom/ali/user/enterprise/login/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhli;->a(Lhli$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhli$a;

.field final synthetic b:Lhli;


# direct methods
.method constructor <init>(Lhli;Lhli$a;)V
    .locals 0
    .param p1, "this$0"    # Lhli;

    .prologue
    .line 74
    iput-object p1, p0, Lhli$1;->b:Lhli;

    iput-object p2, p0, Lhli$1;->a:Lhli$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lhli$1;->a:Lhli$a;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lhli$1;->a:Lhli$a;

    invoke-interface {v0}, Lhli$a;->b()V

    .line 93
    :cond_0
    const-string/jumbo v0, "login.UICLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dingLoginFail,code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "login fail"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "message="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public final onSuccess(Lcom/ali/user/enterprise/base/session/ISession;)V
    .locals 8
    .param p1, "iSession"    # Lcom/ali/user/enterprise/base/session/ISession;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    iget-object v0, p0, Lhli$1;->a:Lhli$a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lhli$1;->a:Lhli$a;

    invoke-interface {v0}, Lhli$a;->a()V

    .line 81
    :cond_0
    iget-object v0, p0, Lhli$1;->b:Lhli;

    .line 1025
    iget-object v0, v0, Lhli;->a:Lhlj;

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lhlj;->a:J

    .line 1035
    const-string/jumbo v1, "SP_KEY_UIC_REFRESH_TIME"

    iget-wide v2, v0, Lhlj;->a:J

    invoke-static {v1, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1036
    const-string/jumbo v1, "refreshController mark"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, v0, Lhlj;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-string/jumbo v0, "login.UICLogin"

    const-string/jumbo v1, "dingLoginSuccess"

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "login success"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "sid"

    aput-object v0, v2, v6

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ali/user/enterprise/base/session/ISession;->getSid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void

    .line 84
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_0
.end method
