.class final Lacg$39$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg$39;->run()V
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
        "Labz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lacg$39;


# direct methods
.method constructor <init>(Lacg$39;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacg$39;

    .prologue
    .line 3052
    iput-object p1, p0, Lacg$39$1;->b:Lacg$39;

    iput-object p2, p0, Lacg$39$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3052
    check-cast p1, Labz;

    .line 4055
    if-eqz p1, :cond_0

    iget-object v0, p1, Labz;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 4057
    iget-object v1, p0, Lacg$39$1;->a:Ljava/lang/String;

    iget-object v2, p1, Labz;->a:Ljava/lang/String;

    new-instance v3, Lacg$39$1$1;

    invoke-direct {v3, p0}, Lacg$39$1$1;-><init>(Lacg$39$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    :goto_0
    return-void

    .line 4133
    :cond_0
    if-eqz p1, :cond_1

    .line 4134
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "loginModel ticket: "

    aput-object v1, v0, v4

    iget-object v1, p1, Labz;->a:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, ", loginMode: "

    aput-object v1, v0, v6

    iget-object v1, p1, Labz;->c:Ljava/lang/Integer;

    .line 4135
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v2, ", "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "server error"

    aput-object v2, v0, v1

    .line 4134
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4136
    const-string/jumbo v1, "MailNavigator"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4137
    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2, v0, v7}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    :goto_1
    iget-object v0, p0, Lacg$39$1;->b:Lacg$39;

    iget-object v0, v0, Lacg$39;->a:Lgqq;

    const-string/jumbo v1, "2018"

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "2018"

    .line 4144
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ":"

    aput-object v3, v2, v5

    const-string/jumbo v3, "server error"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4143
    invoke-virtual {v0, v1, v2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4139
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "loginModel is null, "

    aput-object v1, v0, v4

    const-string/jumbo v1, "server error"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4140
    const-string/jumbo v1, "MailNavigator"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2, v0, v7}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3155
    const-string/jumbo v0, "getDingTalkMailTicket"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    iget-object v0, p0, Lacg$39$1;->b:Lacg$39;

    iget-object v0, v0, Lacg$39;->a:Lgqq;

    invoke-virtual {v0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 3151
    return-void
.end method
