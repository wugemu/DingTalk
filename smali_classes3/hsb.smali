.class public final Lhsb;
.super Ljava/lang/Object;
.source "SchemeHelper.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lhsb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sput-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "alipays"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "alipayqr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "afwealth"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "alipaym"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "androidamap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "moneyshield"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "aliyun"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "sinaweibo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "aliwork"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "tmall"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "fleamarket"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "tbsellerplatform"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "taobao"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "m"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "cuntao"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "cunpartner"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "ecm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "taobaotravel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "rjportal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "tbmovie"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "sangfor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "cloudmail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "zheyan"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "alilang"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "zhengwt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "lst"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "uclink"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "maptrack"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "youku"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "sfminiconnect"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "koubei"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "alilang"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "alipayhk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "alianchor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Lhsb;

    invoke-direct {v0}, Lhsb;-><init>()V

    sput-object v0, Lhsb;->b:Lhsb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lhsb;->a:Ljava/util/List;

    const-string/jumbo v1, "sfcloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public static a()Lhsb;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lhsb;->b:Lhsb;

    return-object v0
.end method

.method private static a(Landroid/net/Uri;)Z
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 232
    if-eqz p0, :cond_1

    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "scheme":Ljava/lang/String;
    sget-object v3, Lhsb;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 252
    .end local v1    # "scheme":Ljava/lang/String;
    :goto_0
    return v3

    .line 240
    .restart local v1    # "scheme":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "weixin"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    const-string/jumbo v3, "from"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "bizSource":Ljava/lang/String;
    const-string/jumbo v3, "new-retail-applications"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 243
    goto :goto_0

    .line 247
    .end local v0    # "bizSource":Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 248
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v6, "RuntimeStart"

    const-string/jumbo v7, "SchemeHelper"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "isAllowJumpOutDingtalk occurs exception: "

    aput-object v9, v8, v5

    .line 249
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 248
    invoke-static {v6, v7, v3, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_1
    move v3, v5

    .line 252
    goto :goto_0

    .line 248
    .restart local v2    # "throwable":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return v4

    .line 114
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 115
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v6, "dingtalk"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v4, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    new-instance v6, Lhsb$1;

    invoke-direct {v6, p0, p1}, Lhsb$1;-><init>(Lhsb;Landroid/content/Context;)V

    invoke-interface {v4, p2, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    move v4, v5

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string/jumbo v6, "tel"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 132
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v4, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    new-instance v6, Lhsb$2;

    invoke-direct {v6, p0, p1}, Lhsb$2;-><init>(Lhsb;Landroid/content/Context;)V

    invoke-interface {v4, p2, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    move v4, v5

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    const-string/jumbo v6, "sms"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "mailto"

    .line 147
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 148
    :cond_4
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v4, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    new-instance v6, Lhsb$3;

    invoke-direct {v6, p0, p1}, Lhsb$3;-><init>(Lhsb;Landroid/content/Context;)V

    invoke-interface {v4, p2, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    move v4, v5

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    const-string/jumbo v6, "qr.dingtalk.com"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "/page/link"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 159
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v4, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    new-instance v6, Lhsb$4;

    invoke-direct {v6, p0, p1}, Lhsb$4;-><init>(Lhsb;Landroid/content/Context;)V

    invoke-interface {v4, p2, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    move v4, v5

    .line 168
    goto/16 :goto_0

    .line 169
    :cond_6
    const-string/jumbo v6, "qr.dingtalk.com"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "/action/debug_login"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 170
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v4, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    new-instance v6, Lhsb$5;

    invoke-direct {v6, p0, p1}, Lhsb$5;-><init>(Lhsb;Landroid/content/Context;)V

    invoke-interface {v4, p2, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    move v4, v5

    .line 179
    goto/16 :goto_0

    .line 180
    :cond_7
    const-string/jumbo v6, "qr.dingtalk.com"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "qr_host_enable_v451"

    .line 181
    invoke-static {v6, v5}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 182
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v4, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    new-instance v6, Lhsb$6;

    invoke-direct {v6, p0, p1}, Lhsb$6;-><init>(Lhsb;Landroid/content/Context;)V

    invoke-interface {v4, p2, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    move v4, v5

    .line 191
    goto/16 :goto_0

    .line 193
    :cond_8
    const-string/jumbo v6, "https"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "space.dingtalk.com"

    .line 194
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "pre-space.dingtalk.com"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    const-string/jumbo v6, "/share/link.html"

    .line 195
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 196
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    const-string/jumbo v6, "key"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v6, v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    move v4, v5

    .line 197
    goto/16 :goto_0

    .line 199
    :cond_a
    const-string/jumbo v6, "http"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "https"

    .line 200
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1210
    if-eqz v3, :cond_0

    .line 1211
    invoke-static {v3}, Lhsb;->a(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1212
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1213
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1214
    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1217
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 1218
    goto/16 :goto_0
.end method
