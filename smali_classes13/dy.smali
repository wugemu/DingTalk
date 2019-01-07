.class public final Ldy;
.super Ldw;
.source "TypefaceCompatApi26Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;

.field private static final b:Ljava/lang/reflect/Constructor;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 81
    :try_start_0
    const-string/jumbo v9, "android.graphics.FontFamily"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 82
    .local v6, "fontFamilyClass":Ljava/lang/Class;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 83
    .local v7, "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v9, "addFontFromAssetManager"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/res/AssetManager;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-class v12, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 86
    .local v1, "addFontMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v9, "addFontFromBuffer"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/nio/ByteBuffer;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    .local v2, "addFromBufferMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v9, "freeze"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 90
    .local v8, "freezeMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v9, "abortCreation"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 91
    .local v0, "abortCreationMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 92
    .local v5, "familyArray":Ljava/lang/Object;
    const-class v9, Landroid/graphics/Typeface;

    const-string/jumbo v10, "createFromFamiliesWithDefault"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    .line 93
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 95
    .local v3, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .end local v5    # "familyArray":Ljava/lang/Object;
    :goto_0
    sput-object v7, Ldy;->b:Ljava/lang/reflect/Constructor;

    .line 108
    sput-object v6, Ldy;->a:Ljava/lang/Class;

    .line 109
    sput-object v1, Ldy;->c:Ljava/lang/reflect/Method;

    .line 110
    sput-object v2, Ldy;->d:Ljava/lang/reflect/Method;

    .line 111
    sput-object v8, Ldy;->e:Ljava/lang/reflect/Method;

    .line 112
    sput-object v0, Ldy;->f:Ljava/lang/reflect/Method;

    .line 113
    sput-object v3, Ldy;->g:Ljava/lang/reflect/Method;

    .line 114
    return-void

    .line 96
    .end local v0    # "abortCreationMethod":Ljava/lang/reflect/Method;
    .end local v1    # "addFontMethod":Ljava/lang/reflect/Method;
    .end local v2    # "addFromBufferMethod":Ljava/lang/reflect/Method;
    .end local v3    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v7    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v8    # "freezeMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string/jumbo v9, "TypefaceCompatApi26Impl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Unable to collect necessary methods for class "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v7, 0x0

    .line 101
    .restart local v7    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 103
    .restart local v2    # "addFromBufferMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 104
    .restart local v8    # "freezeMethod":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 105
    .restart local v0    # "abortCreationMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .restart local v3    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 96
    .end local v0    # "abortCreationMethod":Ljava/lang/reflect/Method;
    .end local v1    # "addFontMethod":Ljava/lang/reflect/Method;
    .end local v2    # "addFromBufferMethod":Ljava/lang/reflect/Method;
    .end local v3    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v7    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v8    # "freezeMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ldw;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "family"    # Ljava/lang/Object;

    .prologue
    .line 175
    :try_start_0
    sget-object v2, Ldy;->a:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "familyArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 177
    sget-object v2, Ldy;->g:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 177
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 179
    .end local v1    # "familyArray":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 179
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 120
    sget-object v0, Ldy;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 121
    const-string/jumbo v0, "TypefaceCompatApi26Impl"

    const-string/jumbo v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    sget-object v0, Ldy;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "family"    # Ljava/lang/Object;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "ttcIndex"    # I
    .param p4, "weight"    # I
    .param p5, "style"    # I

    .prologue
    .line 145
    :try_start_0
    sget-object v2, Ldy;->c:Ljava/lang/reflect/Method;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 147
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 145
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 148
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 149
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 149
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .locals 6
    .param p0, "family"    # Ljava/lang/Object;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "ttcIndex"    # I
    .param p3, "weight"    # I
    .param p4, "style"    # I

    .prologue
    .line 161
    :try_start_0
    sget-object v2, Ldy;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 162
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 161
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 163
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 164
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 164
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 132
    :try_start_0
    sget-object v1, Ldy;->b:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 133
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "family"    # Ljava/lang/Object;

    .prologue
    .line 189
    :try_start_0
    sget-object v2, Ldy;->e:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 190
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 191
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 191
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "family"    # Ljava/lang/Object;

    .prologue
    .line 201
    :try_start_0
    sget-object v2, Ldy;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 202
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 203
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 203
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 286
    invoke-static {}, Ldy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-super/range {p0 .. p5}, Ldw;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    .line 289
    :cond_0
    invoke-static {}, Ldy;->b()Ljava/lang/Object;

    move-result-object v1

    .line 290
    .local v1, "fontFamily":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v0, p1

    move-object v2, p4

    move v5, v4

    invoke-static/range {v0 .. v5}, Ldy;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-static {v1}, Ldy;->c(Ljava/lang/Object;)Z

    move-object v0, v6

    .line 294
    goto :goto_0

    .line 296
    :cond_1
    invoke-static {v1}, Ldy;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v6

    .line 297
    goto :goto_0

    .line 299
    :cond_2
    invoke-static {v1}, Ldy;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/graphics/Typeface;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .prologue
    .line 234
    move-object/from16 v0, p3

    array-length v12, v0

    if-gtz v12, :cond_1

    .line 235
    const/4 v12, 0x0

    .line 276
    :cond_0
    :goto_0
    return-object v12

    .line 237
    :cond_1
    invoke-static {}, Ldy;->a()Z

    move-result v12

    if-nez v12, :cond_4

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ldy;->a([Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/support/v4/provider/FontsContractCompat$a;

    move-result-object v4

    .line 241
    .local v4, "bestFont":Landroid/support/v4/provider/FontsContractCompat$a;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2312
    .local v9, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v12, v4, Landroid/support/v4/provider/FontsContractCompat$a;->a:Landroid/net/Uri;

    .line 243
    const-string/jumbo v13, "r"

    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v13, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 242
    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v13, 0x0

    .line 244
    :try_start_1
    new-instance v12, Landroid/graphics/Typeface$Builder;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 2326
    iget v14, v4, Landroid/support/v4/provider/FontsContractCompat$a;->c:I

    .line 245
    invoke-virtual {v12, v14}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v12

    .line 2333
    iget-boolean v14, v4, Landroid/support/v4/provider/FontsContractCompat$a;->d:Z

    .line 246
    invoke-virtual {v12, v14}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v12

    .line 247
    invoke-virtual {v12}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 248
    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 249
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v12

    const/4 v12, 0x0

    goto :goto_0

    .line 242
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v12

    :try_start_3
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    :catchall_0
    move-exception v13

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    :goto_1
    if-eqz v8, :cond_2

    if-eqz v13, :cond_3

    :try_start_4
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    :try_start_5
    throw v12

    :catch_2
    move-exception v14

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 252
    .end local v4    # "bestFont":Landroid/support/v4/provider/FontsContractCompat$a;
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/v4/provider/FontsContractCompat;->a(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$a;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v11

    .line 254
    .local v11, "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-static {}, Ldy;->b()Ljava/lang/Object;

    move-result-object v7

    .line 255
    .local v7, "fontFamily":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 256
    .local v3, "atLeastOneFont":Z
    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_3
    if-ge v13, v14, :cond_8

    aget-object v5, p3, v13

    .line 3312
    .local v5, "font":Landroid/support/v4/provider/FontsContractCompat$a;
    iget-object v12, v5, Landroid/support/v4/provider/FontsContractCompat$a;->a:Landroid/net/Uri;

    .line 257
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 258
    .local v6, "fontBuffer":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_7

    .line 3319
    iget v15, v5, Landroid/support/v4/provider/FontsContractCompat$a;->b:I

    .line 3326
    iget v0, v5, Landroid/support/v4/provider/FontsContractCompat$a;->c:I

    move/from16 v16, v0

    .line 3333
    iget-boolean v12, v5, Landroid/support/v4/provider/FontsContractCompat$a;->d:Z

    .line 262
    if-eqz v12, :cond_5

    const/4 v12, 0x1

    .line 261
    :goto_4
    move/from16 v0, v16

    invoke-static {v7, v6, v15, v0, v12}, Ldy;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v10

    .line 263
    .local v10, "success":Z
    if-nez v10, :cond_6

    .line 264
    invoke-static {v7}, Ldy;->c(Ljava/lang/Object;)Z

    .line 265
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 262
    .end local v10    # "success":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 267
    .restart local v10    # "success":Z
    :cond_6
    const/4 v3, 0x1

    .line 256
    .end local v10    # "success":Z
    :cond_7
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_3

    .line 269
    .end local v5    # "font":Landroid/support/v4/provider/FontsContractCompat$a;
    .end local v6    # "fontBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    if-nez v3, :cond_9

    .line 270
    invoke-static {v7}, Ldy;->c(Ljava/lang/Object;)Z

    .line 271
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 273
    :cond_9
    invoke-static {v7}, Ldy;->b(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 274
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 276
    :cond_a
    invoke-static {v7}, Ldy;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v12

    goto/16 :goto_0

    .line 248
    .end local v3    # "atLeastOneFont":Z
    .end local v7    # "fontFamily":Ljava/lang/Object;
    .end local v11    # "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    .restart local v4    # "bestFont":Landroid/support/v4/provider/FontsContractCompat$a;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "resolver":Landroid/content/ContentResolver;
    :catchall_1
    move-exception v12

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$b;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 212
    invoke-static {}, Ldy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Ldw;->a(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 215
    :cond_0
    invoke-static {}, Ldy;->b()Ljava/lang/Object;

    move-result-object v1

    .line 1143
    .local v1, "fontFamily":Ljava/lang/Object;
    iget-object v9, p2, Landroid/support/v4/content/res/FontResourcesParserCompat$b;->a:[Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 216
    array-length v10, v9

    move v8, v3

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v6, v9, v8

    .line 2116
    .local v6, "fontFile":Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    iget-object v2, v6, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->a:Ljava/lang/String;

    .line 2120
    iget v4, v6, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->b:I

    .line 2124
    iget-boolean v0, v6, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->c:Z

    .line 219
    if-eqz v0, :cond_1

    const/4 v5, 0x1

    :goto_2
    move-object v0, p1

    .line 218
    invoke-static/range {v0 .. v5}, Ldy;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    invoke-static {v1}, Ldy;->c(Ljava/lang/Object;)Z

    move-object v0, v7

    .line 221
    goto :goto_0

    :cond_1
    move v5, v3

    .line 219
    goto :goto_2

    .line 216
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 224
    .end local v6    # "fontFile":Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    :cond_3
    invoke-static {v1}, Ldy;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v7

    .line 225
    goto :goto_0

    .line 227
    :cond_4
    invoke-static {v1}, Ldy;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method
