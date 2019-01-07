.class final Lbiu$10;
.super Ljava/lang/Object;
.source "SingleChatTaskDingHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:J

.field final synthetic d:Lbiu;


# direct methods
.method constructor <init>(Lbiu;Landroid/widget/EditText;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;J)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 671
    iput-object p1, p0, Lbiu$10;->d:Lbiu;

    iput-object p2, p0, Lbiu$10;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lbiu$10;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-wide p4, p0, Lbiu$10;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 674
    iget-object v0, p0, Lbiu$10;->d:Lbiu;

    .line 1065
    iget-object v0, v0, Lbiu;->a:Landroid/app/Activity;

    .line 674
    iget-object v1, p0, Lbiu$10;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 675
    iget-object v0, p0, Lbiu$10;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 677
    const-string/jumbo v7, ""

    .line 678
    .local v7, "reason":Ljava/lang/String;
    iget-object v0, p0, Lbiu$10;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lbiu$10;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 682
    :cond_0
    iget-object v0, p0, Lbiu$10;->d:Lbiu;

    iget-wide v4, p0, Lbiu$10;->c:J

    .line 2703
    new-instance v1, Lbfk;

    iget-object v2, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 3109
    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2703
    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v6

    invoke-direct/range {v1 .. v7}, Lbfk;-><init>(JJILjava/lang/String;)V

    .line 2704
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    new-instance v3, Lbiu$13;

    invoke-direct {v3, v0}, Lbiu$13;-><init>(Lbiu;)V

    const-class v4, Lcma;

    iget-object v0, v0, Lbiu;->a:Landroid/app/Activity;

    invoke-static {v3, v4, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v1, v0}, Lbbp;->a(Lbfk;Lcma;)V

    .line 683
    return-void
.end method
