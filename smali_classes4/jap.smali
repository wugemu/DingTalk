.class public final Ljap;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Ljao;


# static fields
.field public static a:Z

.field private static c:Landroid/app/Application;

.field private static d:Ljap;


# instance fields
.field b:I

.field private e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljai;

.field private o:Ljan;

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Ljap;->a:Z

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "secretID"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-direct {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount;-><init>()V

    iput-object v0, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 49
    iput-boolean v1, p0, Ljap;->f:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljap;->g:Z

    .line 51
    iput-boolean v1, p0, Ljap;->h:Z

    .line 52
    iput-boolean v1, p0, Ljap;->i:Z

    .line 53
    iput-boolean v1, p0, Ljap;->j:Z

    .line 78
    new-instance v0, Ljai;

    invoke-direct {v0}, Ljai;-><init>()V

    iput-object v0, p0, Ljap;->n:Ljai;

    .line 79
    new-instance v0, Ljan;

    invoke-direct {v0}, Ljan;-><init>()V

    iput-object v0, p0, Ljap;->o:Ljan;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ljap;->p:Landroid/os/Handler;

    .line 84
    invoke-direct/range {p0 .. p6}, Ljap;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 85
    return-void
.end method

.method public static a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Ljap;->c:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic a(Ljap;)Ljai;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljap;->n:Ljai;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appToken"    # Ljava/lang/String;
    .param p2, "secretID"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Ljap;->d:Ljap;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljap;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljap;->d:Ljap;

    .line 75
    :cond_0
    sget-object v0, Ljap;->d:Ljap;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I

    .prologue
    .line 279
    const v1, 0x20131120

    if-ne p1, v1, :cond_0

    .line 280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "\u4eb2,\u4f60\u8fd8\u6ca1\u5b89\u88c5\u6765\u5f80\u5ba2\u6237\u7aef\u54e6"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 282
    const-string/jumbo v1, "\u901f\u901f\u4e0b\u8f7d\u5373\u90012\u5143,\u53c2\u52a0\u5206\u4eab\u8fd8\u53ef\u8d62\u514d\u5355!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Ljap$2;

    invoke-direct {v2}, Ljap$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    const-string/jumbo v1, "\u4e0b\u8f7d"

    new-instance v2, Ljap$3;

    invoke-direct {v2}, Ljap$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 303
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string/jumbo v1, "\u8bf7\u4e0b\u8f7d\u6700\u65b0\u7248\u672c\u7684\u6765\u5f80"

    .line 1068
    sget-object v2, Ljap;->c:Landroid/app/Application;

    .line 300
    invoke-static {v1, v2}, Ljar;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 2068
    sget-object v1, Ljap;->c:Landroid/app/Application;

    .line 301
    const-string/jumbo v2, "http://m.laiwang.com"

    invoke-static {v1, v2}, Ljas;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljap;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Ljap;->b:I

    return-void
.end method

.method static synthetic a(Ljap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljaj;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x10000000

    const/4 v5, 0x0

    .line 97
    .line 6098
    const-string/jumbo v0, "DYNAMIC2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6099
    const-string/jumbo v1, "com.alibaba.android.babylon"

    const-string/jumbo v2, "com.alibaba.android.babylon.biz.im.activity.LaiwangShareActivity"

    .line 6145
    invoke-static {p1, v1}, Ljas;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6146
    if-nez v0, :cond_1

    .line 6100
    :cond_0
    :goto_0
    return-void

    .line 6149
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6150
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6151
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6154
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 6156
    if-eqz v0, :cond_0

    .line 6162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6163
    const-string/jumbo v3, "com.alibaba.android.bbl.laiwang.feeds.share"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6165
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6167
    if-eqz p5, :cond_3

    .line 6168
    iget-object v1, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljaj;->setAppkey(Ljava/lang/String;)V

    .line 6169
    iget-object v1, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljaj;->setSecret(Ljava/lang/String;)V

    .line 6170
    invoke-interface {p4}, Ljaj;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6177
    :goto_1
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 6178
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6180
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6172
    :cond_3
    const-string/jumbo v1, "appToken"

    iget-object v2, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v2}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6173
    const-string/jumbo v1, "randomKey"

    iget-object v2, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v2}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiRandomKey()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 6101
    :cond_4
    const-string/jumbo v1, "com.alibaba.android.babylon"

    const-string/jumbo v2, "com.alibaba.android.babylon.biz.im.activity.RecentIMListActivity"

    .line 7105
    invoke-static {p1, v1}, Ljas;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7106
    if-eqz v0, :cond_0

    .line 7109
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7110
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7111
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7114
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 7115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7116
    if-eqz v0, :cond_0

    .line 7122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7123
    const-string/jumbo v3, "com.laiwang.recent.im.share.sdk"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7125
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7127
    if-eqz p5, :cond_6

    .line 7128
    iget-object v1, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljaj;->setAppkey(Ljava/lang/String;)V

    .line 7129
    iget-object v1, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljaj;->setSecret(Ljava/lang/String;)V

    .line 7130
    invoke-interface {p4}, Ljaj;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7136
    :goto_2
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7137
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 7138
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7140
    :cond_5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7132
    :cond_6
    const-string/jumbo v1, "appToken"

    iget-object v2, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v2}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7133
    const-string/jumbo v1, "randomKey"

    iget-object v2, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v2}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiRandomKey()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method static synthetic a(Ljap;Z)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljap;->i:Z

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 2
    .param p1, "version"    # I
    .param p2, "appName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Ljap;->n:Ljai;

    new-instance v1, Ljap$1;

    invoke-direct {v1, p0, p1, p2}, Ljap$1;-><init>(Ljap;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljai;->a(Ljai$a;)Z

    move-result v0

    iput-boolean v0, p0, Ljap;->f:Z

    .line 216
    iget-boolean v0, p0, Ljap;->f:Z

    return v0
.end method

.method static synthetic b(Ljap;)Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    return-object v0
.end method

.method static synthetic b(Ljap;Z)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljap;->j:Z

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "secretID"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 553
    iget-object v0, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0, p2}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->setLwapiToken(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0, p3}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->setLwapiSecret(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Ljap;->o:Ljan;

    iget-object v1, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 5028
    iput-object v1, v0, Ljan;->a:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 556
    iput-object p6, p0, Ljap;->k:Ljava/lang/String;

    .line 557
    iput p4, p0, Ljap;->m:I

    .line 558
    iput-object p5, p0, Ljap;->l:Ljava/lang/String;

    .line 560
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 5062
    sput-object v0, Ljap;->c:Landroid/app/Application;

    .line 562
    iget-boolean v0, p0, Ljap;->h:Z

    if-eqz v0, :cond_0

    .line 571
    :goto_0
    return v2

    .line 566
    :cond_0
    iget-boolean v0, p0, Ljap;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljap;->n:Ljai;

    invoke-virtual {v0}, Ljai;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 567
    :cond_1
    iget-object v0, p0, Ljap;->k:Ljava/lang/String;

    invoke-direct {p0, p4, v0}, Ljap;->a(ILjava/lang/String;)Z

    .line 569
    :cond_2
    iput-boolean v2, p0, Ljap;->h:Z

    goto :goto_0
.end method

.method static synthetic c(Ljap;)Ljan;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljap;->o:Ljan;

    return-object v0
.end method

.method static synthetic d(Ljap;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Ljap;->b:I

    return v0
.end method

.method static synthetic e(Ljap;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Ljap;->g:Z

    return v0
.end method

.method static synthetic f(Ljap;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Ljap;->i:Z

    return v0
.end method


# virtual methods
.method public final a(Ljao$a;)V
    .locals 1
    .param p1, "iApiCallback"    # Ljao$a;

    .prologue
    .line 576
    iget-object v0, p0, Ljap;->o:Ljan;

    .line 6024
    iput-object p1, v0, Ljan;->b:Ljao$a;

    .line 577
    return-void
.end method

.method public final a(Landroid/content/Context;Ljaj;I)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljaj;
    .param p3, "version"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 308
    if-nez p1, :cond_0

    .line 309
    sget-object p1, Ljap;->c:Landroid/app/Application;

    .line 2524
    :cond_0
    iget-object v0, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ljap;->e:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiSecret()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljap;->m:I

    iget-object v5, p0, Ljap;->l:Ljava/lang/String;

    iget-object v6, p0, Ljap;->k:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljap;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 4068
    sget-object v0, Ljap;->c:Landroid/app/Application;

    .line 3090
    const-string/jumbo v1, "com.alibaba.android.babylon"

    invoke-static {v0, v1}, Ljas;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v10

    .line 2528
    :goto_0
    if-nez v0, :cond_3

    .line 2529
    iget v0, p0, Ljap;->m:I

    invoke-static {p1, v0}, Ljap;->a(Landroid/content/Context;I)V

    move v8, v11

    .line 314
    .local v8, "nRequestDelay":I
    :goto_1
    if-ne v8, v11, :cond_6

    .line 369
    :cond_1
    :goto_2
    return v9

    .end local v8    # "nRequestDelay":I
    :cond_2
    move v0, v9

    .line 3090
    goto :goto_0

    .line 2535
    :cond_3
    iget-boolean v0, p0, Ljap;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljap;->n:Ljai;

    invoke-virtual {v0}, Ljai;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2537
    :cond_4
    iget v0, p0, Ljap;->m:I

    iget-object v1, p0, Ljap;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljap;->a(ILjava/lang/String;)Z

    .line 2538
    const/16 v0, 0x7d0

    .line 2541
    :goto_3
    iget-boolean v1, p0, Ljap;->f:Z

    if-nez v1, :cond_5

    .line 2542
    iget v0, p0, Ljap;->m:I

    invoke-static {p1, v0}, Ljap;->a(Landroid/content/Context;I)V

    move v8, v11

    .line 2543
    goto :goto_1

    :cond_5
    move v8, v0

    .line 2546
    goto :goto_1

    .line 318
    .restart local v8    # "nRequestDelay":I
    :cond_6
    invoke-interface {p2}, Ljaj;->checkArgs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    const-string/jumbo v0, "com.alibaba.android.babylon"

    invoke-static {p1, v0}, Lcom/laiwang/sdk/openapi/LwSecurity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    move-object v7, p1

    .line 328
    .local v7, "apiContext":Landroid/content/Context;
    iget-object v0, p0, Ljap;->p:Landroid/os/Handler;

    new-instance v1, Ljap$4;

    const v2, 0x20131023

    invoke-direct {v1, p0, v7, v2, p2}, Ljap$4;-><init>(Ljap;Landroid/content/Context;ILjaj;)V

    .line 367
    int-to-long v2, v8

    .line 328
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v9, v10

    .line 369
    goto :goto_2

    .end local v7    # "apiContext":Landroid/content/Context;
    .end local v8    # "nRequestDelay":I
    :cond_7
    move v0, v9

    goto :goto_3
.end method
