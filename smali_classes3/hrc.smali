.class public final Lhrc;
.super Ljava/lang/Object;
.source "EAppExceptionTipsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "desc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 320
    sget v3, Lhdn$i;->app_warn_tips_layout:I

    invoke-static {p0, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 321
    .local v1, "tipsView":Landroid/view/View;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 333
    .end local v1    # "tipsView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 324
    .restart local v1    # "tipsView":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    sget v2, Lhdn$h;->tips_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {p1}, Lhdo;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    sget v2, Lhdn$h;->tips_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lhrc$6;

    invoke-direct {v3, v1}, Lhrc$6;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static a(Lhim;Ljava/lang/String;)Lhim;
    .locals 4
    .param p0, "appStableConfigModel"    # Lhim;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 210
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object p0, v1

    .line 224
    .end local p0    # "appStableConfigModel":Lhim;
    :cond_1
    :goto_0
    return-object p0

    .line 215
    .restart local p0    # "appStableConfigModel":Lhim;
    :cond_2
    iget-object v2, p0, Lhim;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhim;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 217
    sget-object v2, Lhri;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "disableHost":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p0, v1

    .line 219
    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)Lhim;
    .locals 6
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 50
    .line 1167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1192
    :goto_0
    return-object v0

    .line 1171
    :cond_1
    invoke-static {p1}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhim;

    .line 1177
    if-eqz v0, :cond_2

    .line 1181
    iget-object v4, v0, Lhim;->d:Ljava/lang/String;

    .line 1182
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1183
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1184
    iget-object v4, v0, Lhim;->e:Ljava/lang/String;

    .line 1185
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1186
    invoke-static {v0, v2}, Lhrc;->a(Lhim;Ljava/lang/String;)Lhim;

    move-result-object v0

    goto :goto_0

    .line 1188
    :cond_3
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1189
    if-eqz v4, :cond_2

    .line 1190
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1191
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1192
    invoke-static {v0, v2}, Lhrc;->a(Lhim;Ljava/lang/String;)Lhim;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 50
    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    .line 1394
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1395
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1396
    invoke-static {p0, v0}, Lhrf;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    sget v0, Lhdn$k;->system_call_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Liyv;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "callback":Liyv;, "Liyv<Landroid/view/View;>;"
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "f_lightapp_app_enable_fetch_error_view"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "EAppExceptionTipsManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhrc$1;

    invoke-direct {v1, p0, p1, p2}, Lhrc$1;-><init>(Landroid/content/Context;Ljava/lang/String;Liyv;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 50
    .line 2380
    if-eqz p0, :cond_0

    .line 2384
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2385
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2386
    check-cast v0, Landroid/view/ViewGroup;

    .line 2387
    if-eqz v0, :cond_0

    .line 2388
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string/jumbo v0, "EAppExceptionTipsManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhrc$2;

    invoke-direct {v1, p0}, Lhrc$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
