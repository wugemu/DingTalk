.class public Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
.source "DDDelayProgressDialog.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo v0, "dd_delay_progress_dialog_token"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "delayMilliSecond"    # J

    .prologue
    .line 28
    const/4 v2, 0x0

    const-wide/16 v4, 0x258

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "delayMilliSecond"    # J
    .param p5, "indeterminate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 1047
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1048
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1049
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->setIndeterminate(Z)V

    .line 1051
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->setCancelable(Z)V

    .line 1052
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1058
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog$1;

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;)V

    const-string/jumbo v3, "dd_delay_progress_dialog_token"

    .line 1063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p3

    .line 1058
    invoke-virtual {v1, v2, v3, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 34
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    .prologue
    .line 14
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "dd_delay_progress_dialog_token"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 70
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 71
    return-void
.end method
