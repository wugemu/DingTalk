.class final Lfrm$3;
.super Lbzd;
.source "NotReceiveSmsCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrm;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrm;


# direct methods
.method constructor <init>(Lfrm;)V
    .locals 0
    .param p1, "this$0"    # Lfrm;

    .prologue
    .line 164
    iput-object p1, p0, Lfrm$3;->a:Lfrm;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lfrm$3;->a:Lfrm;

    iget-object v1, p0, Lfrm$3;->a:Lfrm;

    .line 1032
    iget-object v1, v1, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 167
    invoke-virtual {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->init()Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

    move-result-object v1

    .line 2032
    iput-object v1, v0, Lfrm;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

    .line 168
    return-void
.end method

.method public final onDenied()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 172
    const-string/jumbo v0, "NotReceiveSmsCodePresenter.initSim.permission.onDenied"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public final onNeverAsk()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 177
    const-string/jumbo v0, "NotReceiveSmsCodePresenter.initSim.permission.onNeverAsk"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method
