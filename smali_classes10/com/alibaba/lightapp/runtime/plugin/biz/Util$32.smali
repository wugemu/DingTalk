.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->recordVideoToUpload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$maxDurationValue:I

.field final synthetic val$minDurationValue:I

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;IILcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 3831
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->val$maxDurationValue:I

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->val$minDurationValue:I

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 3835
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3837
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$11100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->val$maxDurationValue:I

    mul-int/lit16 v3, v3, 0x3e8

    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->val$minDurationValue:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;IIII)V

    .line 3843
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "Video record req "

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .line 3844
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3843
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    :goto_0
    return-void

    .line 3846
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const-string/jumbo v1, "video record not support"

    invoke-static {v2, v1}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$32;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$11200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
