.class public final Lhsc;
.super Ljava/lang/Object;
.source "UrlRewriteHelper.java"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lhsc;->a:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhsc;->b:Ljava/util/Map;

    .line 31
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "attend.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "iattend.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "landray.dingtalkapps.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "attendance.alibaba-inc.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "h5.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "appcenter.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "tms.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "oa.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "crm-app.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "app.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "act.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "industry-fab.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "callapp.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "netmanager.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "reservation.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "attendance.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "perks.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "t.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lhsc;->a:Ljava/util/Set;

    const-string/jumbo v1, "aflow.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lhsc;->b:Ljava/util/Map;

    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/zha"

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/pre-zha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/utils/HttpDnsHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    move-object/from16 v7, p0

    .line 63
    .local v7, "originUrl":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v14

    const-class v15, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v14, v15}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v14

    sget v15, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v14, v15, :cond_b

    const-string/jumbo v14, "https"

    .line 64
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "http"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 68
    .local v1, "caseGot":Z
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 69
    .local v13, "uri":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "scheme":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/Uri;->getPort()I

    move-result v9

    .line 72
    .local v9, "port":I
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, "query":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "fragment":Ljava/lang/String;
    sget-object v14, Lhsc;->b:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 79
    .local v5, "keyUri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->getPort()I

    move-result v15

    if-ne v9, v15, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 80
    sget-object v14, Lhsc;->b:Ljava/util/Map;

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 81
    .local v10, "preUri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 82
    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v10}, Landroid/net/Uri;->getPort()I

    move-result v9

    .line 84
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 85
    const/4 v1, 0x1

    .line 90
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyUri":Landroid/net/Uri;
    .end local v10    # "preUri":Landroid/net/Uri;
    :cond_2
    if-nez v1, :cond_4

    .line 91
    sget-object v14, Lhsc;->a:Ljava/util/Set;

    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1136
    const-string/jumbo v14, "attendance.alibaba-inc.com"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1137
    const-string/jumbo v3, "pre-attendance.dingtalk.com"

    .line 1139
    .end local v3    # "host":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "pre-"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .restart local v3    # "host":Ljava/lang/String;
    const/4 v1, 0x1

    .line 97
    :cond_4
    if-eqz v1, :cond_b

    .line 98
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 100
    .local v6, "newUrl":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz v12, :cond_5

    .line 101
    invoke-virtual {v6, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    const-string/jumbo v15, "://"

    invoke-virtual {v14, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 104
    :cond_5
    if-eqz v3, :cond_6

    .line 105
    invoke-virtual {v6, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 108
    :cond_6
    const/4 v14, -0x1

    if-eq v9, v14, :cond_7

    .line 109
    const-string/jumbo v14, ":"

    invoke-virtual {v6, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 112
    :cond_7
    if-eqz v8, :cond_8

    .line 113
    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 116
    :cond_8
    if-eqz v11, :cond_9

    .line 117
    const-string/jumbo v14, "?"

    invoke-virtual {v6, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 120
    :cond_9
    if-eqz v2, :cond_a

    .line 121
    const-string/jumbo v14, "#"

    invoke-virtual {v6, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 124
    :cond_a
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "url rewritten as [ "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p0, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, " ]"

    aput-object v16, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcms;->a(Ljava/lang/String;)V

    .line 128
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "rewritePrepub originUrl="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " newUrl="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v1    # "caseGot":Z
    .end local v2    # "fragment":Ljava/lang/String;
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "newUrl":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "port":I
    .end local v11    # "query":Ljava/lang/String;
    .end local v12    # "scheme":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_b
    return-object p0
.end method
