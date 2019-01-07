.class final Lacg$40$1$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$40$1;
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
.field final synthetic a:Lacg$40$1;


# direct methods
.method constructor <init>(Lacg$40$1;)V
    .locals 0
    .param p1, "this$1"    # Lacg$40$1;

    .prologue
    .line 3191
    iput-object p1, p0, Lacg$40$1$1;->a:Lacg$40$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 3191
    check-cast p1, Ljava/lang/Integer;

    .line 4194
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    const/4 v1, 0x1

    .line 4195
    invoke-virtual {v0, v1}, Lacs;->a(Z)V

    .line 4196
    iget-object v0, p0, Lacg$40$1$1;->a:Lacg$40$1;

    iget-object v0, v0, Lacg$40$1;->a:Lacg$40;

    iget-object v0, v0, Lacg$40;->c:Lcma;

    if-eqz v0, :cond_0

    .line 4197
    iget-object v0, p0, Lacg$40$1$1;->a:Lacg$40$1;

    iget-object v0, v0, Lacg$40$1;->a:Lacg$40;

    iget-object v0, v0, Lacg$40;->c:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3191
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3206
    const-string/jumbo v0, "ticketLogin, loginWithThirdAccessToken"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    iget-object v0, p0, Lacg$40$1$1;->a:Lacg$40$1;

    iget-object v0, v0, Lacg$40$1;->a:Lacg$40;

    iget-object v0, v0, Lacg$40;->c:Lcma;

    if-eqz v0, :cond_0

    .line 3208
    iget-object v0, p0, Lacg$40$1$1;->a:Lacg$40$1;

    iget-object v0, v0, Lacg$40$1;->a:Lacg$40;

    iget-object v0, v0, Lacg$40;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3202
    return-void
.end method
