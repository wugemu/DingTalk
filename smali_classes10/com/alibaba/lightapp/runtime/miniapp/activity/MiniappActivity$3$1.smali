.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3$1;
.super Ljava/lang/Object;
.source "MiniappActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;->onResult(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 342
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 343
    .local v0, "debugObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "showBtn"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;

    iget-boolean v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$3;->b:Liop;

    const-string/jumbo v2, "shouldShowConsoleBtn"

    invoke-interface {v1, v2, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 345
    return-void
.end method
