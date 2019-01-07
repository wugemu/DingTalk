.class public Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;
.super Ljava/lang/Object;
.source "ContextDialogHelper.java"


# static fields
.field public static DialogDismissAmount:I

.field public static DialogShowAmount:I

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    .line 31
    sput v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 32
    sput v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->c:Landroid/content/Context;

    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "doDismissProgressDialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method private a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "showProgressDialog by context"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->setViShowDialogTime(J)V

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a()V

    .line 61
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "dismissProgressDialog by context"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    if-lez v0, :cond_0

    .line 87
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    .line 89
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->setViDismissDialogTime(J)V

    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a()V

    .line 91
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 53
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method
