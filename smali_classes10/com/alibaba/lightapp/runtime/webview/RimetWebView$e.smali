.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field private static a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2442
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 3445
    sget-object v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$e;

    .line 2437
    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2450
    const-string/jumbo v1, "THREAD"

    .line 2451
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2453
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "nuva_executor"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 2454
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 2456
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2457
    return-void
.end method
