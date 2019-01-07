.class public Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RichEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/richeditor/RichEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;


# direct methods
.method protected constructor <init>(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->b(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    const-string/jumbo v2, "file:///android_asset/richeditor/editor.html"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->a(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;Z)Z

    .line 321
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->c(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)Lcom/alibaba/alimei/cmail/richeditor/RichEditor$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->c(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)Lcom/alibaba/alimei/cmail/richeditor/RichEditor$a;

    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->d(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)Z

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->e(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-static {v2}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->e(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->b(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 326
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$EditorWebViewClient;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->a(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method
