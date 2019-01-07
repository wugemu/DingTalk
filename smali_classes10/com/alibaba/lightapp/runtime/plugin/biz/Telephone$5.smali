.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createCallMenu(ZZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

.field final synthetic val$isSupportBiz:Z

.field final synthetic val$menus:[Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$result:Lorg/json/JSONObject;

.field final synthetic val$telBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;[Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$menus:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$number:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$isSupportBiz:Z

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$telBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$result:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;

    move-result-object v1

    .line 308
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "context is not activity"

    .line 310
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;->val$menus:[Ljava/lang/String;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 344
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
