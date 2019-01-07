.class final Lcom/alibaba/android/rimet/utils/UrlUtils$9;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils;->c(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 984
    const/4 v6, 0x0

    .line 985
    .local v6, "page":Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "im"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 986
    :cond_0
    const-string/jumbo v6, "to_session"

    .line 1034
    :cond_1
    :goto_0
    const-string/jumbo v11, "to_page"

    invoke-virtual {p1, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->c:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1036
    const-string/jumbo v11, "showAnim"

    iget-object v12, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->c:Ljava/lang/String;

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    :cond_2
    const/high16 v11, 0x14000000

    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    return-object p1

    .line 987
    :cond_3
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "ding"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 988
    :cond_4
    const-string/jumbo v6, "to_ding"

    .line 989
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "from"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 990
    .local v3, "from":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 991
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 992
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "from"

    invoke-interface {v5, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string/jumbo v11, "tab_switch_ding"

    invoke-static {v11, v5}, Lcps;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 995
    .end local v3    # "from":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "word"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "work"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 996
    :cond_6
    const-string/jumbo v6, "to_oa"

    .line 997
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "corpid"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 998
    .local v2, "corpId":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 999
    const-string/jumbo v11, "corpid"

    invoke-virtual {p1, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    :cond_7
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "groupkey"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1002
    .local v4, "groupKey":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1003
    const-string/jumbo v11, "groupkey"

    invoke-virtual {p1, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    :cond_8
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "appid"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, "appId":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 1008
    const-string/jumbo v11, "appid"

    invoke-virtual {p1, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    :cond_9
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "agentid"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "agentId":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 1012
    const-string/jumbo v11, "agentid"

    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    :cond_a
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "scene"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1015
    .local v9, "scene":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 1016
    const-string/jumbo v11, "scene"

    invoke-virtual {p1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    :cond_b
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "dd_params"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1019
    .local v7, "params":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 1020
    const-string/jumbo v11, "dd_params"

    invoke-virtual {p1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    :cond_c
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "tips"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1023
    .local v10, "tips":Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 1024
    const-string/jumbo v11, "tips"

    invoke-virtual {p1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    :cond_d
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->b:Landroid/net/Uri;

    const-string/jumbo v12, "reload"

    invoke-static {v11, v12}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1028
    .local v8, "reload":Ljava/lang/String;
    const-string/jumbo v11, "reload"

    const-string/jumbo v12, "true"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1029
    .end local v0    # "agentId":Ljava/lang/String;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v4    # "groupKey":Ljava/lang/String;
    .end local v7    # "params":Ljava/lang/String;
    .end local v8    # "reload":Ljava/lang/String;
    .end local v9    # "scene":Ljava/lang/String;
    .end local v10    # "tips":Ljava/lang/String;
    :cond_e
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "contact"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1030
    :cond_f
    const-string/jumbo v6, "to_contact"

    goto/16 :goto_0

    .line 1031
    :cond_10
    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "4"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$9;->a:Ljava/lang/String;

    const-string/jumbo v12, "more"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1032
    :cond_11
    const-string/jumbo v6, "to_more"

    goto/16 :goto_0
.end method
