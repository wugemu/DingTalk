.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    .prologue
    .line 4208
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4210
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4211
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v2, 0x3

    const-string/jumbo v3, "No image to save"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4212
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "biz.Util"

    const-string/jumbo v3, "No bitmap to save"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    :goto_0
    return-void

    .line 4214
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 4215
    .local v0, "savedPath":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4221
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$38;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    goto :goto_0
.end method
