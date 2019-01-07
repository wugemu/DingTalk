.class Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;
.super Ljava/lang/Object;
.source "CommonWeexActivity.java"

# interfaces
.implements Lhrs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->registerKeyboardEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardEvent(ZI)V
    .locals 2
    .param p1, "isShowKeyboard"    # Z
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 128
    if-nez p2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    const-string/jumbo v1, "KeyboardWillHide"

    invoke-static {v0, v1, p2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sendKeyboardEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    const-string/jumbo v1, "KeyboardDidHide"

    invoke-static {v0, v1, p2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sendKeyboardEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    const-string/jumbo v1, "KeyboardWillChangeFrame"

    invoke-static {v0, v1, p2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sendKeyboardEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    const-string/jumbo v1, "KeyboardDidChangeFrame"

    invoke-static {v0, v1, p2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sendKeyboardEvent(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    const-string/jumbo v1, "KeyboardWillShow"

    invoke-static {v0, v1, p2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sendKeyboardEvent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    const-string/jumbo v1, "KeyboardDidShow"

    invoke-static {v0, v1, p2}, Lcom/alibaba/icbu/iwb/element/module/IWBEventModule;->sendKeyboardEvent(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
