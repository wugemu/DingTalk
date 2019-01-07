.class final Lacp$4;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcma;

.field final synthetic f:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 588
    iput-object p1, p0, Lacp$4;->f:Lacp;

    iput-object p2, p0, Lacp$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lacp$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lacp$4;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p5, p0, Lacp$4;->d:Ljava/lang/String;

    iput-object p6, p0, Lacp$4;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 591
    iget-object v0, p0, Lacp$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lacp$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 594
    :cond_0
    invoke-static {}, Lacp;->b()V

    .line 595
    const-string/jumbo v0, "buildAutoLoginBindEmailDialog, agentTicketLogin, mail:"

    iget-object v1, p0, Lacp$4;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lacp$4;->f:Lacp;

    iget-object v1, p0, Lacp$4;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lacp$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lacp$4;->d:Ljava/lang/String;

    iget-object v4, p0, Lacp$4;->e:Lcma;

    invoke-static {v0, v1, v2, v3, v4}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 597
    return-void
.end method
