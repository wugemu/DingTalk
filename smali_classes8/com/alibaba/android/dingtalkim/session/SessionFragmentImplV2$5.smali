.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 1586
    if-eqz p1, :cond_1

    .line 1587
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1588
    .local v2, "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_0
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1589
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1607
    .end local v2    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_1
    :goto_0
    return v5

    .line 1590
    .restart local v2    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1591
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1592
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lctk$b;->menu_category_item:I

    new-instance v4, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1601
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1602
    :catch_0
    move-exception v1

    .line 1603
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
