.class final Lfrb$9$2;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$9;->response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/zim/api/ZIMResponse;

.field final synthetic b:Lfrb$9;


# direct methods
.method constructor <init>(Lfrb$9;Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V
    .locals 0
    .param p1, "this$0"    # Lfrb$9;

    .prologue
    .line 656
    iput-object p1, p0, Lfrb$9$2;->b:Lfrb$9;

    iput-object p2, p0, Lfrb$9$2;->a:Lcom/alipay/mobile/security/zim/api/ZIMResponse;

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
    .line 659
    iget-object v0, p0, Lfrb$9$2;->a:Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lfrb$9$2;->b:Lfrb$9;

    iget-object v0, v0, Lfrb$9;->b:Lcma;

    iget-object v1, p0, Lfrb$9$2;->a:Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    iget v1, v1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfrb$9$2;->a:Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    iget-object v2, v2, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lfrb$9$2;->b:Lfrb$9;

    iget-object v0, v0, Lfrb$9;->b:Lcma;

    const-string/jumbo v1, "1101"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
