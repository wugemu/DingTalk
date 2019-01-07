.class Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$1;
.super Ljava/lang/Object;
.source "DateTimePickDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->dateTimePicKDialog()Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;)Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;)Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$OnDateAndTimeChooseListener;->onCancel()V

    .line 172
    :cond_0
    return-void
.end method
