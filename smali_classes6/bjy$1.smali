.class final Lbjy$1;
.super Ljava/lang/Object;
.source "DingRemindLaterUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjy;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic e:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lbjy$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lbjy$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-boolean p3, p0, Lbjy$1;->c:Z

    iput-object p4, p0, Lbjy$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p5, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 43
    packed-switch p2, :pswitch_data_0

    .line 73
    iget-object v0, p0, Lbjy$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lbjy$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lbjy$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v2, p0, Lbjy$1;->c:Z

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lbjy;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZI)V

    .line 46
    iget-object v0, p0, Lbjy$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 47
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lbjy$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lbjy$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v2, p0, Lbjy$1;->c:Z

    const/16 v3, 0x78

    invoke-static {v0, v1, v2, v3}, Lbjy;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZI)V

    .line 53
    iget-object v0, p0, Lbjy$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 54
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lbjy$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lbjy$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v2, p0, Lbjy$1;->c:Z

    const/16 v3, 0xb4

    invoke-static {v0, v1, v2, v3}, Lbjy;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZI)V

    .line 60
    iget-object v0, p0, Lbjy$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 61
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lbjy$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 67
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lbjy$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lbjy$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lbjy$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v2, p0, Lbjy$1;->c:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbjy;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZI)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
