.class public final Lcjh;
.super Ljava/lang/Object;
.source "RegisterCompat.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcjh;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 118
    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 32
    sget-boolean v2, Lcjh;->a:Z

    if-nez v2, :cond_1

    .line 53
    .local v1, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 35
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-static {}, Lcof;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_3

    .line 38
    :cond_2
    sput-boolean v10, Lcjh;->a:Z

    goto :goto_0

    .line 41
    :cond_3
    invoke-static {}, Lcjh;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 42
    sput-boolean v10, Lcjh;->a:Z

    goto :goto_0

    .line 1071
    :cond_4
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 1072
    const-string/jumbo v2, "ContextImpl"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    const-string/jumbo v2, "android.app.LoadedApk"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1077
    const-string/jumbo v3, "mReceiverResource"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1078
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1080
    const-string/jumbo v3, "android.app.ContextImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1081
    const-string/jumbo v4, "mPackageInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1082
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1084
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1085
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mWhiteListMap"

    invoke-static {v2, v3}, Lcjh;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1086
    if-nez v2, :cond_9

    .line 1087
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mWhiteList"

    invoke-static {v2, v3}, Lcjh;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v4, v2

    .line 1089
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1090
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1091
    instance-of v2, v3, [Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1092
    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    .line 1093
    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 1094
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 1096
    invoke-virtual {v4, v6, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1108
    :cond_5
    :goto_2
    const/4 v2, 0x0

    sput-boolean v2, Lcjh;->a:Z

    .line 1109
    const-string/jumbo v2, "dingtalkbase"

    const/4 v3, 0x0

    const-string/jumbo v4, "Register compat completed"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .restart local v1    # "e":Ljava/lang/Throwable;
    sput-boolean v10, Lcjh;->a:Z

    .line 50
    const-string/jumbo v2, "dingtalkbase"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "RegisterCompat failed, error="

    aput-object v4, v3, v10

    .line 51
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    .line 50
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v12, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    :try_start_1
    instance-of v2, v3, Ljava/util/List;

    if-eqz v2, :cond_7

    .line 1098
    check-cast v3, Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1099
    :cond_7
    instance-of v2, v3, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 1100
    check-cast v3, Ljava/util/Map;

    .line 1101
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1102
    if-nez v2, :cond_8

    .line 1103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    :cond_8
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_9
    move-object v4, v2

    goto/16 :goto_1
.end method

.method private static b()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 2072
    iget-object v1, v3, Lcid;->b:Lckd;

    .line 58
    .local v1, "featureInterface":Lckd;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Lckd;->g()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "dingtalkbase"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "failed to get key isRegisterCompatEnabled, error="

    aput-object v6, v5, v2

    const/4 v6, 0x1

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 62
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
