.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;

.field final synthetic val$builder:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;->val$builder:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 978
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "itemName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4;->val$args:Lorg/json/JSONObject;

    invoke-static {v1, v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;->val$builder:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$4$1;->val$builder:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 983
    :cond_0
    return-void
.end method
