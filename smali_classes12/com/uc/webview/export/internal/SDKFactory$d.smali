.class final Lcom/uc/webview/export/internal/SDKFactory$d;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/SDKFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field private static final c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1306
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1307
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 1308
    new-instance v0, Lcom/uc/webview/export/internal/c;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/c;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1326
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1327
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .prologue
    .line 1305
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory$d;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 1305
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1345
    if-eqz p0, :cond_0

    .line 1346
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1347
    new-instance v0, Lcom/uc/webview/export/internal/SDKFactory$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory$d;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory$d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory$d;->post(Ljava/lang/Runnable;)Z

    .line 1350
    :cond_0
    const/16 v0, 0x272a

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1351
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v0, :cond_1

    .line 1352
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1354
    :cond_1
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v0, :cond_2

    .line 1355
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory$d;->b:Lcom/uc/webview/export/internal/setup/UCSetupException;

    throw v0

    .line 1357
    :cond_2
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1331
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1333
    :pswitch_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    if-eqz v0, :cond_0

    .line 1334
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/uc/webview/export/extension/NotAvailableUCListener;->onNotAvailableUC(I)V

    .line 1336
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    goto :goto_0

    .line 1331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
