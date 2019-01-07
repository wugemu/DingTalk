.class public final Lhec;
.super Lhdu;
.source "StickPageDelegate.java"


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Landroid/app/Activity;

.field public f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

.field public g:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    sput-object v0, Lhec;->i:Ljava/util/Set;

    const-string/jumbo v1, "jsform.hz.taeapp.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lhec;->i:Ljava/util/Set;

    const-string/jumbo v1, "m.iread.wo.cn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v7, 0x10008000

    const/high16 v6, 0x10000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 67
    iput-boolean v4, p0, Lhec;->g:Z

    .line 82
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 83
    iput-object p1, p0, Lhec;->e:Landroid/app/Activity;

    .line 84
    iput-object p2, p0, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    .line 85
    invoke-interface {p2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lhec;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    invoke-static {v0}, Lhec;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1169
    :cond_0
    sget-object v1, Lhec;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lhec;->g:Z

    if-nez v1, :cond_3

    sget-object v1, Lhec;->b:Ljava/lang/String;

    .line 1171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lhec;->e:Landroid/app/Activity;

    .line 1172
    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v1}, Lhec;->b(I)I

    move-result v1

    if-gt v1, v5, :cond_3

    .line 1173
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    const-string/jumbo v2, "url"

    sget-object v3, Lhec;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string/jumbo v2, "title"

    sget-object v3, Lhec;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string/jumbo v2, "intentFlag"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1177
    sput v7, Lhec;->d:I

    .line 1178
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1179
    iput-boolean v4, p0, Lhec;->g:Z

    .line 1180
    iget-object v1, p0, Lhec;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v1}, Lhdo;->b(I)Landroid/app/ActivityManager$AppTask;

    move-result-object v1

    .line 1181
    if-eqz v1, :cond_1

    .line 1182
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    .line 1185
    :cond_1
    const-string/jumbo v1, "H5"

    const-string/jumbo v2, "stickPage==="

    const-string/jumbo v3, "\u4e4b\u524d\u6709\u5fae\u5e94\u7528\u7f6e\u9876\u4e86\uff0c\u4f46\u662f\u4e0d\u662f\u5f53\u524d\u7684\u5fae\u5e94\u7528\uff0c\u6240\u4ee5\u9700\u8981\u8bbe\u7f6e\u65b0\u7684flag"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1188
    .restart local v0    # "url":Ljava/lang/String;
    :cond_3
    sget-object v1, Lhec;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhec;->e:Landroid/app/Activity;

    .line 1189
    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v1}, Lhec;->b(I)I

    move-result v1

    if-gt v1, v5, :cond_2

    .line 1190
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    const-string/jumbo v2, "url"

    sget-object v3, Lhec;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    const-string/jumbo v2, "title"

    sget-object v3, Lhec;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const-string/jumbo v2, "intentFlag"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1194
    sput v6, Lhec;->d:I

    .line 1195
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1196
    const-string/jumbo v1, "H5"

    const-string/jumbo v2, "stickPage==="

    const-string/jumbo v3, "\u4ece\u804a\u5929\u300e\u5fae\u5e94\u7528\u7f6e\u9876\u300f\u8fdb\u6765\uff0c\u4e4b\u524d\u6b64\u5fae\u5e94\u7528\u7f6e\u9876\u4e86\uff0c\u4f46\u662f\u4fdd\u5b58\u7684\u72b6\u6001\u88ab\u9500\u6bc1\u4e86\uff0c\u76ee\u524d\u53c8\u8fdb\u6765\u4e86\uff0c\u7b49\u4e8e\u8bf4\u72b6\u6001\u53c8\u51fa\u6765\u4e86\uff0c\u6240\u4ee5\u9700\u8981\u8bbe\u7f6e\u65b0\u7684flag"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iput-boolean v5, p0, Lhec;->g:Z

    goto :goto_0
.end method

.method static synthetic a(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 50
    sput p0, Lhec;->d:I

    return p0
.end method

.method static synthetic a(Lhec;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;
    .locals 1
    .param p0, "x0"    # Lhec;

    .prologue
    .line 50
    iget-object v0, p0, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    return-object v0
.end method

.method static synthetic a(Lhec;Z)Z
    .locals 1
    .param p0, "x0"    # Lhec;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhec;->g:Z

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2284
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    sget v10, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v7, v10, :cond_1

    .line 2288
    const-class v7, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v10, "dt_function"

    const-string/jumbo v11, "stick_page_enable"

    invoke-interface {v7, v10, v11}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v7

    .line 2289
    if-eqz v7, :cond_1

    .line 2290
    invoke-interface {v7}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 2291
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2292
    invoke-static {v7}, Ligb;->f(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    move v7, v9

    .line 320
    :goto_0
    if-nez v7, :cond_2

    move v7, v8

    .line 374
    :goto_1
    return v7

    :cond_0
    move v7, v8

    .line 2292
    goto :goto_0

    :cond_1
    move v7, v9

    .line 2295
    goto :goto_0

    .line 324
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-ge v7, v10, :cond_4

    :cond_3
    move v7, v8

    .line 326
    goto :goto_1

    .line 329
    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 330
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_5

    move v7, v8

    .line 331
    goto :goto_1

    .line 334
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "uriHost":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    .line 336
    goto :goto_1

    .line 342
    :cond_6
    :try_start_0
    const-string/jumbo v7, "dd_stick"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "bizStickValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "true"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v9

    .line 345
    goto :goto_1

    .line 346
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "false"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    .line 347
    goto :goto_1

    .line 350
    .end local v0    # "bizStickValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 351
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-static {}, Lhft;->a()Lhfu;

    move-result-object v7

    invoke-interface {v7}, Lhfu;->b()Ljava/util/List;

    move-result-object v6

    .line 356
    .local v6, "whiteDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_9

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v9

    .line 357
    goto :goto_1

    .line 361
    :cond_9
    sget-object v7, Lhri;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    .local v1, "disableHost":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    move v7, v8

    .line 363
    goto/16 :goto_1

    .line 2304
    .end local v1    # "disableHost":Ljava/lang/String;
    :cond_b
    const-class v7, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v10, "dt_function"

    const-string/jumbo v11, "open_platform_stick_webview_all_enable"

    invoke-interface {v7, v10, v11}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v7

    .line 2305
    if-eqz v7, :cond_d

    .line 2306
    invoke-interface {v7}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 2307
    const-string/jumbo v10, "true"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v9

    .line 370
    .local v3, "stickAllEnable":Z
    :goto_2
    if-eqz v3, :cond_e

    move v7, v9

    .line 371
    goto/16 :goto_1

    .line 2310
    .end local v3    # "stickAllEnable":Z
    :cond_c
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    sget v10, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v7, v10, :cond_d

    move v3, v9

    .line 2311
    goto :goto_2

    :cond_d
    move v3, v8

    .line 2315
    goto :goto_2

    .restart local v3    # "stickAllEnable":Z
    :cond_e
    move v7, v8

    .line 374
    goto/16 :goto_1
.end method

.method private static b(I)I
    .locals 3
    .param p0, "taskId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 245
    invoke-static {p0}, Lhdo;->b(I)Landroid/app/ActivityManager$AppTask;

    move-result-object v0

    .line 246
    .local v0, "appTask":Landroid/app/ActivityManager$AppTask;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 248
    .local v1, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    .line 249
    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 252
    .end local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    sput-object p0, Lhec;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lhec;)Z
    .locals 1
    .param p0, "x0"    # Lhec;

    .prologue
    .line 50
    iget-boolean v0, p0, Lhec;->g:Z

    return v0
.end method

.method static synthetic c(Lhec;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhec;

    .prologue
    .line 50
    iget-object v0, p0, Lhec;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    sput-object p0, Lhec;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 378
    sput-object v0, Lhec;->b:Ljava/lang/String;

    .line 379
    sput-object v0, Lhec;->c:Ljava/lang/String;

    .line 380
    const v0, 0x10008000

    sput v0, Lhec;->d:I

    .line 381
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lhec;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 91
    invoke-super {p0}, Lhdu;->a()V

    .line 2096
    iget-object v0, p0, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhec;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    new-instance v0, Lhec$1;

    invoke-direct {v0, p0}, Lhec$1;-><init>(Lhec;)V

    iput-object v0, p0, Lhec;->h:Landroid/content/BroadcastReceiver;

    .line 2125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2126
    const-string/jumbo v1, "com.workapp.lightapp.microapp.TOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2127
    const-string/jumbo v1, "com.workapp.lightapp.microapp.top.CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2128
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lhec;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0}, Lhdu;->b()V

    .line 262
    iput-object v2, p0, Lhec;->e:Landroid/app/Activity;

    .line 263
    iput-object v2, p0, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    .line 264
    iget-object v0, p0, Lhec;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lhec;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 266
    iput-object v2, p0, Lhec;->h:Landroid/content/BroadcastReceiver;

    .line 268
    :cond_0
    return-void
.end method
