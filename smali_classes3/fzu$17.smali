.class final Lfzu$17;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2043
    iput-boolean p1, p0, Lfzu$17;->a:Z

    iput-object p2, p0, Lfzu$17;->b:Landroid/net/Uri;

    iput-object p3, p0, Lfzu$17;->c:Ljava/lang/String;

    iput-object p4, p0, Lfzu$17;->d:Ljava/lang/String;

    iput-object p5, p0, Lfzu$17;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2047
    iget-boolean v3, p0, Lfzu$17;->a:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lfzu$17;->b:Landroid/net/Uri;

    if-eqz v3, :cond_3

    .line 2048
    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2049
    const-string/jumbo v3, "application/octet-stream"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const-string/jumbo v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lfzu$17;->b:Landroid/net/Uri;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2060
    :goto_0
    const/4 v1, 0x0

    .line 2061
    .local v1, "src":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2062
    .local v2, "statisticKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2063
    .local v0, "from":Ljava/lang/String;
    iget-object v3, p0, Lfzu$17;->e:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 2064
    iget-object v3, p0, Lfzu$17;->e:Landroid/os/Bundle;

    const-string/jumbo v4, "space_transfer_src"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2066
    iget-object v3, p0, Lfzu$17;->e:Landroid/os/Bundle;

    const-string/jumbo v4, "space_statistic_key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2068
    iget-object v3, p0, Lfzu$17;->e:Landroid/os/Bundle;

    const-string/jumbo v4, "im_navigator_from"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2071
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2072
    const-string/jumbo v2, "space_detail_send_contact_success"

    .line 2074
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2075
    const-string/jumbo v1, "other"

    .line 2077
    :cond_2
    const-string/jumbo v3, "space_statistic_key"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2079
    const-string/jumbo v3, "space_transfer_src"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2080
    const-string/jumbo v3, "im_navigator_from"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    return-object p1

    .line 2052
    .end local v0    # "from":Ljava/lang/String;
    .end local v1    # "src":Ljava/lang/String;
    .end local v2    # "statisticKey":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "file_name"

    iget-object v4, p0, Lfzu$17;->c:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    const-string/jumbo v3, "file_url"

    iget-object v4, p0, Lfzu$17;->d:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2056
    const-string/jumbo v3, "need_space_copy"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
