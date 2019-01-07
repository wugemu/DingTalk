.class public Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;
.super Lgvu;
.source "OpenInUCwebUnit.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgwa;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 37
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p2}, Lgwa;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 42
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 80
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[OpenInUCwebUnit] encode UnsupportedEncodingException"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 85
    :catch_1
    move-exception v1

    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[OpenInUCwebUnit] encode Exception"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 7
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "open_share_menu_view"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v3, "share"

    const-string/jumbo v4, "[OpenInUCwebUnit] share clicked"

    invoke-static {v3, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-nez p1, :cond_1

    .line 50
    const-string/jumbo v3, "share"

    const-string/jumbo v4, "[OpenInUCwebUnit] shareInfo is null, cancelShare"

    invoke-static {v3, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a:Landroid/content/Context;

    invoke-static {v3}, Lgwe;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "install_uc"

    const-string/jumbo v4, "0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v3, "open_in_uc"

    invoke-static {v3, v0}, Lgwj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a:Landroid/content/Context;

    invoke-static {v3}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://image.uc.cn/s/uae/g/49/action/11_11/lingling/dingdingnq.html"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    const-string/jumbo v3, "share"

    const-string/jumbo v4, "[OpenInUCwebUnit] share Exception"

    invoke-static {v3, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .restart local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "install_uc"

    const-string/jumbo v4, "1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v3, "open_in_uc"

    invoke-static {v3, v0}, Lgwj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    const-string/jumbo v3, "browser_url"

    invoke-static {p1, v3}, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->a:Landroid/content/Context;

    invoke-static {v3}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uclink://www.uc.cn/cc77796ca7c25dff9607d31b29effc07?action=open_url&src_pkg=src_ch=lingling_yll_dingdingnq&show_guide=0&src_ch=middle_page&url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
