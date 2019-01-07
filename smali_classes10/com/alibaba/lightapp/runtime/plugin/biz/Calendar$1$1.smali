.class Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(III)V
    .locals 6
    .param p1, "yearVal"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0xa

    .line 435
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 437
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    if-ge p2, v5, :cond_0

    .line 440
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    if-ge p3, v5, :cond_1

    .line 444
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

    const/4 v4, 0x3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
