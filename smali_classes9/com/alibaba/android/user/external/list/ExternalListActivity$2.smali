.class final Lcom/alibaba/android/user/external/list/ExternalListActivity$2;
.super Ljava/lang/Object;
.source "ExternalListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ExternalListActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 159
    iget-object v5, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lblg;

    .line 1059
    .local v1, "tipsObject":Lblg;
    iget-object v4, v1, Lblg;->d:Ljava/lang/String;

    .line 162
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "display_enterprise_oid"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 164
    .local v2, "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    :cond_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-virtual {v5, v6, v4, v10}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "tipsObject":Lblg;
    .end local v2    # "orgId":J
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v5

    sget-object v6, Lble;->u:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 173
    iget-object v5, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;->a:Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    return-void
.end method
