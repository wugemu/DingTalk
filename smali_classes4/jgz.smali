.class public final Ljgz;
.super Ljava/lang/Object;
.source "WeiboAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljgz$a;
    }
.end annotation


# instance fields
.field public a:Ljgz$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "scope"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Ljgz;->b:Landroid/content/Context;

    .line 119
    new-instance v0, Ljgz$a;

    invoke-direct {v0, p1, p2, p3, p4}, Ljgz$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljgz;->a:Ljgz$a;

    .line 120
    return-void
.end method


# virtual methods
.method public final a(Ljha;)V
    .locals 5
    .param p1, "listener"    # Ljha;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    .line 1180
    if-eqz p1, :cond_0

    .line 1184
    new-instance v0, Ljhf;

    invoke-direct {v0}, Ljhf;-><init>()V

    .line 1185
    const-string/jumbo v3, "client_id"

    iget-object v4, p0, Ljgz;->a:Ljgz$a;

    .line 2058
    iget-object v4, v4, Ljgz$a;->a:Ljava/lang/String;

    .line 1185
    invoke-virtual {v0, v3, v4}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string/jumbo v3, "redirect_uri"

    iget-object v4, p0, Ljgz;->a:Ljgz$a;

    .line 2060
    iget-object v4, v4, Ljgz$a;->b:Ljava/lang/String;

    .line 1186
    invoke-virtual {v0, v3, v4}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string/jumbo v3, "scope"

    iget-object v4, p0, Ljgz;->a:Ljgz$a;

    .line 2062
    iget-object v4, v4, Ljgz$a;->c:Ljava/lang/String;

    .line 1187
    invoke-virtual {v0, v3, v4}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string/jumbo v3, "response_type"

    const-string/jumbo v4, "code"

    invoke-virtual {v0, v3, v4}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v3, "display"

    const-string/jumbo v4, "mobile"

    invoke-virtual {v0, v3, v4}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v3, "packagename"

    iget-object v4, p0, Ljgz;->a:Ljgz$a;

    .line 2064
    iget-object v4, v4, Ljgz$a;->d:Ljava/lang/String;

    .line 1193
    invoke-virtual {v0, v3, v4}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v3, "key_hash"

    iget-object v4, p0, Ljgz;->a:Ljgz$a;

    .line 2066
    iget-object v4, v4, Ljgz$a;->e:Ljava/lang/String;

    .line 1194
    invoke-virtual {v0, v3, v4}, Ljhf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "https://open.weibo.cn/oauth2/authorize?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljhf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1198
    iget-object v0, p0, Ljgz;->b:Landroid/content/Context;

    .line 3051
    if-eqz v0, :cond_1

    .line 3052
    const-string/jumbo v4, "android.permission.INTERNET"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1198
    :goto_0
    if-nez v0, :cond_2

    .line 1199
    iget-object v0, p0, Ljgz;->b:Landroid/content/Context;

    const-string/jumbo v1, "Error"

    const-string/jumbo v2, "Application requires permission to access the Internet"

    .line 4040
    if-eqz v0, :cond_0

    .line 4041
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4042
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4043
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4044
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4045
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1203
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 3056
    goto :goto_0

    .line 1201
    :cond_2
    iget-object v0, p0, Ljgz;->b:Landroid/content/Context;

    .line 4067
    if-eqz v0, :cond_4

    .line 4126
    const-string/jumbo v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4127
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4069
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1201
    :goto_2
    if-eqz v0, :cond_5

    .line 1202
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboDialog;

    iget-object v1, p0, Ljgz;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v3, p1, p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljha;Ljgz;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->show()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 4069
    goto :goto_2

    :cond_4
    move v0, v2

    .line 4072
    goto :goto_2

    .line 1204
    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Ljhi;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1205
    const-string/jumbo v1, "Weibo_web_login"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "String: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljhg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Ljgz;->b:Landroid/content/Context;

    .line 5083
    if-eqz v1, :cond_0

    .line 5084
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
