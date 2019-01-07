.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "MiniappActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Liop;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;ZLiop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;->c:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;->a:Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;->b:Liop;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 339
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;->onResult(ZZ)V

    .line 350
    return-void
.end method
