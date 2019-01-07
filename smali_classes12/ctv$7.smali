.class final Lctv$7;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lctv;


# direct methods
.method constructor <init>(Lctv;)V
    .locals 0
    .param p1, "this$0"    # Lctv;

    .prologue
    .line 223
    iput-object p1, p0, Lctv$7;->a:Lctv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 226
    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->d:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->d:Landroid/app/Activity;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->d:Landroid/app/Activity;

    check-cast v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U()Ldru;

    move-result-object v1

    .line 228
    .local v1, "manager":Ldru;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->A:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v3}, Ldru;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v4

    .line 230
    .local v2, "selected":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1119
    iget-object v3, v1, Ldru;->d:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 231
    const/16 v6, 0x64

    if-lt v3, v6, :cond_2

    .line 232
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->d:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->d:Landroid/app/Activity;

    sget v6, Lctk$i;->dt_im_chat_select_msg_limit:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "100"

    .line 234
    aput-object v7, v4, v5

    .line 233
    invoke-virtual {v3, v6, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 235
    sget v3, Lctk$i;->sure:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 244
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "manager":Ldru;
    .end local v2    # "selected":Z
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "manager":Ldru;
    :cond_1
    move v2, v5

    .line 229
    goto :goto_0

    .line 240
    .restart local v2    # "selected":Z
    :cond_2
    iget-object v3, p0, Lctv$7;->a:Lctv;

    iget-object v3, v3, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v3, v2}, Ldru;->a(Lcom/alibaba/wukong/im/Message;Z)V

    .line 241
    iget-object v3, p0, Lctv$7;->a:Lctv;

    invoke-virtual {v3, v2}, Lctv;->d(Z)V

    goto :goto_1
.end method
