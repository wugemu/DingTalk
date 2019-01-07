.class final Lcom/alibaba/android/rimet/RimetDDContext$56;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcqo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initDingtalkMiddle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$56;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1545
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 1595
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1548
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const-string/jumbo v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1549
    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$56$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/rimet/RimetDDContext$56$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$56;Landroid/content/Context;Ljava/lang/String;)V

    .line 1569
    .local v2, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 1570
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {v4, v2, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    check-cast v2, Lcma;

    .line 1572
    .restart local v2    # "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Lcma;)V

    goto :goto_0

    .line 1576
    .end local v2    # "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_5

    .line 1577
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1579
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v1

    .line 1580
    .local v1, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    const-string/jumbo v4, "com.alibaba.android.rimet.category.WEB"

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 1583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1584
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1587
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/4 v5, 0x0

    .line 1588
    invoke-virtual {v4, p1, v3, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1591
    .end local v1    # "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1592
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
