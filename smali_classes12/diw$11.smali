.class final Ldiw$11;
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

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;JLcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Ldiw$11;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-wide p2, p0, Ldiw$11;->b:J

    iput-object p4, p0, Ldiw$11;->c:Lcom/alibaba/wukong/im/Message;

    iput-object p5, p0, Ldiw$11;->d:Landroid/app/Activity;

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
    .line 366
    iget-object v0, p0, Ldiw$11;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 367
    iget-wide v2, p0, Ldiw$11;->b:J

    iget-object v0, p0, Ldiw$11;->c:Lcom/alibaba/wukong/im/Message;

    iget-object v1, p0, Ldiw$11;->d:Landroid/app/Activity;

    .line 1376
    const-string/jumbo v4, "chat_later_cancel"

    invoke-static {v4}, Lcps;->a(Ljava/lang/String;)V

    .line 1377
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v4

    new-instance v5, Ldiw$2;

    invoke-direct {v5, v0, v2, v3}, Ldiw$2;-><init>(Lcom/alibaba/wukong/im/Message;J)V

    const-class v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v5, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v4, v2, v3, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(JLcom/alibaba/wukong/Callback;)V

    .line 368
    return-void
.end method
