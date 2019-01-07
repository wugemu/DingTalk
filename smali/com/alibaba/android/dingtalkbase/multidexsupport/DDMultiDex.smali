.class public final Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;
.super Ljava/lang/Object;
.source "DDMultiDex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex$V14;,
        Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex$V19;
    }
.end annotation


# static fields
.field private static final EXTRACTED_FOLDER_NAME:Ljava/lang/String;

.field private static final IS_VM_MULTIDEX_CAPABLE:Z

.field private static final LOCK_FILE:Ljava/lang/String;

.field private static final MAX_SUPPORTED_SDK_VERSION:I = 0x14

.field private static final MIN_SDK_VERSION:I = 0xe

.field private static final OLD_SECONDARY_FOLDER_NAME:Ljava/lang/String; = "secondary-dexes"

.field private static final SECONDARY_FOLDER_NAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "DDMultiDex"

.field private static final VM_WITH_MULTIDEX_VERSION_MAJOR:I = 0x2

.field private static final VM_WITH_MULTIDEX_VERSION_MINOR:I = 0x1

.field private static final installedApk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "code_cache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lock_file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->LOCK_FILE:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "code_cache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "secondary-dexes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->SECONDARY_FOLDER_NAME:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "code_cache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "extracted-dexes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->EXTRACTED_FOLDER_NAME:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->installedApk:Ljava/util/Set;

    .line 55
    const-string/jumbo v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->isVMMultidexCapable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static checkFiles(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    .line 232
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 234
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return v1

    .line 238
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static clearOldDexDir(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "secondary-dexes"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v0, "dexDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 221
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 229
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 224
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 225
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    .end local v2    # "oldFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "extraElements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 295
    invoke-static {p0, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 296
    .local v1, "jlrField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 297
    .local v2, "original":[Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    array-length v4, v2

    array-length v5, p2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 298
    .local v0, "combined":[Ljava/lang/Object;
    array-length v3, v2

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v3, v2

    array-length v4, p2

    invoke-static {p2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 265
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 267
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    return-object v1

    .line 263
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 279
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 281
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 283
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    return-object v1

    .line 279
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_1
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 206
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 214
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v0

    .line 213
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 214
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 208
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static install(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-boolean v14, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    if-eqz v14, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xe

    if-ge v14, v15, :cond_2

    .line 65
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Multi dex installation failed. SDK "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " is unsupported. Min SDK version is 14"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 68
    :cond_2
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x14

    if-gt v14, v15, :cond_0

    .line 72
    const/4 v8, 0x0

    .line 73
    .local v8, "fileLockAf":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 74
    .local v10, "fileLockFc":Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 77
    .local v7, "fileLock":Ljava/nio/channels/FileLock;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 78
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 82
    sget-object v15, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->installedApk:Ljava/util/Set;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 84
    .local v1, "apkPath":Ljava/lang/String;
    sget-object v14, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->installedApk:Ljava/util/Set;

    invoke-interface {v14, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 85
    monitor-exit v15

    goto :goto_0

    .line 153
    .end local v1    # "apkPath":Ljava/lang/String;
    :catchall_0
    move-exception v14

    :goto_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Multi dex installation failed ("

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v14

    if-eqz v7, :cond_3

    .line 161
    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 166
    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    .line 168
    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 173
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 175
    :try_start_6
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 178
    :cond_5
    :goto_4
    throw v14

    .line 87
    .restart local v1    # "apkPath":Ljava/lang/String;
    .restart local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :try_start_7
    sget-object v14, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->installedApk:Ljava/util/Set;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v12

    .line 95
    .local v12, "loader":Ljava/lang/ClassLoader;
    if-nez v12, :cond_7

    .line 96
    :try_start_9
    monitor-exit v15

    goto/16 :goto_0

    .line 93
    .end local v12    # "loader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v14

    monitor-exit v15

    goto/16 :goto_0

    .line 100
    .restart local v12    # "loader":Ljava/lang/ClassLoader;
    :cond_7
    new-instance v3, Ljava/io/File;

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "dataDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v14

    if-nez v14, :cond_8

    .line 103
    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 108
    :cond_8
    :goto_5
    :try_start_b
    new-instance v6, Ljava/io/File;

    sget-object v14, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->LOCK_FILE:Ljava/lang/String;

    invoke-direct {v6, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v14

    if-nez v14, :cond_9

    .line 111
    :try_start_c
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 116
    :cond_9
    :goto_6
    :try_start_d
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v14

    if-eqz v14, :cond_a

    .line 118
    :try_start_e
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "rw"

    invoke-direct {v9, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 119
    .end local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    .local v9, "fileLockAf":Ljava/io/RandomAccessFile;
    :try_start_f
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-result-object v10

    .line 120
    if-eqz v10, :cond_d

    .line 122
    :try_start_10
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object v7

    move-object v8, v9

    .line 134
    .end local v9    # "fileLockAf":Ljava/io/RandomAccessFile;
    .restart local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    :cond_a
    :goto_7
    :try_start_11
    invoke-static/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->clearOldDexDir(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 138
    :goto_8
    :try_start_12
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->SECONDARY_FOLDER_NAME:Ljava/lang/String;

    invoke-direct {v13, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v13, "optDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    sget-object v14, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->EXTRACTED_FOLDER_NAME:Ljava/lang/String;

    invoke-direct {v5, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v5, "extractedDir":Ljava/io/File;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v14}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDexExtractor;->load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v11

    .line 141
    .local v11, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v11}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->checkFiles(Ljava/util/List;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result v14

    if-eqz v14, :cond_e

    .line 143
    :try_start_13
    invoke-static {v12, v13, v11}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 153
    :goto_9
    :try_start_14
    monitor-exit v15
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 159
    if-eqz v7, :cond_b

    .line 161
    :try_start_15
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    .line 166
    :cond_b
    :goto_a
    if-eqz v10, :cond_c

    .line 168
    :try_start_16
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    .line 173
    :cond_c
    :goto_b
    if-eqz v8, :cond_0

    .line 175
    :try_start_17
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_0

    .line 176
    :catch_2
    move-exception v4

    .line 177
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 104
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "extractedDir":Ljava/io/File;
    .end local v6    # "f":Ljava/io/File;
    .end local v11    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v13    # "optDir":Ljava/io/File;
    :catch_3
    move-exception v4

    .line 105
    .local v4, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "f":Ljava/io/File;
    :catch_4
    move-exception v4

    .line 113
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_6

    .line 123
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    .restart local v9    # "fileLockAf":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v4

    .line 124
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    move-object v8, v9

    .line 129
    .end local v9    # "fileLockAf":Ljava/io/RandomAccessFile;
    .restart local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 127
    :catch_6
    move-exception v4

    .line 128
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_c
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 144
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "extractedDir":Ljava/io/File;
    .restart local v11    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v13    # "optDir":Ljava/io/File;
    :catch_7
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v14}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDexExtractor;->load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v11

    .line 151
    invoke-static {v12, v13, v11}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_9

    .line 162
    :catch_8
    move-exception v4

    .line 163
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 170
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 162
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "dataDir":Ljava/io/File;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "extractedDir":Ljava/io/File;
    .end local v6    # "f":Ljava/io/File;
    .end local v11    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v12    # "loader":Ljava/lang/ClassLoader;
    .end local v13    # "optDir":Ljava/io/File;
    :catch_a
    move-exception v4

    .line 163
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 170
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 176
    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 177
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "apkPath":Ljava/lang/String;
    .restart local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "dataDir":Ljava/io/File;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v12    # "loader":Ljava/lang/ClassLoader;
    :catch_d
    move-exception v14

    goto/16 :goto_8

    .line 153
    .end local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    .restart local v9    # "fileLockAf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9    # "fileLockAf":Ljava/io/RandomAccessFile;
    .restart local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 127
    .end local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    .restart local v9    # "fileLockAf":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v4

    move-object v8, v9

    .end local v9    # "fileLockAf":Ljava/io/RandomAccessFile;
    .restart local v8    # "fileLockAf":Ljava/io/RandomAccessFile;
    goto :goto_c
.end method

.method private static installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "optDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 250
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 255
    invoke-static {p0, p2, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex$V19;->access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    .line 256
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 257
    invoke-static {p0, p2, p1}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex$V14;->access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0
.end method

.method static isVMMultidexCapable(Ljava/lang/String;)Z
    .locals 7
    .param p0, "versionString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "isMultidexCapable":Z
    if-eqz p0, :cond_1

    .line 186
    const-string/jumbo v5, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 187
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "major":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 191
    .local v3, "minor":I
    if-gt v1, v6, :cond_0

    if-ne v1, v6, :cond_2

    if-lez v3, :cond_2

    :cond_0
    move v0, v4

    .line 198
    .end local v1    # "major":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "minor":I
    :cond_1
    :goto_0
    return v0

    .line 191
    .restart local v1    # "major":I
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "minor":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "major":I
    .end local v3    # "minor":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method
