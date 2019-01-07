.class public final Lcom/uc/webview/export/internal/SDKFactory;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/SDKFactory$c;,
        Lcom/uc/webview/export/internal/SDKFactory$b;,
        Lcom/uc/webview/export/internal/SDKFactory$d;,
        Lcom/uc/webview/export/internal/SDKFactory$a;
    }
.end annotation


# static fields
.field public static A:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static B:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static C:Ljava/util/Map; = null
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

.field public static D:Ljava/lang/String; = null

.field public static E:Lcom/uc/webview/export/utility/SetupTask; = null

.field static F:Z = false

.field static G:Z = false

.field static H:Z = false

.field static I:Z = false

.field private static J:I = 0x0

.field private static K:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings; = null

.field private static L:Lcom/uc/webview/export/internal/interfaces/IPreloadManager; = null

.field private static M:Lcom/uc/webview/export/internal/AbstractWebViewFactory; = null

.field private static N:I = 0x0

.field private static O:Ljava/lang/String; = null

.field private static final P:Ljava/lang/Object;

.field private static Q:Z = false

.field public static a:Lcom/uc/webview/export/extension/NotAvailableUCListener; = null

.field public static b:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/ClassLoader; = null

.field public static d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit; = null

.field public static e:Landroid/content/Context; = null

.field public static f:I = 0x0

.field public static g:Z = false

.field public static final getCoreType:I = 0x2724
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final getGlobalSettings:I = 0x2726
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static h:Ljava/lang/String; = null

.field public static final handlePerformanceTests:I = 0x272e
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static i:I = 0x0

.field public static final isInited:I = 0x271a
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static j:J = 0x0L

.field public static k:I = 0x0

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:I = 0x0

.field public static p:Lcom/uc/webview/export/extension/InitCallback; = null

.field public static q:Z = false

.field public static r:Z = false

.field public static s:Z = false

.field public static final setBrowserFlag:I = 0x2719
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setCoreType:I = 0x2725
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setPreloadManager:I = 0x274b
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static final setWebViewFactory:I = 0x2718
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static t:Z

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static x:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static y:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCSetupException;",
            ">;"
        }
    .end annotation
.end field

.field public static z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    .line 91
    const-class v0, Lcom/uc/webview/export/internal/SDKFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    .line 93
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 95
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 97
    sget v0, Lcom/uc/webview/export/internal/SDKFactory$a;->a:I

    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->f:I

    .line 102
    sput v2, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    .line 104
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    .line 106
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->K:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 107
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->L:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    .line 108
    new-instance v0, Lcom/uc/webview/export/internal/SDKFactory$b;

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory$b;-><init>(B)V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->M:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    .line 112
    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->i:I

    .line 114
    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->N:I

    .line 115
    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->j:J

    .line 117
    sput v4, Lcom/uc/webview/export/internal/SDKFactory;->k:I

    .line 119
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->l:Z

    .line 120
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->m:Z

    .line 122
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->n:Z

    .line 134
    sput v2, Lcom/uc/webview/export/internal/SDKFactory;->o:I

    .line 138
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    .line 139
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->r:Z

    .line 141
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->s:Z

    .line 143
    sput-boolean v4, Lcom/uc/webview/export/internal/SDKFactory;->t:Z

    .line 145
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    .line 146
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->v:Ljava/lang/String;

    .line 148
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;

    .line 149
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->x:Landroid/webkit/ValueCallback;

    .line 150
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->y:Landroid/webkit/ValueCallback;

    .line 184
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->z:J

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/Map;

    .line 190
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->C:Ljava/util/Map;

    .line 191
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->O:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->P:Ljava/lang/Object;

    .line 200
    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/String;

    .line 204
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->Q:Z

    .line 206
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    .line 209
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->G:Z

    .line 212
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    .line 215
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->I:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    return v0
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1997
    const-string/jumbo v0, "Type:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1998
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2000
    const-string/jumbo v0, "\nPackage Name:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->pkgName:Ljava/lang/String;

    .line 2001
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    :cond_0
    const-string/jumbo v0, "\nSo files path:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 2004
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\nDex files:\n"

    .line 2005
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2006
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    .line 2007
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2008
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    .line 2009
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2010
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2020
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->h:Ljava/lang/String;

    .line 2021
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 2029
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 2030
    if-eqz v0, :cond_0

    .line 2031
    const-string/jumbo v2, "apollo_str"

    if-eqz p0, :cond_1

    const-string/jumbo v1, "ap_cache3=1&ap_cache=1&ap_cache_preload=1&ap_enable_preload2=1&ap_enable_cache2=1&ap_next_buf=7000&ap_max_buf=15000"

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    :cond_0
    return-void

    .line 2031
    :cond_1
    const-string/jumbo v1, "ap_cache3=0&ap_cache=0&ap_cache_preload=0&ap_enable_preload2=0&ap_enable_cache2=0"

    goto :goto_0
.end method

.method public static varargs invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    const/16 v9, 0x272d

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 319
    packed-switch p0, :pswitch_data_0

    .line 1302
    :cond_0
    :goto_0
    return-object v7

    .line 321
    :pswitch_0
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 322
    sget-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->z:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->z:J

    goto :goto_0

    .line 326
    :pswitch_1
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 327
    sget-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->z:J

    const-wide/16 v4, -0x1

    xor-long/2addr v0, v4

    and-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->z:J

    goto :goto_0

    .line 331
    :pswitch_2
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 332
    sget-wide v4, Lcom/uc/webview/export/internal/SDKFactory;->z:J

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    .line 336
    :pswitch_3
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 337
    if-eqz v0, :cond_2

    const-string/jumbo v1, "JSON_CMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 338
    const-string/jumbo v1, "JSON_CMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 339
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_2
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "JSON_CMD"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory$c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    if-eqz v0, :cond_5e

    const-string/jumbo v1, "JSON_CD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 349
    const-string/jumbo v1, "JSON_CD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 350
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5e

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 354
    :goto_2
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "JSON_CD"

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pub_key"

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->O:Ljava/lang/String;

    .line 361
    const/16 v0, 0x2750

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    :try_start_0
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v2, "addParamCD"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 378
    :pswitch_4
    const/16 v0, 0x2750

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 381
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pub_key"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const/4 v1, 0x1

    :try_start_1
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16

    .line 389
    :try_start_2
    const-string/jumbo v2, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v3, "addMiddlewareCD"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 402
    :pswitch_5
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 404
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    sput-object v7, Lcom/uc/webview/export/internal/SDKFactory;->C:Ljava/util/Map;

    goto/16 :goto_0

    .line 407
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 409
    array-length v4, v2

    move v0, v6

    :goto_3
    if-ge v0, v4, :cond_6

    aget-object v5, v2, v0

    .line 410
    const-string/jumbo v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 411
    array-length v8, v5

    if-ne v8, v10, :cond_5

    .line 412
    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v5, v5, v3

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 415
    :cond_6
    const-string/jumbo v0, "tag_test_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CDParam:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 417
    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->C:Ljava/util/Map;

    .line 419
    :cond_7
    const/16 v0, 0x2731

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 425
    :pswitch_6
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 426
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->C:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->C:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto/16 :goto_0

    .line 430
    :pswitch_7
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 431
    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory$c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 435
    :pswitch_8
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->O:Ljava/lang/String;

    goto/16 :goto_0

    .line 439
    :pswitch_9
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 443
    :pswitch_a
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 444
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 445
    const/16 v2, 0x2715

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 450
    :pswitch_b
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 451
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->C:Ljava/util/Map;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->C:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_9
    move v3, v6

    goto :goto_5

    .line 455
    :pswitch_c
    aget-object v0, p1, v6

    check-cast v0, Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->M:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    goto/16 :goto_0

    .line 459
    :pswitch_d
    sput-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    .line 460
    const-string/jumbo v0, "i"

    const-string/jumbo v1, "SDKFactory"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBrowserFlag: sIsBrowser="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 467
    :pswitch_e
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    if-eqz v0, :cond_a

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_a
    move v3, v6

    goto :goto_6

    .line 471
    :pswitch_f
    const/16 v0, 0x271a

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory$d;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_b
    move v3, v6

    goto :goto_7

    .line 475
    :pswitch_10
    const/16 v0, 0x271a

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UC WebView Sdk not inited."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_c
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_d

    .line 479
    const-string/jumbo v7, "System WebView"

    goto/16 :goto_0

    .line 481
    :cond_d
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 486
    :pswitch_11
    invoke-static {}, Lcom/uc/webview/export/internal/setup/z;->a()V

    .line 487
    aget-object v1, p1, v6

    check-cast v1, Landroid/content/Context;

    .line 488
    aget-object v2, p1, v3

    check-cast v2, Landroid/util/AttributeSet;

    .line 489
    aget-object v3, p1, v10

    check-cast v3, Lcom/uc/webview/export/WebView;

    .line 490
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 491
    const/4 v0, 0x4

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 492
    const/4 v0, 0x5

    aget-object v5, p1, v0

    check-cast v5, [I

    .line 494
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 495
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 498
    :cond_e
    if-nez v8, :cond_f

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-eqz v0, :cond_f

    .line 499
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_f
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_10

    .line 503
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v9, "sdk_wv_b"

    invoke-direct {v6, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 506
    :cond_10
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->M:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/internal/AbstractWebViewFactory;->createWebView(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v0

    .line 508
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_11

    .line 509
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "sdk_wv_a"

    invoke-direct {v2, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 514
    :cond_11
    if-nez v8, :cond_12

    .line 515
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->upload()V

    :cond_12
    move-object v7, v0

    .line 517
    goto/16 :goto_0

    .line 522
    :pswitch_12
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 523
    aget-object v1, p1, v3

    check-cast v1, Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 524
    aget-object v2, p1, v10

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 526
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v3, :cond_13

    .line 527
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 529
    :cond_13
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    if-eq v2, v10, :cond_0

    .line 533
    new-instance v7, Lcom/uc/webview/export/extension/UCExtension;

    invoke-direct {v7, v1}, Lcom/uc/webview/export/extension/UCExtension;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    goto/16 :goto_0

    .line 539
    :pswitch_13
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 540
    aget-object v0, p1, v3

    check-cast v0, Landroid/content/Context;

    .line 542
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v2, :cond_14

    .line 543
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 545
    :cond_14
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v9, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    if-ne v1, v10, :cond_15

    .line 547
    new-instance v7, Lcom/uc/webview/export/internal/android/v;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/v;-><init>()V

    goto/16 :goto_0

    .line 549
    :cond_15
    new-instance v7, Lcom/uc/webview/export/internal/uc/c;

    invoke-direct {v7, v0}, Lcom/uc/webview/export/internal/uc/c;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 555
    :pswitch_14
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 558
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getUCMobileWebKit()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v7

    goto/16 :goto_0

    .line 564
    :pswitch_15
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 566
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    if-ne v0, v10, :cond_16

    .line 568
    new-instance v7, Lcom/uc/webview/export/internal/android/q;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/q;-><init>()V

    goto/16 :goto_0

    .line 570
    :cond_16
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->n()Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    move-result-object v7

    goto/16 :goto_0

    .line 576
    :pswitch_16
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 578
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    if-ne v0, v10, :cond_17

    .line 580
    new-instance v7, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;-><init>()V

    goto/16 :goto_0

    .line 582
    :cond_17
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getCookieManager()Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    move-result-object v7

    goto/16 :goto_0

    .line 588
    :pswitch_17
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 590
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    if-eq v0, v10, :cond_0

    .line 594
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getServiceWorkerController()Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    move-result-object v7

    goto/16 :goto_0

    .line 600
    :pswitch_18
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 602
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    if-ne v0, v10, :cond_18

    .line 604
    new-instance v7, Lcom/uc/webview/export/internal/android/b;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/b;-><init>()V

    goto/16 :goto_0

    .line 606
    :cond_18
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->m()Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    move-result-object v7

    goto/16 :goto_0

    .line 612
    :pswitch_19
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 614
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    if-ne v0, v10, :cond_19

    .line 616
    new-instance v7, Lcom/uc/webview/export/internal/android/f;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/android/f;-><init>()V

    goto/16 :goto_0

    .line 618
    :cond_19
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->o()Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    move-result-object v7

    goto/16 :goto_0

    .line 624
    :pswitch_1a
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    if-nez v0, :cond_1a

    .line 629
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 631
    :cond_1a
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 636
    :pswitch_1b
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 638
    if-eqz v0, :cond_0

    .line 639
    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    .line 640
    const/16 v1, 0x2729

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string/jumbo v1, "i"

    const-string/jumbo v2, "SDKFactory"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_0

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCoreType: type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 651
    :pswitch_1c
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->K:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    if-eqz v0, :cond_1b

    .line 652
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->K:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    goto/16 :goto_0

    .line 654
    :cond_1b
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 658
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->l()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v7

    .line 659
    sput-object v7, Lcom/uc/webview/export/internal/SDKFactory;->K:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    goto/16 :goto_0

    .line 665
    :pswitch_1d
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 666
    :cond_1c
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 672
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_1d

    .line 673
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 676
    :cond_1d
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-nez v1, :cond_0

    const/16 v1, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    const-class v1, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v1

    .line 681
    :try_start_3
    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    if-nez v2, :cond_1e

    .line 682
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v2, :cond_1f

    .line 683
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 692
    :cond_1e
    :goto_8
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 694
    const/16 v0, 0x273d

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 685
    :cond_1f
    :try_start_4
    new-instance v2, Lcom/uc/webview/export/internal/setup/bo;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/bo;-><init>()V

    const-string/jumbo v3, "CONTEXT"

    .line 686
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/bo;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "AC"

    const-string/jumbo v3, "true"

    .line 687
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "VIDEO_AC"

    const-string/jumbo v3, "false"

    .line 688
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    .line 689
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_8

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 699
    :pswitch_1e
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 701
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->P:Ljava/lang/Object;

    monitor-enter v2

    .line 703
    :try_start_5
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->P:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 707
    :goto_9
    :try_start_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 704
    :catch_2
    move-exception v0

    .line 705
    :try_start_7
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v3, "getLock"

    invoke-static {v1, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    .line 708
    :pswitch_1f
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->P:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_8
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->P:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 718
    :goto_a
    :try_start_9
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 715
    :catch_3
    move-exception v0

    .line 716
    :try_start_a
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "releaseLock"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_a

    .line 719
    :pswitch_20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_20

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    :cond_20
    move v3, v6

    goto :goto_b

    .line 728
    :pswitch_21
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Runnable;

    .line 730
    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory$d;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 735
    :pswitch_22
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 737
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_21

    .line 738
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 740
    :cond_21
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->Q:Z

    if-nez v1, :cond_0

    .line 743
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/content/Context;)V

    .line 744
    sput-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->Q:Z

    goto/16 :goto_0

    .line 749
    :pswitch_23
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->I:Z

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 750
    :cond_22
    const/16 v0, 0x271b

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-eqz v0, :cond_23

    const/16 v0, 0x271a

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_23

    .line 756
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Lcom/uc/webview/export/extension/InitCallback;

    if-eqz v0, :cond_23

    .line 757
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Lcom/uc/webview/export/extension/InitCallback;

    invoke-interface {v0}, Lcom/uc/webview/export/extension/InitCallback;->notInit()V

    .line 761
    :cond_23
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/uc/webview/export/Build;->IS_INTERNATIONAL_VERSION:Z

    if-nez v0, :cond_0

    .line 765
    :cond_24
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    if-nez v0, :cond_25

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v0, :cond_25

    .line 766
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 769
    :cond_25
    const/16 v0, 0x273d

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 775
    :pswitch_24
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 777
    const/16 v1, 0x2724

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 778
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    :pswitch_25
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 787
    const/16 v0, 0x271f

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 789
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "sTrafficSent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 790
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "sTrafficReceived"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 793
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 794
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    move-object v7, v0

    goto/16 :goto_0

    .line 795
    :catch_4
    move-exception v0

    .line 796
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "getTraffic"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 804
    :pswitch_26
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->N:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 809
    :pswitch_27
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 811
    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->N:I

    goto/16 :goto_0

    .line 816
    :pswitch_28
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 818
    const/16 v1, 0x2724

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 822
    :try_start_c
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    move-result-object v7

    goto/16 :goto_0

    .line 824
    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The getResponseByUrl() is not support in this version."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :pswitch_29
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 832
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 834
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v2, :cond_26

    .line 835
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 837
    :cond_26
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v9, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    if-ne v1, v10, :cond_0

    .line 839
    new-instance v7, Lcom/uc/webview/export/internal/android/u;

    invoke-direct {v7, v0}, Lcom/uc/webview/export/internal/android/u;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 848
    :pswitch_2a
    const/16 v0, 0x2716

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "apollo"

    aput-object v2, v1, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 849
    if-nez v1, :cond_27

    .line 850
    const/16 v0, 0x2711

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :goto_c
    const/16 v0, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    const/16 v0, 0x2726

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 856
    if-eqz v0, :cond_0

    .line 857
    if-nez v1, :cond_28

    .line 858
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "sdk cd forbid apollo"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v1, "sdk_apollo_forbid"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 852
    :cond_27
    const/16 v0, 0x2712

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 861
    :cond_28
    const-string/jumbo v1, "sdk_apollo_forbid"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    :pswitch_2b
    aget-object v0, p1, v6

    check-cast v0, Ljava/util/Map;

    .line 871
    if-eqz v0, :cond_2a

    .line 872
    const-string/jumbo v1, "ucPlayerRoot"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 873
    if-eqz v1, :cond_29

    .line 874
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    .line 876
    :cond_29
    const-string/jumbo v1, "ucPlayer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 877
    if-eqz v0, :cond_2a

    .line 878
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->t:Z

    .line 881
    :cond_2a
    const-string/jumbo v0, "tag_test_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sUseUCPlayer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",sUCPlayerSoRoot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    :pswitch_2c
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 888
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_2b

    .line 889
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 891
    :cond_2b
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->t:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    if-nez v1, :cond_0

    const/16 v1, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    if-eq v1, v10, :cond_0

    .line 892
    const/16 v1, 0x2734

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 894
    if-eqz v0, :cond_0

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 896
    const-string/jumbo v1, "tag_test_log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ucPlayerDir:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const/4 v1, 0x3

    :try_start_d
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.uc.apollo.sdk.browser.Settings"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "com.uc.apollo.Settings"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "com.uc.media.interfaces.IApolloHelper$Global"

    aput-object v4, v1, v3
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_13
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 903
    :goto_d
    const/4 v3, 0x3

    if-eq v6, v3, :cond_2c

    .line 905
    :try_start_e
    aget-object v3, v1, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 906
    const-string/jumbo v4, "setApolloSoPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v3, v4, v5, v8}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 913
    :cond_2c
    :try_start_f
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, ".lock"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 914
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 915
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 916
    :try_start_10
    const-string/jumbo v1, "2.6.0.167"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    move-object v1, v0

    .line 921
    :goto_e
    :try_start_11
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 924
    :goto_f
    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->v:Ljava/lang/String;

    .line 925
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->F:Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 929
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 903
    :catch_6
    move-exception v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 921
    :catch_7
    move-exception v0

    move-object v0, v7

    :goto_10
    :try_start_12
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_14
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    move-object v1, v0

    .line 922
    goto :goto_f

    .line 921
    :catchall_3
    move-exception v0

    move-object v1, v7

    :goto_11
    :try_start_13
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 926
    :catch_8
    move-exception v0

    .line 927
    :goto_12
    :try_start_14
    const-string/jumbo v2, "tag_test_log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupForUCPlayer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 929
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_13
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0

    .line 937
    :pswitch_2d
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 938
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 940
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v2, :cond_2d

    .line 941
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 946
    :cond_2d
    const/4 v2, 0x2

    :try_start_15
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 947
    const-string/jumbo v1, "sdk_2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 949
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 950
    :try_start_16
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 951
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 952
    if-eqz v2, :cond_2e

    .line 953
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 954
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 956
    const-string/jumbo v3, "tag_test_log"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setupUCPlayerForThin:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string/jumbo v3, "com.uc.media.interfaces.IApolloHelper$Global"

    const/4 v4, 0x1

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 959
    const-string/jumbo v4, "setApolloSoPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v7}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    .line 963
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    move-result-object v7

    .line 970
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 971
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_2e
    move-object v7, v1

    .line 970
    :goto_14
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 971
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 973
    :goto_15
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 967
    :catch_9
    move-exception v0

    move-object v1, v7

    .line 968
    :goto_16
    :try_start_18
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "setupUCPlayerForThin"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 970
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 971
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_15

    .line 970
    :catchall_5
    move-exception v0

    move-object v1, v7

    :goto_17
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 971
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0

    .line 978
    :pswitch_2e
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 980
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_2f

    .line 981
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 984
    :cond_2f
    const/4 v1, 0x1

    :try_start_19
    new-array v2, v1, [Ljava/io/File;

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 985
    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 988
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 989
    if-eqz v3, :cond_5b

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 990
    const/16 v0, 0x273d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 992
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "libffmpeg.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libffmpeg.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "libffmpeg.so"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 993
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "libu3player.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libu3player.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "libu3player.so"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 994
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "librotate.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "librotate.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "librotate.so"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 995
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "libinitHelper.so"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "libinitHelper.so"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libinitHelper.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 1000
    :goto_18
    const/16 v1, 0x2735

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v7, v2, v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a

    goto/16 :goto_0

    .line 1002
    :catch_a
    move-exception v0

    .line 1003
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "getUCPlayerDir"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1010
    :pswitch_2f
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 1011
    aget-object v1, p1, v3

    check-cast v1, [Ljava/io/File;

    .line 1013
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "libu3player.so"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    .line 1017
    if-eqz v4, :cond_31

    const-string/jumbo v4, "libu3player.so"

    invoke-static {v0, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1018
    aget-object v4, v1, v6

    if-eqz v4, :cond_30

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    new-instance v2, Ljava/io/File;

    aget-object v8, v1, v6

    const-string/jumbo v9, "libu3player.so"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-lez v2, :cond_31

    .line 1019
    :cond_30
    aput-object v0, v1, v6

    .line 1024
    :cond_31
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1025
    if-eqz v2, :cond_0

    .line 1026
    array-length v4, v2

    move v0, v6

    :goto_19
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 1027
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 1028
    const/16 v8, 0x2735

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v1, v9, v3

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1037
    :pswitch_30
    const/16 v0, 0x2716

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "swv"

    aput-object v2, v1, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1038
    const/16 v0, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1039
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->l:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1041
    :try_start_1a
    sget-object v0, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    const-string/jumbo v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1042
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x9

    if-lt v2, v4, :cond_33

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 1043
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b

    move-result v0

    const/16 v2, 0xd

    if-ge v0, v2, :cond_5a

    :cond_33
    move v0, v6

    .line 1050
    :goto_1a
    if-eqz v0, :cond_0

    .line 1051
    sput v10, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    .line 1052
    const/16 v0, 0x2711

    new-array v1, v3, [Ljava/lang/Object;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1046
    :catch_b
    move-exception v0

    .line 1048
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "checkForceSystemWebViewParam"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_1a

    .line 1056
    :cond_34
    if-eqz v1, :cond_35

    .line 1057
    const/16 v0, 0x2711

    new-array v1, v3, [Ljava/lang/Object;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1059
    :cond_35
    const/16 v0, 0x2712

    new-array v1, v3, [Ljava/lang/Object;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1066
    :pswitch_31
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 1067
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Runnable;

    .line 1069
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-eqz v2, :cond_36

    .line 1070
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/String;

    .line 1072
    :cond_36
    const/16 v2, 0x2724

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v10, :cond_37

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 1073
    :cond_37
    const-string/jumbo v0, "tag_test_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is system webView - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1077
    :cond_38
    new-instance v4, Ljava/io/File;

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->D:Ljava/lang/String;

    const-string/jumbo v5, "shared_prefs"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    new-instance v5, Ljava/io/File;

    const-string/jumbo v2, "typeface.xml"

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1079
    new-instance v8, Ljava/io/File;

    const-string/jumbo v2, "uc_typeface_hash_"

    invoke-direct {v8, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    .line 1081
    :cond_39
    :goto_1b
    if-eqz v3, :cond_3b

    .line 1083
    const-string/jumbo v2, "uc_font_sys"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1092
    :goto_1c
    const/16 v9, 0x2d

    const/16 v10, 0x5f

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1094
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1096
    const-string/jumbo v0, "tag_test_log"

    const-string/jumbo v1, "\u5b57\u4f53\u6ca1\u53d8\u5316..."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    move v3, v6

    .line 1080
    goto :goto_1b

    .line 1085
    :cond_3b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3c

    .line 1087
    const-string/jumbo v0, "tag_test_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5b57\u4f53\u6587\u4ef6\u4e0d\u5b58\u5728-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1090
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 1103
    :cond_3d
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1104
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v8, v2

    :goto_1d
    if-ge v6, v8, :cond_3f

    aget-object v10, v2, v6

    .line 1105
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1104
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 1108
    :cond_3e
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1111
    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1112
    if-eqz v3, :cond_42

    .line 1113
    const-string/jumbo v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?>\n<map />"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :goto_1e
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1120
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1123
    :cond_40
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 1124
    :try_start_1c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1125
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 1126
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->fontDownloadFinished()V

    .line 1127
    if-eqz v1, :cond_41

    .line 1128
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1133
    :cond_41
    :try_start_1d
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    goto/16 :goto_0

    .line 1137
    :catch_c
    move-exception v0

    .line 1136
    const-string/jumbo v1, "tag_test_log"

    const-string/jumbo v2, "updateTypefacePath"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1115
    :cond_42
    :try_start_1e
    const-string/jumbo v2, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?>\n<map>\n<string name=\"current_typeface_path\">"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</string>\n</map>"

    .line 1117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_1e

    .line 1130
    :catch_d
    move-exception v0

    move-object v1, v7

    .line 1131
    :goto_1f
    :try_start_1f
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "updateTypefacePath"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 1133
    :try_start_20
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object v2, v7

    :goto_20
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c

    .line 1142
    :pswitch_32
    const/16 v0, 0x2724

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_43

    .line 1143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1145
    :cond_43
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1151
    :pswitch_33
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->G:Z

    if-eqz v0, :cond_44

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1152
    :cond_44
    new-instance v1, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 1158
    :cond_45
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->isSetupThread()Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    const/4 v0, 0x3

    :goto_21
    array-length v3, v1

    if-ge v0, v3, :cond_46

    const/16 v3, 0x8

    if-ge v0, v3, :cond_46

    .line 1162
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.uc.webview.export."

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\(.+\\)"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1165
    :cond_46
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1169
    :cond_47
    invoke-static {v7}, Lcom/uc/webview/export/internal/SDKFactory$d;->a(Ljava/lang/Runnable;)V

    .line 1172
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    if-eqz v0, :cond_48

    .line 1173
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->resumeAll()V

    .line 1175
    :cond_48
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    if-nez v0, :cond_49

    .line 1178
    const/16 v0, 0x2728

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    sget-wide v8, Lcom/uc/webview/export/internal/SDKFactory;->j:J

    cmp-long v0, v4, v8

    if-ltz v0, :cond_45

    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->k:I

    if-eq v0, v3, :cond_45

    .line 1187
    :cond_49
    invoke-static {v7}, Lcom/uc/webview/export/internal/SDKFactory$d;->a(Ljava/lang/Runnable;)V

    .line 1189
    const-class v1, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v1

    .line 1190
    :try_start_21
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    if-nez v0, :cond_4a

    .line 1191
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->k:I

    if-ne v0, v10, :cond_4b

    .line 1192
    const/4 v0, 0x2

    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    .line 1200
    :cond_4a
    const-string/jumbo v0, "SDKFactory"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v3, "waitForInit(sWebViewPolicy=%d, sMaxWaitMillis=%d)=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/uc/webview/export/internal/SDKFactory;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-wide v8, Lcom/uc/webview/export/internal/SDKFactory;->j:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    monitor-exit v1

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    throw v0

    .line 1193
    :cond_4b
    :try_start_22
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->k:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4a

    .line 1194
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfa9

    const-string/jumbo v3, "Thread [%s] waitting for init is up to [%s] milis."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-wide v6, Lcom/uc/webview/export/internal/SDKFactory;->j:J

    .line 1197
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1195
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 1202
    :pswitch_34
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    .line 1208
    :try_start_23
    const-string/jumbo v0, "com.uc.webview.export.cd.CDUtil"

    const-string/jumbo v1, "setEnablePrintLog"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-boolean v8, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    .line 1209
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1208
    invoke-static {v0, v1, v2, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_f

    .line 1213
    :goto_22
    aget-object v0, p1, v3

    check-cast v0, [Ljava/lang/Object;

    .line 1214
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1215
    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/Boolean;

    aput-object v1, v0, v6

    .line 1216
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCLogger;->setup([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1220
    :pswitch_35
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    goto/16 :goto_0

    .line 1223
    :pswitch_36
    const/16 v0, 0x2726

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 1224
    if-eqz v0, :cond_4c

    const-string/jumbo v1, "IsRunningInWebViewSdk"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1225
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1227
    :cond_4c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1231
    :pswitch_37
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    if-ne v0, v10, :cond_4d

    .line 1232
    const-string/jumbo v0, "android.webkit.WebView"

    const-string/jumbo v1, "enableSlowWholeDocumentDraw"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1233
    :cond_4d
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1234
    const-string/jumbo v0, "com.uc.webkit.WebView"

    const-string/jumbo v1, "enableSlowWholeDocumentDraw"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1238
    :pswitch_38
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    if-ne v0, v10, :cond_4e

    .line 1239
    const-string/jumbo v0, "android.webkit.WebSettings"

    const-string/jumbo v1, "getDefaultUserAgent"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    .line 1240
    :cond_4e
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->J:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1241
    const-string/jumbo v0, "com.uc.webkit.WebSettings"

    const-string/jumbo v1, "getDefaultUserAgent"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    .line 1245
    :pswitch_39
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 1246
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 1247
    aget-object v1, p1, v3

    .line 1248
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1252
    :pswitch_3a
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 1253
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    .line 1258
    :pswitch_3b
    aget-object v0, p1, v6

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->L:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    goto/16 :goto_0

    .line 1261
    :pswitch_3c
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->L:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-eqz v0, :cond_4f

    .line 1262
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->L:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IPreloadManager;->setContext(Landroid/content/Context;)V

    .line 1263
    :cond_4f
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->L:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    goto/16 :goto_0

    .line 1267
    :pswitch_3d
    array-length v0, p1

    if-lez v0, :cond_50

    aget-object v0, p1, v6

    .line 1268
    :goto_23
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_51

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1269
    :goto_24
    sput-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->G:Z

    goto/16 :goto_0

    :cond_50
    move-object v0, v7

    .line 1267
    goto :goto_23

    :cond_51
    move v3, v6

    .line 1268
    goto :goto_24

    .line 1273
    :pswitch_3e
    array-length v0, p1

    if-lez v0, :cond_52

    aget-object v0, p1, v6

    .line 1274
    :goto_25
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1275
    :goto_26
    sput-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    goto/16 :goto_0

    :cond_52
    move-object v0, v7

    .line 1273
    goto :goto_25

    :cond_53
    move v3, v6

    .line 1274
    goto :goto_26

    .line 1279
    :pswitch_3f
    array-length v0, p1

    if-lez v0, :cond_54

    aget-object v0, p1, v6

    .line 1280
    :goto_27
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_55

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1281
    :goto_28
    sput-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->I:Z

    goto/16 :goto_0

    :cond_54
    move-object v0, v7

    .line 1279
    goto :goto_27

    :cond_55
    move v3, v6

    .line 1280
    goto :goto_28

    .line 1285
    :pswitch_40
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->f:I

    sget v1, Lcom/uc/webview/export/internal/SDKFactory$a;->a:I

    if-ne v0, v1, :cond_57

    .line 1286
    const-class v1, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v1

    .line 1287
    :try_start_24
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->f:I

    sget v2, Lcom/uc/webview/export/internal/SDKFactory$a;->a:I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    if-ne v0, v2, :cond_56

    .line 1289
    :try_start_25
    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1290
    if-eqz v0, :cond_58

    sget v0, Lcom/uc/webview/export/internal/SDKFactory$a;->b:I

    :goto_29
    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->f:I
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .line 1297
    :cond_56
    :goto_2a
    :try_start_26
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    .line 1299
    :cond_57
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->f:I

    sget v1, Lcom/uc/webview/export/internal/SDKFactory$a;->b:I

    if-ne v0, v1, :cond_59

    :goto_2b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 1290
    :cond_58
    :try_start_27
    sget v0, Lcom/uc/webview/export/internal/SDKFactory$a;->c:I
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    goto :goto_29

    .line 1293
    :catch_e
    move-exception v0

    :try_start_28
    sget v0, Lcom/uc/webview/export/internal/SDKFactory$a;->c:I

    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->f:I

    goto :goto_2a

    .line 1297
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    throw v0

    :cond_59
    move v3, v6

    .line 1299
    goto :goto_2b

    :catch_f
    move-exception v0

    goto/16 :goto_22

    .line 1133
    :catchall_9
    move-exception v0

    goto/16 :goto_20

    :catchall_a
    move-exception v0

    move-object v2, v1

    goto/16 :goto_20

    .line 1130
    :catch_10
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1f

    .line 970
    :catchall_b
    move-exception v0

    goto/16 :goto_17

    :catchall_c
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    goto/16 :goto_17

    .line 967
    :catch_11
    move-exception v0

    goto/16 :goto_16

    :catch_12
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    goto/16 :goto_16

    .line 929
    :catchall_d
    move-exception v0

    move-object v7, v1

    goto/16 :goto_13

    :catchall_e
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto/16 :goto_13

    .line 926
    :catch_13
    move-exception v0

    move-object v1, v7

    goto/16 :goto_12

    :catch_14
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_12

    .line 921
    :catchall_f
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_11

    :catch_15
    move-exception v1

    goto/16 :goto_10

    .line 397
    :catch_16
    move-exception v0

    goto/16 :goto_0

    :cond_5a
    move v0, v1

    goto/16 :goto_1a

    :cond_5b
    move-object v0, v1

    goto/16 :goto_18

    :cond_5c
    move-object v0, v7

    goto/16 :goto_14

    :cond_5d
    move-object v1, v7

    goto/16 :goto_e

    :cond_5e
    move-object v1, v0

    goto/16 :goto_2

    .line 319
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_2b
        :pswitch_33
        :pswitch_10
        :pswitch_8
        :pswitch_34
        :pswitch_5
        :pswitch_9
        :pswitch_35
        :pswitch_36
        :pswitch_4
        :pswitch_17
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_7
    .end packed-switch
.end method
