.class final Lcbm$3;
.super Ljava/lang/Object;
.source "WalletPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcbm;
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
        "Ljava/lang/String;",
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
    .line 129
    iput-object p1, p0, Lcbm$3;->a:Lcbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    check-cast p1, Ljava/lang/String;

    .line 2132
    iget-object v0, p0, Lcbm$3;->a:Lcbm;

    .line 3021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 2132
    invoke-interface {v0}, Lcbk$b;->H_()V

    .line 2133
    iget-object v0, p0, Lcbm$3;->a:Lcbm;

    .line 4021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 2133
    invoke-interface {v0, p1}, Lcbk$b;->a(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lcbm$3;->a:Lcbm;

    .line 1021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 143
    invoke-interface {v0}, Lcbk$b;->H_()V

    .line 144
    iget-object v0, p0, Lcbm$3;->a:Lcbm;

    .line 2021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 144
    invoke-interface {v0, p1, p2}, Lcbk$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getAuthUrl failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 139
    return-void
.end method
