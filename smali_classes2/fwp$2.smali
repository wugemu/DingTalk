.class final Lfwp$2;
.super Ljava/lang/Object;
.source "MinePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwp;->a()V
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
        "Lcom/alibaba/android/user/model/SWPersonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfwp;


# direct methods
.method constructor <init>(Lfwp;)V
    .locals 0
    .param p1, "this$0"    # Lfwp;

    .prologue
    .line 78
    iput-object p1, p0, Lfwp$2;->a:Lfwp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 78
    check-cast p1, Lcom/alibaba/android/user/model/SWPersonObject;

    .line 1081
    iget-object v0, p0, Lfwp$2;->a:Lfwp;

    .line 2021
    iget-object v0, v0, Lfwp;->a:Lfwo$b;

    .line 1081
    invoke-interface {v0, p1}, Lfwo$b;->a(Lcom/alibaba/android/user/model/SWPersonObject;)V

    .line 78
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lfwp$2;->a:Lfwp;

    .line 1021
    iget-object v0, v0, Lfwp;->a:Lfwo$b;

    .line 91
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfwo$b;->a(Lcom/alibaba/android/user/model/SWPersonObject;)V

    .line 92
    const-string/jumbo v0, "MinePresenter"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Error loadWorkRecord : "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 87
    return-void
.end method
