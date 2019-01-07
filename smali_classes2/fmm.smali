.class public Lfmm;
.super Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog;
.source "AddCustomerMenuDialog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lfmm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfmm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "corpId"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog;-><init>()V

    .line 72
    iput-object p1, p0, Lfmm;->d:Landroid/app/Activity;

    .line 73
    iput-wide p2, p0, Lfmm;->b:J

    .line 74
    iput-object p4, p0, Lfmm;->c:Ljava/lang/String;

    .line 1079
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfmm;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1082
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    iget-object v2, p0, Lfmm;->d:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    iget-object v2, p0, Lfmm;->d:Landroid/app/Activity;

    sget v3, Lezg$l;->choose_add_customer_dlg_namecard:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v2, p0, Lfmm;->f:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1179
    new-instance v2, Lfmm$4;

    invoke-direct {v2, p0}, Lfmm$4;-><init>(Lfmm;)V

    iput-object v2, p0, Lfmm;->f:Landroid/content/BroadcastReceiver;

    .line 1195
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.recognize.card.from.camera"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1196
    iget-object v3, p0, Lfmm;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lfmm;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1087
    :cond_0
    iget-object v2, p0, Lfmm;->d:Landroid/app/Activity;

    sget v3, Lezg$l;->choose_add_customer_dlg_auto:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v2, p0, Lfmm;->d:Landroid/app/Activity;

    sget v3, Lezg$l;->choose_add_customer_dlg_manual:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1090
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1092
    new-instance v1, Lfmm$1;

    invoke-direct {v1, p0, v2}, Lfmm$1;-><init>(Lfmm;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 75
    iput-object v0, p0, Lfmm;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 76
    return-void
.end method

.method static synthetic a(Lfmm;)V
    .locals 6
    .param p0, "x0"    # Lfmm;

    .prologue
    .line 60
    .line 2134
    iget-object v0, p0, Lfmm;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/camera_recognize_card.html"

    new-instance v2, Lfmm$2;

    invoke-direct {v2, p0}, Lfmm$2;-><init>(Lfmm;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2142
    const-string/jumbo v0, "crm_clientlist_add_scan_click"

    const-string/jumbo v1, "org_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lfmm;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lfmm;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lfmm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 5204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5205
    sget-object v0, Lfmm;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 5206
    new-instance v1, Lfmm$5;

    invoke-direct {v1, p0, p1}, Lfmm$5;-><init>(Lfmm;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 5228
    :goto_0
    return-void

    .line 5229
    :cond_0
    sget v0, Lezg$l;->add_customer_by_namecard_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lfmm;)V
    .locals 6
    .param p0, "x0"    # Lfmm;

    .prologue
    .line 60
    .line 3161
    iget-object v0, p0, Lfmm;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/add_customer.html"

    new-instance v2, Lfmm$3;

    invoke-direct {v2, p0}, Lfmm$3;-><init>(Lfmm;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3168
    const-string/jumbo v0, "crm_clientlist_add_contact_click"

    const-string/jumbo v1, "org_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lfmm;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lfmm;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lfmm;)V
    .locals 7
    .param p0, "x0"    # Lfmm;

    .prologue
    const/4 v6, 0x0

    .line 60
    .line 4149
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 4150
    sget-object v1, Lezh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4151
    const-string/jumbo v1, "corpId="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfmm;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4152
    const-string/jumbo v1, "&customerId=&primaryKey="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4153
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lfmm;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    const-string/jumbo v0, "crm_clientlist_add_manual_click"

    const-string/jumbo v1, "org_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lfmm;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4315
    invoke-static {v6, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method static synthetic d(Lfmm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfmm;

    .prologue
    .line 60
    iget-object v0, p0, Lfmm;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lfmm;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfmm;

    .prologue
    .line 60
    iget-object v0, p0, Lfmm;->d:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lfmm;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lfmm;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 128
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lfmm;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lfmm;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfmm;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 239
    iput-object v2, p0, Lfmm;->f:Landroid/content/BroadcastReceiver;

    .line 241
    :cond_0
    iget-object v0, p0, Lfmm;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfmm;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lfmm;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 243
    iput-object v2, p0, Lfmm;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 245
    :cond_1
    return-void
.end method
