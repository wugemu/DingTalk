.class final Lfrb$9;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcom/alipay/mobile/security/zim/api/ZIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb;->c(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/zim/api/ZIMFacade;Lcma;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lfrb$9;->a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    iput-object p2, p0, Lfrb$9;->b:Lcma;

    iput-object p3, p0, Lfrb$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 638
    iget-object v0, p0, Lfrb$9;->a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lfrb$9;->a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->destroy()V

    .line 642
    :cond_0
    if-eqz p1, :cond_1

    .line 643
    const-string/jumbo v0, "LoginUtils"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "code:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->reason:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x3e8

    iget v1, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    if-ne v0, v1, :cond_2

    .line 648
    new-instance v0, Lfrb$9$1;

    invoke-direct {v0, p0}, Lfrb$9$1;-><init>(Lfrb$9;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 667
    :goto_0
    return-void

    .line 656
    :cond_2
    new-instance v0, Lfrb$9$2;

    invoke-direct {v0, p0, p1}, Lfrb$9$2;-><init>(Lfrb$9;Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
