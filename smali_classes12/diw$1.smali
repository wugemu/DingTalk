.class final Ldiw$1;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Ldiw$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldiw$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldiw$1;->c:Lcom/alibaba/wukong/im/Message;

    iput-object p4, p0, Ldiw$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 88
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 89
    .local v0, "startTime":J
    packed-switch p2, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    iget-object v2, p0, Ldiw$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 129
    return-void

    .line 92
    :pswitch_0
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 93
    iget-object v2, p0, Ldiw$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Ldiw$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Ldiw$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2, v3, v4, v0, v1}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V

    goto :goto_0

    .line 97
    :pswitch_1
    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    .line 98
    iget-object v2, p0, Ldiw$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Ldiw$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Ldiw$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2, v3, v4, v0, v1}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V

    goto :goto_0

    .line 102
    :pswitch_2
    const-wide/32 v2, 0xa4cb80

    add-long/2addr v0, v2

    .line 103
    iget-object v2, p0, Ldiw$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Ldiw$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Ldiw$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2, v3, v4, v0, v1}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v3, p0, Ldiw$1;->a:Landroid/app/Activity;

    new-instance v2, Ldiw$1$1;

    invoke-direct {v2, p0}, Ldiw$1$1;-><init>(Ldiw$1;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldiw$1;->a:Landroid/app/Activity;

    invoke-static {v2, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 1135
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1138
    new-instance v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    sget-object v5, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-direct {v4, v3, v5}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V

    .line 1362
    iput-boolean v6, v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 1140
    new-instance v3, Ldiw$4;

    invoke-direct {v3, v2}, Ldiw$4;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 1414
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 1154
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 1155
    const/4 v2, 0x1

    .line 2366
    iput-boolean v2, v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 2370
    iput-boolean v6, v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->c:Z

    .line 1157
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
