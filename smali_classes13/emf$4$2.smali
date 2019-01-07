.class final Lemf$4$2;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemf$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lemf$4;


# direct methods
.method constructor <init>(Lemf$4;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lemf$4;

    .prologue
    .line 310
    iput-object p1, p0, Lemf$4$2;->b:Lemf$4;

    iput-object p2, p0, Lemf$4$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    iget-object v0, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v2, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v2, v2, Lemf$4;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lemf;->a(Lemf;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 314
    iget-object v0, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v1, v1, Lemf$4;->a:Landroid/app/Activity;

    const v2, 0x7f091ed4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 317
    iget-object v0, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 318
    iget-object v0, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    new-instance v1, Lemf$4$2$1;

    invoke-direct {v1, p0}, Lemf$4$2$1;-><init>(Lemf$4$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 327
    iget-object v0, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    new-instance v1, Lemf$4$2$2;

    invoke-direct {v1, p0}, Lemf$4$2$2;-><init>(Lemf$4$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 334
    iget-object v0, p0, Lemf$4$2;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 335
    return-void
.end method
