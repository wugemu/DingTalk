.class final Lfgo$h$2;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$h;->a(ILfgm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field final synthetic b:Lfgm;

.field final synthetic c:Lfgo$h;


# direct methods
.method constructor <init>(Lfgo$h;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Lfgm;)V
    .locals 0
    .param p1, "this$0"    # Lfgo$h;

    .prologue
    .line 476
    iput-object p1, p0, Lfgo$h$2;->c:Lfgo$h;

    iput-object p2, p0, Lfgo$h$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iput-object p3, p0, Lfgo$h$2;->b:Lfgm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 482
    iget-object v2, p0, Lfgo$h$2;->c:Lfgo$h;

    .line 1241
    iget-boolean v2, v2, Lfgo$h;->f:Z

    .line 482
    if-eqz v2, :cond_1

    .line 483
    sget v1, Lezg$c;->friend_group_request_long_click:I

    .line 487
    .local v1, "itemId":I
    :goto_0
    iget-object v2, p0, Lfgo$h$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_0

    .line 488
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lfgo$h$2;->c:Lfgo$h;

    .line 2241
    iget-object v2, v2, Lfgo$h;->b:Landroid/app/Activity;

    .line 488
    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, p0, Lfgo$h$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 490
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lfgo$h$2$1;

    invoke-direct {v3, p0}, Lfgo$h$2$1;-><init>(Lfgo$h$2;)V

    .line 491
    invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 505
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 507
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return v4

    .line 485
    .end local v1    # "itemId":I
    :cond_1
    sget v1, Lezg$c;->friend_request_long_click:I

    .restart local v1    # "itemId":I
    goto :goto_0
.end method
