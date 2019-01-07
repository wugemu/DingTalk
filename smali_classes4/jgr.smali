.class public final Ljgr;
.super Ljgl;
.source "SendMessageToWeiboRequest.java"


# instance fields
.field public b:Ljgh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljgl;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Ljgl;->a(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Ljgr;->b:Ljgh;

    invoke-virtual {v0, p1}, Ljgh;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method final a(Landroid/content/Context;Ljgu;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Ljgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Ljgr;->b:Ljgh;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v1, p0, Ljgr;->b:Ljgh;

    .line 1053
    const-string/jumbo v2, "VersionCheckHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check WeiboMessage package : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Ljgu;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v2, p2, Ljgu;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p2, Ljgu;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 66
    :goto_1
    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Ljgr;->b:Ljgh;

    invoke-virtual {v0}, Ljgh;->a()Z

    move-result v0

    goto :goto_0

    .line 1059
    :cond_3
    iget-object v2, p2, Ljgu;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Ljgj;->a(Landroid/content/Context;Ljava/lang/String;)Ljgj$a;

    move-result-object v2

    .line 1060
    if-nez v2, :cond_4

    move v1, v0

    .line 1061
    goto :goto_1

    .line 1064
    :cond_4
    const-string/jumbo v3, "VersionCheckHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "check WeiboMessage WeiboInfo supportApi : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Ljgj$a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget v3, v2, Ljgj$a;->b:I

    const/16 v4, 0x286f

    if-ge v3, v4, :cond_5

    .line 1068
    iget-object v3, v1, Ljgh;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v3, :cond_5

    iget-object v3, v1, Ljgh;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v3, v3, Lcom/sina/weibo/sdk/api/VoiceObject;

    if-eqz v3, :cond_5

    .line 1069
    iput-object v6, v1, Ljgh;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 1073
    :cond_5
    iget v2, v2, Ljgj$a;->b:I

    const/16 v3, 0x2870

    if-ge v2, v3, :cond_6

    .line 1075
    iget-object v2, v1, Ljgh;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v2, :cond_6

    iget-object v2, v1, Ljgh;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v2, v2, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz v2, :cond_6

    .line 1076
    iput-object v6, v1, Ljgh;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 1080
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method
