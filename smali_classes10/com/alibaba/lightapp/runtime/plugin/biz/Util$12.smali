.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->datetimeAndMonthPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$format:Ljava/lang/String;

.field final synthetic val$interval:I

.field final synthetic val$isOnlyChooseMonth:Z

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$format:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$value:Ljava/lang/String;

    iput p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$interval:I

    iput-boolean p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$isOnlyChooseMonth:Z

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
    .line 1838
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$3400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v1

    .line 1839
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 1840
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v3, 0x3

    const-string/jumbo v4, "context is not activity"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1866
    :goto_0
    return-void

    .line 1843
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$format:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$value:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$interval:I

    .line 1844
    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->fromValue(I)Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;->val$isOnlyChooseMonth:Z

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;Z)V

    .line 1845
    .local v0, "dateTimePicKDialog":Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$12;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->setOnDateAndTimeChooseListener(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;)V

    .line 1865
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->dateTimePicKDialog()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
