.class public final Lhsf;
.super Ljava/lang/Object;
.source "RuntimeWMLSDKInstance.java"

# interfaces
.implements Lhde;


# instance fields
.field public a:Ljrh;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljrh;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lhqe$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lhsf$1;

    invoke-direct {v0, p0}, Lhsf$1;-><init>(Lhsf;)V

    iput-object v0, p0, Lhsf;->c:Lhqe$c;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhsf;->b:Ljava/util/Map;

    .line 52
    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "content":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "http"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const-string/jumbo v5, "CLOUD_SETTING_WEBVIEW_GET_DOMAIN_NEW"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 174
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v5, "(?<=//|)((\\w)+\\.)+\\w+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 182
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 183
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lhde$a;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "ipUrl"    # Ljava/lang/String;

    .prologue
    .line 86
    return-object p1
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lhsf;->a:Ljrh;

    invoke-virtual {v0}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lhsf;->a:Ljrh;

    invoke-virtual {v0}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lhsf;->a:Ljrh;

    invoke-virtual {v0}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lhsf;->a:Ljrh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhsf;->a:Ljrh;

    .line 70
    invoke-virtual {v0}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhsf;->a:Ljrh;

    .line 71
    invoke-virtual {v0}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/weex/activity/IDDWMLContext;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lhsf;->a:Ljrh;

    invoke-virtual {v0}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/weex/activity/IDDWMLContext;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/weex/activity/IDDWMLContext;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reload()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
