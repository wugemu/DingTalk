.class final Lhdh$1;
.super Ljava/lang/Object;
.source "NativeToJsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdh;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdh;


# direct methods
.method constructor <init>(Lhdh;)V
    .locals 0
    .param p1, "this$0"    # Lhdh;

    .prologue
    .line 67
    iput-object p1, p0, Lhdh$1;->a:Lhdh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lhdh$1;->a:Lhdh;

    .line 1016
    iget-object v0, v0, Lhdh;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .line 72
    iget-object v1, p0, Lhdh$1;->a:Lhdh;

    .line 2016
    invoke-virtual {v1}, Lhdh;->a()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Lhdh$1$1;

    invoke-direct {v2, p0}, Lhdh$1$1;-><init>(Lhdh$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 82
    :cond_0
    iget-object v0, p0, Lhdh$1;->a:Lhdh;

    .line 5016
    iget-object v0, v0, Lhdh;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .line 82
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "javascript:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lhdh$1;->a:Lhdh;

    .line 6016
    invoke-virtual {v3}, Lhdh;->a()Ljava/lang/String;

    move-result-object v3

    .line 82
    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
