.class public Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;
.super Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.source "DocWebViewActivity.java"

# interfaces
.implements Lbqu;
.implements Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;


# instance fields
.field protected a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Lbrs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;-><init>()V

    .line 63
    const-string/jumbo v0, "type"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->m:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "updateStyle"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->n:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->o:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->p:Z

    return v0
.end method

.method private h()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    sget-object v2, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    .line 144
    .local v2, "pageType":Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-static {v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    .local v0, "currentUri":Landroid/net/Uri;
    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    const-string/jumbo v5, "d"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    sget-object v2, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    .line 160
    .end local v0    # "currentUri":Landroid/net/Uri;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 152
    .restart local v0    # "currentUri":Landroid/net/Uri;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "s"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    sget-object v2, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeSheet:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0    # "currentUri":Landroid/net/Uri;
    .end local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    if-eqz v1, :cond_0

    .line 275
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 276
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    .line 8158
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->c:Z

    .line 276
    if-nez v1, :cond_1

    .line 277
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->o:Z

    if-nez v1, :cond_0

    .line 278
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->o:Z

    .line 279
    const-string/jumbo v1, "panelVisible"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a(Ljava/util/HashMap;)V

    .line 290
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 283
    .restart local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->o:Z

    .line 284
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const-string/jumbo v1, "panelVisible"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 2
    .param p1, "webView"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    const-string/jumbo v0, "doc_webview"

    invoke-virtual {p1, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setTag(Ljava/lang/Object;)V

    .line 183
    const-string/jumbo v0, "internal.alidoc.navigation"

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 184
    const-string/jumbo v0, "internal.alidoc"

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 186
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 222
    .local p1, "kvData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->h()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    move-result-object v5

    .line 228
    .local v5, "pageType":Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
    sget-object v8, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    if-ne v8, v5, :cond_3

    .line 229
    const-string/jumbo v8, "insertImage"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "mention"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "insertLink"

    .line 230
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 231
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->p:Z

    .line 235
    :cond_3
    sget-object v8, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeSheet:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    if-ne v8, v5, :cond_4

    .line 237
    const-string/jumbo v8, "insertImage"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 238
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    if-eqz v8, :cond_4

    .line 239
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->e()V

    .line 244
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .local v3, "jsonObj":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v6, "propertyEvent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 247
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 252
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 253
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 255
    .local v7, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_2
    if-eqz v7, :cond_5

    .line 260
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 264
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v8, :cond_0

    .line 265
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const-string/jumbo v9, "updateStyle"

    invoke-virtual {v8, v9, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 267
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "dt_doc_property_event"

    invoke-interface {v8, v9, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 268
    const-string/jumbo v8, "doc"

    const-string/jumbo v9, "DocWebViewActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "dt_doc_property_event propertyEvent:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 294
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->o:Z

    .line 295
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 296
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->p:Z

    if-eqz v1, :cond_0

    .line 297
    const-string/jumbo v1, "focus"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    const-string/jumbo v1, "panelVisible"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a(Ljava/util/HashMap;)V

    .line 301
    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "kvData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getToolbarController()Lbqv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getToolbarController()Lbqv;

    move-result-object v4

    .line 6069
    iget-object v0, v4, Lbqv;->a:Lbqw;

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    .line 116
    :cond_0
    :goto_0
    const-string/jumbo v0, "toolbarToggle"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeSheet:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->h()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 118
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_1
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->p:Z

    .line 137
    :cond_2
    return-void

    .line 6073
    :cond_3
    iget-object v0, v4, Lbqv;->a:Lbqw;

    invoke-interface {v0}, Lbqw;->a()Ljava/util/List;

    move-result-object v0

    .line 6074
    if-eqz v0, :cond_0

    .line 6080
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqy;

    .line 6081
    if-eqz v0, :cond_4

    .line 6085
    invoke-virtual {v0}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6086
    invoke-virtual {v0}, Lbqy;->b()[Ljava/lang/String;

    move-result-object v6

    .line 6160
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 6161
    if-eqz p1, :cond_6

    if-eqz v6, :cond_6

    move v1, v3

    .line 6162
    :goto_2
    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 6163
    aget-object v8, v6, v1

    .line 6164
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 6165
    if-eqz v9, :cond_5

    .line 6166
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6162
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6086
    :cond_6
    invoke-virtual {v0, v7}, Lbqy;->a(Ljava/util/HashMap;)V

    .line 6088
    invoke-virtual {v0}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    move-result-object v1

    sget-object v6, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeCommand:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    if-eq v1, v6, :cond_7

    .line 6089
    iget-object v1, v4, Lbqv;->b:Lbqy;

    if-eqz v1, :cond_7

    iget-object v1, v4, Lbqv;->b:Lbqy;

    if-ne v1, v0, :cond_7

    .line 6090
    iget-object v1, v4, Lbqv;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v4, Lbqv;->b:Lbqy;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    .line 6091
    if-eqz v1, :cond_7

    .line 6092
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lbqv$1;

    invoke-direct {v7, v4, v1, v0}, Lbqv$1;-><init>(Lbqv;Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;Lbqy;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 6104
    :cond_7
    invoke-virtual {v0}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    move-result-object v1

    sget-object v6, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeCommand:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    if-ne v1, v6, :cond_9

    .line 6105
    invoke-virtual {v0}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 6106
    const/4 v2, 0x1

    move v0, v2

    :goto_3
    move v2, v0

    .line 6109
    goto/16 :goto_1

    .line 6111
    :cond_8
    if-eqz v2, :cond_0

    iget-object v0, v4, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    if-eqz v0, :cond_0

    .line 6112
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbqv$2;

    invoke-direct {v1, v4}, Lbqv$2;-><init>(Lbqv;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method public getRootContentViewLayoutRes()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lbqt$e;->doc_webview_activity:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    new-instance v0, Lbrs;

    invoke-direct {v0, p0}, Lbrs;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2081
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    if-eqz v0, :cond_2

    .line 2082
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 3077
    iget-object v2, v1, Lbrs;->a:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-nez v0, :cond_3

    .line 2083
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 3760
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 4066
    iget-object v2, v0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    if-nez v2, :cond_1

    .line 4067
    new-instance v2, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;-><init>()V

    iput-object v2, v0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .line 4070
    :cond_1
    iget-object v2, v0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .line 4079
    iput-object v0, v2, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    .line 4071
    if-eqz v1, :cond_2

    .line 4072
    iget-object v0, v0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .line 5074
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 5075
    new-instance v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;-><init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->b:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 5097
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->hideToolbar()V

    .line 5098
    sget v0, Lbqt$d;->ui_common_base_doc_activity_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    .line 5099
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setFocusView(Landroid/view/View;)V

    .line 5100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setOnDispatchListener(Lbqu;)V

    .line 5101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;)V

    .line 5102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->h()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setPageType(Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5106
    :goto_1
    return-void

    .line 3085
    :cond_3
    iget-object v2, v1, Lbrs;->a:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 3089
    iget-object v0, v1, Lbrs;->a:Landroid/app/Activity;

    sget v2, Lbqt$d;->toolbar:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbrs;->b:Landroid/view/View;

    .line 3090
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3091
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    sget v2, Lbqt$d;->back_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lbrs;->f:Landroid/widget/RelativeLayout;

    .line 3092
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    sget v2, Lbqt$d;->more_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lbrs;->d:Landroid/widget/RelativeLayout;

    .line 3093
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    sget v2, Lbqt$d;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iput-object v0, v1, Lbrs;->g:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    .line 3094
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    sget v2, Lbqt$d;->close_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lbrs;->e:Landroid/widget/RelativeLayout;

    .line 3095
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    sget v2, Lbqt$d;->menu_right_item_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lbrs;->c:Landroid/widget/RelativeLayout;

    .line 3099
    :cond_4
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3100
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    iget-object v2, v1, Lbrs;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    .line 3101
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3103
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3104
    iget-object v0, v1, Lbrs;->a:Landroid/app/Activity;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3105
    iget-object v0, v1, Lbrs;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, v1, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3106
    iget-object v0, v1, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5104
    :catch_0
    move-exception v0

    .line 5105
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    .line 7111
    iget-object v1, v0, Lbrs;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 7112
    iget-object v1, v0, Lbrs;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7113
    iput-object v2, v0, Lbrs;->i:Ljava/util/List;

    .line 7116
    :cond_0
    iget-object v1, v0, Lbrs;->a:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 7117
    iput-object v2, v0, Lbrs;->a:Landroid/app/Activity;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->f()V

    .line 175
    :cond_2
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->onDestroy()V

    .line 176
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->onWindowFocusChanged(Z)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    sget-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->h()Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 193
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->p:Z

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$2;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_0
    return-void
.end method

.method public provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    .line 7122
    iget-object v0, v0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->q:Lbrs;

    .line 8122
    iget-object v0, v0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .line 217
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    goto :goto_0
.end method
