.class public final Ljvx;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/Class;

.field private static f:Ljava/lang/reflect/Field;

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Ljava/lang/reflect/Field;

.field private static j:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "NLPBuild"

    sput-object v2, Ljvx;->a:Ljava/lang/String;

    sput-boolean v0, Ljvx;->b:Z

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v2, Ljvx;->c:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v2, Ljvx;->d:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v2, "miui.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ljvx;->e:Ljava/lang/Class;

    const-string/jumbo v3, "IS_CTS_BUILD"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ljvx;->f:Ljava/lang/reflect/Field;

    sget-object v2, Ljvx;->e:Ljava/lang/Class;

    const-string/jumbo v3, "IS_CTA_BUILD"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ljvx;->g:Ljava/lang/reflect/Field;

    sget-object v2, Ljvx;->e:Ljava/lang/Class;

    const-string/jumbo v3, "IS_ALPHA_BUILD"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ljvx;->h:Ljava/lang/reflect/Field;

    sget-object v2, Ljvx;->e:Ljava/lang/Class;

    const-string/jumbo v3, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ljvx;->i:Ljava/lang/reflect/Field;

    sget-object v2, Ljvx;->e:Ljava/lang/Class;

    const-string/jumbo v3, "IS_STABLE_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ljvx;->j:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-eqz v0, :cond_0

    sput-object v4, Ljvx;->e:Ljava/lang/Class;

    sput-object v4, Ljvx;->f:Ljava/lang/reflect/Field;

    sput-object v4, Ljvx;->g:Ljava/lang/reflect/Field;

    sput-object v4, Ljvx;->h:Ljava/lang/reflect/Field;

    sput-object v4, Ljvx;->i:Ljava/lang/reflect/Field;

    sput-object v4, Ljvx;->j:Ljava/lang/reflect/Field;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Ljvx;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->c:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "3rdROM-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljvx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Ljvx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->f:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ljvx;->f:Ljava/lang/reflect/Field;

    sget-object v1, Ljvx;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Ljvx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ljvx;->h:Ljava/lang/reflect/Field;

    sget-object v1, Ljvx;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Ljvx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->i:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ljvx;->i:Ljava/lang/reflect/Field;

    sget-object v1, Ljvx;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    invoke-static {}, Ljvx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Ljvx;->j:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ljvx;->j:Ljava/lang/reflect/Field;

    sget-object v1, Ljvx;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
