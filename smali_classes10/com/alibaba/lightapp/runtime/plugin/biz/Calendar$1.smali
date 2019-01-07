.class Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->datePicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

.field final synthetic val$day:I

.field final synthetic val$month:I

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lcom/alibaba/lightapp/runtime/ActionRequest;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$year:I

    iput p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$month:I

    iput p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$day:I

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
    .line 426
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;)Landroid/content/Context;

    move-result-object v0

    .line 427
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;

    const/4 v3, 0x3

    const-string/jumbo v4, "system err context is not activity"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void

    .line 431
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    iget v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$year:I

    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$month:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;->val$day:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;-><init>(Landroid/content/Context;III)V

    .line 432
    .local v1, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Calendar$1;)V

    .line 1299
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;

    .line 454
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->show()V

    goto :goto_0
.end method
