.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$2;
.super Ljava/lang/Object;
.source "MiniAppComponentTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Lhlm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 187
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "hello~~~ JS Page"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Lhlm;

    move-result-object v1

    const-string/jumbo v2, "the_one"

    const-string/jumbo v3, "component_test"

    invoke-interface {v1, v2, v3, v0}, Lhlm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 193
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string/jumbo v1, "MiniAppComponentTestActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "app instance is not ready"

    aput-object v4, v2, v3

    .line 1071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
