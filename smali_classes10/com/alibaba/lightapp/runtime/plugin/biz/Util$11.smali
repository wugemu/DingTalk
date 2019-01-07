.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->timepicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$format:Ljava/lang/String;

.field final synthetic val$hourOfDay:I

.field final synthetic val$minuteOfHour:I

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;IILcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$format:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$hourOfDay:I

    iput p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$minuteOfHour:I

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 1793
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$format:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$hourOfDay:I

    iget v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;->val$minuteOfHour:I

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;

    invoke-direct {v7, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$11;)V

    .line 2115
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2116
    :cond_0
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "PikerMagician"

    const-string/jumbo v2, "showPullWidget cancel, context is not activity"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    :goto_0
    return-void

    .line 2119
    :cond_1
    invoke-static {}, Lhro;->a()V

    .line 2120
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;

    new-instance v2, Lhro$2;

    invoke-direct {v2, v6, v7}, Lhro$2;-><init>(Ljava/lang/String;Lhro$a;)V

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 2143
    invoke-virtual {v0, v5}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 2144
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    goto :goto_0
.end method
