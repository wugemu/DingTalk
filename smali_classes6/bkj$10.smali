.class final Lbkj$10;
.super Ljava/lang/Object;
.source "FinishStatusUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lbkj$10;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbkj$10;->b:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iput-object p3, p0, Lbkj$10;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p4, p0, Lbkj$10;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Lbkj$10;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lbkj$10;->b:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lbkj$10;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0, v1, v2, v3}, Lbkj;->a(Landroid/app/Activity;ZLcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 165
    iget-object v0, p0, Lbkj$10;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 166
    return-void
.end method
