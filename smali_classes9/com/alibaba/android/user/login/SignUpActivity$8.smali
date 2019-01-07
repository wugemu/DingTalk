.class final Lcom/alibaba/android/user/login/SignUpActivity$8;
.super Ljava/lang/Object;
.source "SignUpActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity$8;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 441
    check-cast p1, Ljava/lang/Boolean;

    .line 1444
    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkHasPwd suc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1445
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$8;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->dismissLoadingDialog()V

    .line 441
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 459
    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkHasPwd fail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x345b

    .line 461
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 463
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 455
    return-void
.end method
