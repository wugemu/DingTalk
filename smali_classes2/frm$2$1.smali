.class final Lfrm$2$1;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrm$2;->onTokenSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfrm$2;


# direct methods
.method constructor <init>(Lfrm$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lfrm$2;

    .prologue
    .line 116
    iput-object p1, p0, Lfrm$2$1;->b:Lfrm$2;

    iput-object p2, p0, Lfrm$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 119
    iget-object v1, p0, Lfrm$2$1;->a:Ljava/lang/String;

    const-class v2, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    invoke-static {v1, v2}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    .line 120
    .local v0, "validRequest":Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;
    if-nez v0, :cond_2

    .line 121
    const-string/jumbo v1, "NotReceiveSmsCodePresenter.initSim.tokenListener: validRequest is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lfrm$2$1;->b:Lfrm$2;

    iget-object v1, v1, Lfrm$2;->a:Lfrm;

    .line 1032
    invoke-virtual {v1}, Lfrm;->a()Z

    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lfrm$2$1;->b:Lfrm$2;

    iget-object v1, v1, Lfrm$2;->a:Lfrm;

    .line 2032
    iget-object v1, v1, Lfrm;->b:Lfrl$b;

    .line 127
    invoke-interface {v1}, Lfrl$b;->h()V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lfrm$2$1;->b:Lfrm$2;

    iget-object v1, v1, Lfrm$2;->a:Lfrm;

    .line 3032
    invoke-virtual {v1}, Lfrm;->a()Z

    move-result v1

    .line 130
    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lfrm$2$1;->b:Lfrm$2;

    iget-object v1, v1, Lfrm$2;->a:Lfrm;

    .line 4032
    iget-object v1, v1, Lfrm;->b:Lfrl$b;

    .line 133
    invoke-interface {v1, v0}, Lfrl$b;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;)V

    goto :goto_0
.end method
