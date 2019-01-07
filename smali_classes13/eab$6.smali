.class final Leab$6;
.super Ljava/lang/Object;
.source "PushTaskListHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Landroid/support/v7/widget/ListPopupWindow;

.field final synthetic c:Leab;


# direct methods
.method constructor <init>(Leab;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Leab;

    .prologue
    .line 511
    iput-object p1, p0, Leab$6;->c:Leab;

    iput-object p2, p0, Leab$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Leab$6;->b:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 514
    iget-object v2, p0, Leab$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 515
    iget-object v2, p0, Leab$6;->b:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 517
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 518
    .local v1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "version"

    const-string/jumbo v3, "2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string/jumbo v2, "org_id"

    iget-object v3, p0, Leab$6;->c:Leab;

    invoke-static {v3}, Leab;->d(Leab;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string/jumbo v2, "groupId"

    iget-object v3, p0, Leab$6;->c:Leab;

    invoke-static {v3}, Leab;->e(Leab;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string/jumbo v2, "title"

    iget-object v3, p0, Leab$6;->c:Leab;

    invoke-static {v3}, Leab;->f(Leab;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "PushTaskListHolder"

    const-string/jumbo v4, "guide_TaskCenter_hide"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 524
    new-instance v0, Leab$6$1;

    invoke-direct {v0, p0}, Leab$6$1;-><init>(Leab$6;)V

    .line 545
    .local v0, "apiEventListener":Lcma;
    const-class v2, Lcma;

    iget-object v3, p0, Leab$6;->c:Leab;

    iget-object v3, v3, Leab;->c:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 547
    .restart local v0    # "apiEventListener":Lcma;
    invoke-static {}, Ldyp;->a()Ldyo;

    move-result-object v2

    invoke-interface {v2, v0}, Ldyo;->c(Lcma;)V

    .line 548
    return-void
.end method
