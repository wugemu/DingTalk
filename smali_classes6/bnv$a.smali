.class final Lbnv$a;
.super Landroid/text/style/ClickableSpan;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lbnv;


# direct methods
.method constructor <init>(Lbnv;J)V
    .locals 0
    .param p2, "commentId"    # J

    .prologue
    .line 1472
    iput-object p1, p0, Lbnv$a;->b:Lbnv;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 1473
    iput-wide p2, p0, Lbnv$a;->a:J

    .line 1474
    return-void
.end method


# virtual methods
.method final a(JJ)V
    .locals 9
    .param p1, "commentId"    # J
    .param p3, "postId"    # J

    .prologue
    .line 1508
    iget-object v2, p0, Lbnv$a;->b:Lbnv;

    invoke-static {v2}, Lbnv;->g(Lbnv;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1512
    :cond_0
    iget-object v2, p0, Lbnv$a;->b:Lbnv;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbnv;->b(Lbnv;Z)Z

    .line 1513
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v0

    .line 1514
    .local v0, "api":Lbou;
    iget-object v2, p0, Lbnv$a;->b:Lbnv;

    invoke-static {v2}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v1

    .line 1515
    .local v1, "item":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v5, Lbnv$a$3;

    invoke-direct {v5, p0, v1, p1, p2}, Lbnv$a$3;-><init>(Lbnv$a;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;J)V

    const-class v6, Lcma;

    iget-object v7, p0, Lbnv$a;->b:Lbnv;

    iget-object v7, v7, Lbnv;->a:Landroid/app/Activity;

    invoke-interface {v2, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-interface {v0, v3, v4, v2}, Lbou;->a(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1478
    .line 2487
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lbnv$a;->b:Lbnv;

    iget-object v1, v1, Lbnv;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbpu$f;->dt_circle_delete_for_sure:I

    .line 2488
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbpu$f;->dt_circle_cancel:I

    new-instance v2, Lbnv$a$2;

    invoke-direct {v2, p0}, Lbnv$a$2;-><init>(Lbnv$a;)V

    .line 2489
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbpu$f;->dt_circle_action_delete:I

    new-instance v2, Lbnv$a$1;

    invoke-direct {v2, p0}, Lbnv$a$1;-><init>(Lbnv$a;)V

    .line 2495
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2503
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1479
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1483
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1484
    return-void
.end method
