.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;
.super Ljava/lang/Object;
.source "MiniappSharePlugin.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lhfy;->a(Ljava/lang/String;)Z

    .line 306
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 278
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    check-cast p1, Lifx;

    .line 1282
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->b()V

    .line 1284
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;)Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1290
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)V

    .line 1291
    if-eqz p1, :cond_3

    .line 2026
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 1293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1294
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->c:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    .line 1295
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->c:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;->f:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1299
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lhfy;->a(Ljava/lang/String;)Z

    .line 274
    return-void
.end method
