.class final Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;
.super Ljava/lang/Object;
.source "TitleBarWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lsh;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Lsh;)V
    .locals 1
    .param p1, "webview"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "config"    # Lsh;

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->c:Ljava/lang/ref/WeakReference;

    .line 554
    iput-object p2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->a:Ljava/lang/String;

    .line 555
    iput-object p3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->b:Lsh;

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Lsh;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lsh;

    .prologue
    .line 548
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Lsh;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 564
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->a:Ljava/lang/String;

    const-string/jumbo v2, "(?i)<table([> ])"

    const-string/jumbo v3, "<div class=\'mailTableArea\'>$0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "(?i)<\\/table>"

    const-string/jumbo v3, "</table></div>"

    .line 566
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->a:Ljava/lang/String;

    .line 1559
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 569
    .local v0, "webView":Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    .end local v0    # "webView":Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    :cond_0
    return-void
.end method
