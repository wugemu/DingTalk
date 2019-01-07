.class final Lcbm$1;
.super Ljava/lang/Object;
.source "WalletPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbm;->a()V
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
        "Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbm;


# direct methods
.method constructor <init>(Lcbm;)V
    .locals 0
    .param p1, "this$0"    # Lcbm;

    .prologue
    .line 49
    iput-object p1, p0, Lcbm$1;->a:Lcbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    .line 3052
    iget-object v0, p0, Lcbm$1;->a:Lcbm;

    .line 4021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 3052
    invoke-interface {v0}, Lcbk$b;->H_()V

    .line 3053
    iget-object v0, p0, Lcbm$1;->a:Lcbm;

    .line 5021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 3053
    invoke-interface {v0, p1}, Lcbk$b;->a(Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;)V

    .line 49
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 63
    iget-object v0, p0, Lcbm$1;->a:Lcbm;

    .line 1021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 63
    invoke-interface {v0}, Lcbk$b;->H_()V

    .line 64
    iget-object v0, p0, Lcbm$1;->a:Lcbm;

    .line 2021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 64
    invoke-interface {v0, v5}, Lcbk$b;->a(Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;)V

    .line 65
    iget-object v0, p0, Lcbm$1;->a:Lcbm;

    .line 3021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 65
    invoke-interface {v0, p1, p2}, Lcbk$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryWalletInfo failed, code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 67
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 59
    return-void
.end method
