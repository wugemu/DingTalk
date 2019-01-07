.class final Lacg$39$1$1$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$39$1$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacg$39$1$1;


# direct methods
.method constructor <init>(Lacg$39$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lacg$39$1$1;

    .prologue
    .line 3062
    iput-object p1, p0, Lacg$39$1$1$1;->a:Lacg$39$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 3062
    .line 4066
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    const/4 v1, 0x1

    .line 4067
    invoke-virtual {v0, v1}, Lacs;->a(Z)V

    .line 4068
    iget-object v0, p0, Lacg$39$1$1$1;->a:Lacg$39$1$1;

    iget-object v0, v0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v0, v0, Lacg$39$1;->b:Lacg$39;

    iget-object v0, v0, Lacg$39;->a:Lgqq;

    iget-boolean v0, v0, Lgqq;->s:Z

    if-eqz v0, :cond_0

    .line 4069
    iget-object v0, p0, Lacg$39$1$1$1;->a:Lacg$39$1$1;

    iget-object v0, v0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v0, v0, Lacg$39$1;->b:Lacg$39;

    iget-object v0, v0, Lacg$39;->a:Lgqq;

    const-string/jumbo v1, "2015"

    const-string/jumbo v2, "duplicate click"

    invoke-virtual {v0, v1, v2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 4072
    :cond_0
    iget-object v0, p0, Lacg$39$1$1$1;->a:Lacg$39$1$1;

    iget-object v0, v0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v0, v0, Lacg$39$1;->b:Lacg$39;

    iget-object v0, v0, Lacg$39;->a:Lgqq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgqq;->a(Ljava/lang/Void;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3081
    const-string/jumbo v0, "ticketLogin, loginWithThirdAccessToken"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    iget-object v0, p0, Lacg$39$1$1$1;->a:Lacg$39$1$1;

    iget-object v0, v0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v0, v0, Lacg$39$1;->b:Lacg$39;

    iget-object v0, v0, Lacg$39;->a:Lgqq;

    if-eqz v0, :cond_0

    .line 3083
    iget-object v0, p0, Lacg$39$1$1$1;->a:Lacg$39$1$1;

    iget-object v0, v0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v0, v0, Lacg$39$1;->b:Lacg$39;

    iget-object v0, v0, Lacg$39;->a:Lgqq;

    invoke-virtual {v0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3077
    return-void
.end method
