.class public final Laes;
.super Ljava/lang/Object;
.source "DingtalkMailDailyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laes$b;,
        Laes$a;,
        Laes$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

.field public c:Landroid/app/Activity;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/alibaba/wukong/im/ConversationService;

.field public j:Laes$b;

.field k:Landroid/os/Handler;

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fromAddress"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Laes;->a:Z

    .line 75
    const-string/jumbo v0, "admin@dingtalk.com"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 1583
    :cond_0
    const-string/jumbo v0, "mail_headline_open_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 2081
    const-string/jumbo v0, "cmail/dingmailPlugin.js"

    iput-object v0, p0, Laes;->d:Ljava/lang/String;

    .line 2082
    const-string/jumbo v0, "cmail/TGJSBridge.js"

    iput-object v0, p0, Laes;->e:Ljava/lang/String;

    .line 2083
    const-string/jumbo v0, "cmail/injectCss.css"

    iput-object v0, p0, Laes;->f:Ljava/lang/String;

    .line 2084
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Laes;->l:Landroid/content/Context;

    .line 2086
    new-instance v0, Laes$c;

    invoke-direct {v0, p0}, Laes$c;-><init>(Laes;)V

    iput-object v0, p0, Laes;->k:Landroid/os/Handler;

    .line 2087
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laes;->g:Ljava/util/HashMap;

    .line 2088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laes;->h:Ljava/util/HashMap;

    .line 2089
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 2090
    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iput-object v0, p0, Laes;->i:Lcom/alibaba/wukong/im/ConversationService;

    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Laes;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "scriptFile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 176
    :try_start_0
    iget-object v3, p0, Laes;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 177
    .local v2, "input":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 178
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 179
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 182
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "encoded":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "javascript:(function() {var parent = document.getElementsByTagName(\'body\').item(0);var script = document.createElement(\'script\');script.type = \'text/javascript\';script.innerHTML = window.atob(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\');parent.appendChild(script)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "buffer":[B
    .end local v1    # "encoded":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    iput-boolean v3, p0, Laes;->a:Z

    goto :goto_0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cssFile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 199
    :try_start_0
    iget-object v3, p0, Laes;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 200
    .local v2, "input":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 201
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 202
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 205
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "encoded":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "javascript:(function() {var parent = document.getElementsByTagName(\'body\').item(0);var style = document.createElement(\'style\');style.type = \'text/css\';style.innerHTML = window.atob(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\');parent.appendChild(style)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "buffer":[B
    .end local v1    # "encoded":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    iput-boolean v3, p0, Laes;->a:Z

    goto :goto_0
.end method
