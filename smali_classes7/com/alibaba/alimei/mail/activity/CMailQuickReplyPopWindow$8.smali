.class final Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;
.super Ljava/lang/Object;
.source "CMailQuickReplyPopWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;->c:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;->a:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 740
    if-nez p2, :cond_3

    .line 2270
    const-string/jumbo v0, "mail_quickreply_del"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;->c:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->i(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Laej;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;->a:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;

    iget-object v2, v0, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;->b:Ljava/lang/String;

    .line 3160
    iget-object v0, v1, Laej;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3161
    iget-object v0, v1, Laej;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3162
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3164
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3165
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 3166
    const/4 v0, 0x1

    iput-boolean v0, v1, Laej;->c:Z

    .line 3170
    :cond_1
    invoke-virtual {v1}, Laej;->d()V

    .line 3171
    invoke-virtual {v1}, Laej;->b()V

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 748
    :cond_3
    return-void
.end method
