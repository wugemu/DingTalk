.class final Lacp$12;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 217
    iput-object p1, p0, Lacp$12;->c:Lacp;

    iput-object p2, p0, Lacp$12;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lacp$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v1, p0, Lacp$12;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v1, p0, Lacp$12;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "customDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iget-object v1, p0, Lacp$12;->b:Ljava/lang/String;

    .line 1239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lacp$12;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 2230
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 2275
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 230
    new-instance v1, Lacp$12$1;

    invoke-direct {v1, p0, v0}, Lacp$12$1;-><init>(Lacp$12;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 3271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v1, Lacp$12$2;

    invoke-direct {v1, p0}, Lacp$12$2;-><init>(Lacp$12;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 245
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    goto :goto_0
.end method
