.class public final Ljgu;
.super Ljava/lang/Object;
.source "VersionCheckHandler.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljgu;->a:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljgi;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljgi;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 85
    const-string/jumbo v2, "VersionCheckHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check WeiboMultiMessage package : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljgu;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Ljgu;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljgu;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    iget-object v2, p0, Ljgu;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Ljgj;->a(Landroid/content/Context;Ljava/lang/String;)Ljgj$a;

    move-result-object v0

    .line 92
    .local v0, "winfo":Ljgj$a;
    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v2, "VersionCheckHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check WeiboMultiMessage WeiboInfo supportApi : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Ljgj$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget v2, v0, Ljgj$a;->b:I

    const/16 v3, 0x286f

    if-lt v2, v3, :cond_0

    .line 103
    iget v1, v0, Ljgj$a;->b:I

    const/16 v2, 0x2870

    if-ge v1, v2, :cond_2

    .line 105
    iget-object v1, p2, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v1, :cond_2

    iget-object v1, p2, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v1, v1, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz v1, :cond_2

    .line 106
    const/4 v1, 0x0

    iput-object v1, p2, Ljgi;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 110
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
