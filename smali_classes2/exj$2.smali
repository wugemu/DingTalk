.class final Lexj$2;
.super Ljava/lang/Object;
.source "VideoApmtOperationPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexj;->a(Leva;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexj;


# direct methods
.method constructor <init>(Lexj;)V
    .locals 0
    .param p1, "this$0"    # Lexj;

    .prologue
    .line 93
    iput-object p1, p0, Lexj$2;->a:Lexj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 93
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;

    .line 1096
    if-nez p1, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-object v0, p0, Lexj$2;->a:Lexj;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->conferenceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lexj;->a(Lexj;Ljava/lang/String;)Ljava/lang/String;

    .line 1100
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexj;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "create conf reservation succ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lexj$2;->a:Lexj;

    invoke-static {v3}, Lexj;->a(Lexj;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lexj$2;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lexj$2;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lexf$b;->a(Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 108
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexj;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "create conf reservation"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lexj$2;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lexj$2;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    invoke-interface {v0, p1, p2}, Lexf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lexj$2;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lexf$b;->a(Z)V

    .line 113
    :cond_0
    return-void
.end method
