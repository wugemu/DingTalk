.class public final Lkln;
.super Ljava/lang/Object;
.source "BrowserSelector.java"


# static fields
.field static final a:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http://www.example.com"

    .line 65
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lkln;->a:Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkll;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 78
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "browsers":Ljava/util/List;, "Ljava/util/List<Lkll;>;"
    const/16 v4, 0x40

    .line 81
    .local v4, "queryFlag":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v6, v9, :cond_0

    .line 82
    const v4, 0x20040

    .line 84
    :cond_0
    sget-object v6, Lkln;->a:Landroid/content/Intent;

    .line 85
    invoke-virtual {v3, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 87
    .local v5, "resolvedActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 89
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {v1}, Lkln;->a(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    :try_start_0
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x40

    invoke-virtual {v3, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 98
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1146
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1147
    const-string/jumbo v11, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    invoke-virtual {v10, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const/4 v6, 0x0

    invoke-virtual {v3, v10, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    move v6, v7

    .line 98
    :goto_1
    if-eqz v6, :cond_2

    .line 99
    new-instance v6, Lkll;

    const/4 v10, 0x1

    invoke-direct {v6, v2, v10}, Lkll;-><init>(Landroid/content/pm/PackageInfo;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    new-instance v6, Lkll;

    const/4 v10, 0x0

    invoke-direct {v6, v2, v10}, Lkll;-><init>(Landroid/content/pm/PackageInfo;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    goto :goto_0

    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    move v6, v8

    .line 1149
    goto :goto_1

    .line 108
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lklm;)Lkll;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "browserMatcher"    # Lklm;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Lkln;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "allBrowsers":Ljava/util/List;, "Ljava/util/List<Lkll;>;"
    const/4 v1, 0x0

    .line 125
    .local v1, "bestMatch":Lkll;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkll;

    .line 130
    .local v2, "browser":Lkll;
    iget-object v4, v2, Lkll;->d:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    .end local v2    # "browser":Lkll;
    :goto_1
    return-object v2

    .line 135
    .restart local v2    # "browser":Lkll;
    :cond_1
    if-nez v1, :cond_0

    .line 138
    move-object v1, v2

    goto :goto_0

    .end local v2    # "browser":Lkll;
    :cond_2
    move-object v2, v1

    .line 142
    goto :goto_1
.end method

.method private static a(Landroid/content/pm/ResolveInfo;)Z
    .locals 7
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.category.BROWSABLE"

    .line 155
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 156
    invoke-virtual {v5}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v4

    .line 161
    :cond_1
    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v5}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_0

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, "supportsHttp":Z
    const/4 v3, 0x0

    .line 168
    .local v3, "supportsHttps":Z
    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v5}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    .local v1, "schemeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "http"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 172
    const-string/jumbo v5, "https"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 174
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 175
    const/4 v4, 0x1

    goto :goto_0
.end method
