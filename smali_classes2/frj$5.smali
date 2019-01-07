.class final Lfrj$5;
.super Ljava/lang/Object;
.source "FaceLoginPresenter.java"

# interfaces
.implements Lcom/alipay/mobile/security/zim/api/ZIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrj;->b(ILjava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcma;

.field final synthetic e:Lfrj;


# direct methods
.method constructor <init>(Lfrj;Lcom/alipay/mobile/security/zim/api/ZIMFacade;ILjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfrj;

    .prologue
    .line 240
    iput-object p1, p0, Lfrj$5;->e:Lfrj;

    iput-object p2, p0, Lfrj$5;->a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    iput p3, p0, Lfrj$5;->b:I

    iput-object p4, p0, Lfrj$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lfrj$5;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 243
    iget-object v0, p0, Lfrj$5;->a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lfrj$5;->a:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->destroy()V

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    .line 248
    const-string/jumbo v0, "FaceLoginPresenter"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "code:"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget v3, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    .line 249
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->reason:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 248
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_1
    if-eqz p1, :cond_4

    const/16 v0, 0x3e8

    iget v1, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    if-ne v0, v1, :cond_4

    .line 254
    iget-object v0, p0, Lfrj$5;->e:Lfrj;

    iget v1, p0, Lfrj$5;->b:I

    iget-object v2, p0, Lfrj$5;->c:Ljava/lang/String;

    iget-object v3, p0, Lfrj$5;->d:Lcma;

    .line 1264
    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 1266
    :cond_2
    invoke-interface {v3, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 259
    :goto_0
    return-void

    .line 1269
    :cond_3
    const-string/jumbo v4, "FaceLoginPresenter"

    const-string/jumbo v5, "checkFaceId"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    new-instance v4, Lfrj$6;

    invoke-direct {v4, v0, v3, v2}, Lfrj$6;-><init>(Lfrj;Lcma;Ljava/lang/String;)V

    .line 1289
    const-class v3, Lcma;

    iget-object v0, v0, Lfrj;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v4, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1290
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v3

    .line 1340
    new-instance v4, Lfas$5;

    invoke-direct {v4, v3, v0}, Lfas$5;-><init>(Lfas;Lcma;)V

    .line 1356
    iget-object v0, v3, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-interface {v0, v2, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->checkFaceId(Ljava/lang/String;ILiyv;)V

    goto :goto_0

    .line 257
    :cond_4
    iget-object v0, p0, Lfrj$5;->d:Lcma;

    const-string/jumbo v1, "1101"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
