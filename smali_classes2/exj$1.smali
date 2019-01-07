.class final Lexj$1;
.super Ljava/lang/Object;
.source "VideoApmtOperationPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexj;->a(Levb;)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;",
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
    .line 50
    iput-object p1, p0, Lexj$1;->a:Lexj;

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
    .line 50
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;

    .line 1053
    if-nez p1, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexj;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Load video conf success, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const/16 v0, 0xc8

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1059
    invoke-static {p1}, Leuz;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;)Leuz;

    move-result-object v0

    .line 1066
    :goto_1
    iget-object v1, p0, Lexj$1;->a:Lexj;

    iget-object v1, v1, Lexj;->a:Lexf$b;

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p0, Lexj$1;->a:Lexj;

    iget-object v1, v1, Lexj;->a:Lexf$b;

    invoke-interface {v1, v0}, Lexf$b;->a(Leuz;)V

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v0, p0, Lexj$1;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    if-eqz v0, :cond_3

    .line 1062
    iget-object v0, p0, Lexj$1;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->cause:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lexf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
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
    .line 73
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexj;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Load video conf failed, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lexj$1;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lexj$1;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    invoke-interface {v0, p1, p2}, Lexf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lexj$1;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lexf$b;->a(Leuz;)V

    .line 78
    :cond_0
    return-void
.end method
