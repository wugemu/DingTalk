.class Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->setData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$hint:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->val$hint:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->val$hint:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;

    const/4 v1, 0x3

    const-string/jumbo v2, "context is null"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/ClipboardData;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
