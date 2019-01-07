.class final Lacp$3;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 550
    iput-object p1, p0, Lacp$3;->d:Lacp;

    iput-object p2, p0, Lacp$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lacp$3;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p4, p0, Lacp$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lacp$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 554
    const-string/jumbo v0, "MailDialogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "buildManualLoginBindEmailDialog, which:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-nez p2, :cond_0

    .line 557
    iget-object v0, p0, Lacp$3;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lacg;->b(Landroid/content/Context;)V

    .line 565
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 560
    iget-object v0, p0, Lacp$3;->d:Lacp;

    invoke-static {v0, v3}, Lacp;->a(Lacp;Z)Z

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lacp$3;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lacp;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
