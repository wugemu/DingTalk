.class final Lfrb$5;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcom/ali/user/open/core/callback/InitResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb;->a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcma;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lfrb$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Lfrb$5;->b:Ljava/lang/String;

    iput-object p3, p0, Lfrb$5;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lfrb$5;->c:Lcma;

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Lfrb$5$2;

    invoke-direct {v0, p0, p1, p2}, Lfrb$5$2;-><init>(Lfrb$5;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 518
    :cond_0
    return-void
.end method

.method public final onSuccess()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 480
    const-class v1, Lcom/ali/user/open/ucc/UccService;

    invoke-static {v1}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/ucc/UccService;

    .line 481
    .local v0, "uccService":Lcom/ali/user/open/ucc/UccService;
    iget-object v1, p0, Lfrb$5;->a:Landroid/app/Activity;

    iget-object v2, p0, Lfrb$5;->b:Ljava/lang/String;

    const-string/jumbo v3, "taobao"

    new-instance v4, Lfrb$5$1;

    invoke-direct {v4, p0}, Lfrb$5$1;-><init>(Lfrb$5;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ali/user/open/ucc/UccService;->bind(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 506
    return-void
.end method
