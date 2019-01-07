.class public final Landroid/support/v4/app/NotificationManagerCompat;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$b;,
        Landroid/support/v4/app/NotificationManagerCompat$a;,
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sEnabledNotificationListenersLock"
    .end annotation
.end field

.field private static c:Ljava/util/Set;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sEnabledNotificationListenersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->a:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->c:Ljava/util/Set;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat;->d:Landroid/content/Context;

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->d:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->e:Landroid/app/NotificationManager;

    .line 155
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enabled_notification_listeners"

    .line 257
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "enabledNotificationListeners":Ljava/lang/String;
    sget-object v6, Landroid/support/v4/app/NotificationManagerCompat;->a:Ljava/lang/Object;

    monitor-enter v6

    .line 262
    if-eqz v3, :cond_2

    :try_start_0
    sget-object v5, Landroid/support/v4/app/NotificationManagerCompat;->b:Ljava/lang/String;

    .line 263
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 264
    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "components":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 266
    .local v4, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v7, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v2, v5

    .line 267
    .local v0, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 268
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "component":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    sput-object v4, Landroid/support/v4/app/NotificationManagerCompat;->c:Ljava/util/Set;

    .line 273
    sput-object v3, Landroid/support/v4/app/NotificationManagerCompat;->b:Ljava/lang/String;

    .line 275
    .end local v2    # "components":[Ljava/lang/String;
    .end local v4    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    sget-object v5, Landroid/support/v4/app/NotificationManagerCompat;->c:Ljava/util/Set;

    monitor-exit v6

    return-object v5

    .line 276
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public final a()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 215
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v8, v11, :cond_0

    .line 216
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat;->e:Landroid/app/NotificationManager;

    invoke-virtual {v8}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v8

    .line 236
    :goto_0
    return v8

    .line 217
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-lt v8, v11, :cond_2

    .line 218
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat;->d:Landroid/content/Context;

    const-string/jumbo v11, "appops"

    .line 219
    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 220
    .local v1, "appOps":Landroid/app/AppOpsManager;
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 221
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Landroid/support/v4/app/NotificationManagerCompat;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "pkg":Ljava/lang/String;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 224
    .local v6, "uid":I
    :try_start_0
    const-class v8, Landroid/app/AppOpsManager;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 225
    .local v2, "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "checkOpNoThrow"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v2, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 227
    .local v3, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v8, "OP_POST_NOTIFICATION"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 228
    .local v4, "opPostNotificationValue":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 229
    .local v7, "value":I
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x2

    aput-object v5, v8, v11

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v10

    goto :goto_0

    .line 233
    .end local v2    # "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v4    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v7    # "value":I
    :catch_0
    move-exception v8

    :goto_1
    move v8, v9

    goto/16 :goto_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_2
    move v8, v9

    .line 236
    goto/16 :goto_0

    .line 233
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appOps":Landroid/app/AppOpsManager;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "uid":I
    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_1

    :catch_4
    move-exception v8

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_1
.end method
