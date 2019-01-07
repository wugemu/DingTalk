.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;
.super Ljava/lang/Object;
.source "CommonWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;->b:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;->a:Lorg/json/JSONObject;

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
    .line 413
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;->b:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->getInstance(Landroid/content/Context;)Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;->a:Lorg/json/JSONObject;

    new-instance v2, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popAlertDialog(Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 424
    return-void
.end method
