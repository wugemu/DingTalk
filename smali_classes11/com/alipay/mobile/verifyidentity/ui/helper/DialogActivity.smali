.class public Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "DialogActivity.java"


# static fields
.field public static KEY_VI_DIALOG_CANCELABLE:Ljava/lang/String;

.field public static KEY_VI_DIALOG_MSG:Ljava/lang/String;

.field public static KEY_VI_DIALOG_SHOW_PROGRESSBAR:Ljava/lang/String;

.field private static final a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field public static onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public VI_DIALOG_CANCELABLE:Z

.field public VI_DIALOG_SHOW_PROGRESSBAR:Z

.field public VI_SHOW_DIALOG_MSG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-class v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "KEY_VI_DIALOG_MSG"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_MSG:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "KEY_VI_DIALOG_CANCELABLE"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_CANCELABLE:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "KEY_VI_DIALOG_SHOW_PROGRESSBAR"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_SHOW_PROGRESSBAR:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_CANCELABLE:Z

    .line 21
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_SHOW_PROGRESSBAR:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a()V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show progress time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dismiss progress time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b()V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->finish()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->finish()V

    .line 125
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->overridePendingTransition(II)V

    .line 126
    return-void
.end method

.method public static needOrCanShow()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 134
    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    sget-wide v4, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a()V

    .line 136
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "no need to show progress.[by time]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 138
    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    .line 149
    :goto_0
    return v0

    .line 141
    :cond_0
    sget v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    sget v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    if-gt v1, v2, :cond_1

    .line 142
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "no need to show progress. [by amount]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogShowAmount is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogDismissAmount is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 146
    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setViDismissDialogTime(J)V
    .locals 4

    .prologue
    .line 107
    sput-wide p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    .line 108
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set dismiss progress time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static setViShowDialogTime(J)V
    .locals 4

    .prologue
    .line 101
    sput-wide p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    .line 102
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set show progress time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->dismissProgressDialog()V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->updateDialogActivity(Landroid/app/Activity;)V

    .line 84
    sput v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 85
    sput v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    .line 86
    sput-object v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "DialogActivity is onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_CANCELABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_CANCELABLE:Z

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_SHOW_PROGRESSBAR:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_SHOW_PROGRESSBAR:Z

    .line 38
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->updateDialogActivity(Landroid/app/Activity;)V

    .line 39
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a()V

    .line 40
    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 41
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "can show progress"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_CANCELABLE:Z

    new-instance v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_SHOW_PROGRESSBAR:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 60
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onResume()V

    .line 65
    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 66
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a()V

    .line 67
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "can not show progress."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DialogShowAmount is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DialogDismissAmount is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    sget v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    if-gt v0, v1, :cond_0

    .line 75
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "no need to show progress. sth is wrong"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b()V

    goto :goto_0
.end method
