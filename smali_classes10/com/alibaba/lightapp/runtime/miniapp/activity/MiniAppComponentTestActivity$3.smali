.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$3;
.super Ljava/lang/Object;
.source "MiniAppComponentTestActivity.java"

# interfaces
.implements Lhlk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a()V
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
    .line 238
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "iMiniAppExternalNativeCallback"    # Lhll;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 246
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "I feel you~~ JS page"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-interface {p4, v0}, Lhll;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 249
    return-void
.end method
