.class final Ldiw$10;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Lcom/alibaba/wukong/im/Message;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Ldiw$10;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p2, p0, Ldiw$10;->b:Landroid/app/Activity;

    iput-object p3, p0, Ldiw$10;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Ldiw$10;->d:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    iget-object v0, p0, Ldiw$10;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 358
    iget-object v0, p0, Ldiw$10;->b:Landroid/app/Activity;

    iget-object v1, p0, Ldiw$10;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldiw$10;->d:Lcom/alibaba/wukong/im/Message;

    .line 1072
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    const-string/jumbo v0, "chat_later_edit_actionsheet_edit"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 360
    return-void

    .line 1075
    :cond_1
    instance-of v3, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_0

    .line 1078
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1082
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1083
    sget v4, Lctk$i;->dt_im_message_update_remind:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1084
    sget v4, Lctk$b;->menu_remind_timemillis:I

    new-instance v5, Ldiw$1;

    invoke-direct {v5, v0, v1, v2, v3}, Ldiw$1;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1131
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
