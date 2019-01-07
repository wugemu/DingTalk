.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->shareBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4088
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4091
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 4092
    .local v1, "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$bitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v4, " "

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Z)I

    move-result v0

    .line 4093
    .local v0, "share":I
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "biz.Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Share result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    if-nez v0, :cond_0

    .line 4095
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v3, 0x4

    const-string/jumbo v4, "No app to share"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4101
    :goto_0
    return-void

    .line 4096
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 4097
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v3, 0x5

    const-string/jumbo v4, "Not support share"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 4099
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$36;->val$callbackId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V

    goto :goto_0
.end method
