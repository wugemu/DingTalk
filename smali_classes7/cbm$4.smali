.class final Lcbm$4;
.super Ljava/lang/Object;
.source "WalletPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


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
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Boolean;",
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
    .line 156
    iput-object p1, p0, Lcbm$4;->a:Lcbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcbm$4;->a:Lcbm;

    .line 1021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 167
    invoke-interface {v0}, Lcbk$b;->H_()V

    .line 168
    iget-object v0, p0, Lcbm$4;->a:Lcbm;

    .line 2021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 168
    invoke-interface {v0, p1, p2}, Lcbk$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "unbindAlipay0 failed, code="

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

    .line 171
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 156
    check-cast p1, Ljava/lang/Boolean;

    .line 2159
    iget-object v0, p0, Lcbm$4;->a:Lcbm;

    .line 3021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 2159
    invoke-interface {v0}, Lcbk$b;->H_()V

    .line 3022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2160
    if-eqz v0, :cond_0

    .line 2161
    iget-object v0, p0, Lcbm$4;->a:Lcbm;

    .line 4021
    iget-object v0, v0, Lcbm;->a:Lcbk$b;

    .line 2161
    invoke-interface {v0}, Lcbk$b;->e()V

    .line 156
    :cond_0
    return-void
.end method
