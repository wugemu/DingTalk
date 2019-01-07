.class final Ljts$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljts;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljts;


# direct methods
.method constructor <init>(Ljts;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Ljts$1;->b:Ljts;

    iput-object p2, p0, Ljts$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Ljts$1;->b:Ljts;

    invoke-static {v0}, Ljts;->a(Ljts;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    const-string/jumbo v2, "GET"

    iget-object v3, p0, Ljts$1;->a:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljtx$a;

    move-result-object v0

    .line 193
    iget-object v0, v0, Ljtx$a;->a:Ljava/lang/String;

    .line 201
    invoke-static {v0}, Ljtx;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    iget-object v1, p0, Ljts$1;->b:Ljts;

    invoke-static {v1, v0}, Ljts;->a(Ljts;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    iget-object v0, p0, Ljts$1;->b:Ljts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljts;->a(Ljts;I)I

    .line 207
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
