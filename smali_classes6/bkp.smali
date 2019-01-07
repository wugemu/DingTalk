.class public final Lbkp;
.super Ljava/lang/Object;
.source "TaskTransferHelper.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field public b:Landroid/content/BroadcastReceiver;

.field public c:Landroid/app/Activity;

.field public d:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private e:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "identifier_task_transfer"

    sput-object v0, Lbkp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "transferSuccessCallback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lbkp;->b:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lbkp;->c:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lbkp;->d:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 59
    iput-object v0, p0, Lbkp;->e:Lcom/alibaba/wukong/Callback;

    .line 2065
    iget-object v0, p0, Lbkp;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2066
    new-instance v0, Lbkp$1;

    invoke-direct {v0, p0}, Lbkp$1;-><init>(Lbkp;)V

    iput-object v0, p0, Lbkp;->b:Landroid/content/BroadcastReceiver;

    .line 2086
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2087
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2088
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2089
    const-string/jumbo v1, "com.workapp.ding.choose.myself"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2090
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbkp;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lbkp;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbkp;

    .prologue
    .line 42
    iget-object v0, p0, Lbkp;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lbkp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lbkp;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lbkp;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 42
    .line 4151
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lbkp;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4152
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4153
    sget v1, Laxp$i;->ding_ignore_vip:I

    new-instance v2, Lbkp$3;

    invoke-direct {v2, p0, v0, p2}, Lbkp$3;-><init>(Lbkp;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4160
    sget v1, Laxp$i;->cancel:I

    new-instance v2, Lbkp$4;

    invoke-direct {v2, p0, v0}, Lbkp$4;-><init>(Lbkp;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4166
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 42
    return-void
.end method

.method static synthetic a(Lbkp;Ljava/util/List;Z)V
    .locals 6
    .param p0, "x0"    # Lbkp;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    .line 2101
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2105
    :cond_1
    iget-object v0, p0, Lbkp;->d:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 2109
    new-instance v0, Lbkp$2;

    invoke-direct {v0, p0, p1}, Lbkp$2;-><init>(Lbkp;Ljava/util/List;)V

    .line 2140
    iget-object v1, p0, Lbkp;->c:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 2141
    const-class v1, Lcma;

    iget-object v2, p0, Lbkp;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v1, v0

    .line 2143
    :goto_1
    iget-object v0, p0, Lbkp;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_2

    .line 2144
    iget-object v0, p0, Lbkp;->c:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Laxp$i;->dt_ding_task_transferring:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 2146
    :cond_2
    new-instance v0, Lbez;

    iget-object v2, p0, Lbkp;->d:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 3109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2146
    invoke-direct {v0, v2, v3, p1, p2}, Lbez;-><init>(JLjava/util/List;Z)V

    .line 2147
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 3261
    iget-object v3, v2, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$19;

    invoke-direct {v4, v2, v0, v1}, Lbbp$19;-><init>(Lbbp;Lbez;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic b(Lbkp;)Lcom/alibaba/wukong/Callback;
    .locals 1
    .param p0, "x0"    # Lbkp;

    .prologue
    .line 42
    iget-object v0, p0, Lbkp;->e:Lcom/alibaba/wukong/Callback;

    return-object v0
.end method
