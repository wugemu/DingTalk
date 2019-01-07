.class Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->ratingAndFeedback(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

.field final synthetic val$args:Lorg/json/JSONObject;

.field final synthetic val$curTime:J

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lorg/json/JSONObject;JLcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;->val$args:Lorg/json/JSONObject;

    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;->val$curTime:J

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 569
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;-><init>(Landroid/content/Context;)V

    .line 570
    .local v0, "dialogUtils":Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;->val$args:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;->val$curTime:J

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Util$6;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->doRatingAndFeedback(Lorg/json/JSONObject;JLcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 582
    return-void
.end method
