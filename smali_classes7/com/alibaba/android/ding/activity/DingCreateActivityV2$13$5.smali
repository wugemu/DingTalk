.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;->c:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-boolean p3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 976
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 977
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;->c:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;->c:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;->b:Z

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lazy$a;->a(ZZ)V

    .line 980
    :cond_0
    return-void
.end method
