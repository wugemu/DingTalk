.class final Ldx;
.super Ldz;
.source "TypefaceCompatApi24Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
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


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 68
    :try_start_0
    const-string/jumbo v6, "android.graphics.FontFamily"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 69
    .local v4, "fontFamilyClass":Ljava/lang/Class;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 70
    .local v5, "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v6, "addFontWeightStyle"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/nio/ByteBuffer;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/util/List;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 72
    .local v0, "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 73
    .local v3, "familyArray":Ljava/lang/Object;
    const-class v6, Landroid/graphics/Typeface;

    const-string/jumbo v7, "createFromFamiliesWithDefault"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    .line 74
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 83
    .end local v3    # "familyArray":Ljava/lang/Object;
    .local v1, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :goto_0
    sput-object v5, Ldx;->b:Ljava/lang/reflect/Constructor;

    .line 84
    sput-object v4, Ldx;->a:Ljava/lang/Class;

    .line 85
    sput-object v0, Ldx;->c:Ljava/lang/reflect/Method;

    .line 86
    sput-object v1, Ldx;->d:Ljava/lang/reflect/Method;

    .line 87
    return-void

    .line 76
    .end local v0    # "addFontMethod":Ljava/lang/reflect/Method;
    .end local v1    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v5    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string/jumbo v6, "TypefaceCompatApi24Impl"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    .restart local v5    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const/4 v0, 0x0

    .line 81
    .restart local v0    # "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .restart local v1    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 76
    .end local v0    # "addFontMethod":Ljava/lang/reflect/Method;
    .end local v1    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v5    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ldz;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Ljava/lang/Object;

    .prologue
    .line 121
    :try_start_0
    sget-object v2, Ldx;->a:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "familyArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 123
    sget-object v2, Ldx;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 125
    .end local v1    # "familyArray":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 125
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 93
    sget-object v0, Ldx;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "TypefaceCompatApi24Impl"

    const-string/jumbo v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    sget-object v0, Ldx;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 6
    .param p0, "family"    # Ljava/lang/Object;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "ttcIndex"    # I
    .param p3, "weight"    # I
    .param p4, "style"    # Z

    .prologue
    .line 111
    :try_start_0
    sget-object v2, Ldx;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 112
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

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 111
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 113
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 114
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 114
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 102
    :try_start_0
    sget-object v1, Ldx;->b:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 103
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/graphics/Typeface;
    .locals 10
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-static {}, Ldx;->b()Ljava/lang/Object;

    move-result-object v2

    .line 134
    .local v2, "family":Ljava/lang/Object;
    new-instance v1, Lfw;

    invoke-direct {v1}, Lfw;-><init>()V

    .line 136
    .local v1, "bufferCache":Lfw;, "Lfw<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    array-length v6, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, p3, v5

    .line 1312
    .local v3, "font":Landroid/support/v4/provider/FontsContractCompat$a;
    iget-object v4, v3, Landroid/support/v4/provider/FontsContractCompat$a;->a:Landroid/net/Uri;

    .line 138
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v4}, Lfw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 139
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 140
    invoke-static {p1, p2, v4}, Lea;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 141
    invoke-virtual {v1, v4, v0}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    :cond_0
    iget v7, v3, Landroid/support/v4/provider/FontsContractCompat$a;->b:I

    .line 1326
    iget v8, v3, Landroid/support/v4/provider/FontsContractCompat$a;->c:I

    .line 1333
    iget-boolean v9, v3, Landroid/support/v4/provider/FontsContractCompat$a;->d:Z

    .line 143
    invoke-static {v2, v0, v7, v8, v9}, Ldx;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    const/4 v5, 0x0

    .line 148
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "font":Landroid/support/v4/provider/FontsContractCompat$a;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v5

    .line 136
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "font":Landroid/support/v4/provider/FontsContractCompat$a;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "font":Landroid/support/v4/provider/FontsContractCompat$a;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v2}, Ldx;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v5

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$b;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-static {}, Ldx;->b()Ljava/lang/Object;

    move-result-object v2

    .line 2143
    .local v2, "family":Ljava/lang/Object;
    iget-object v5, p2, Landroid/support/v4/content/res/FontResourcesParserCompat$b;->a:[Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 155
    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v5, v3

    .line 3128
    .local v1, "e":Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    iget v7, v1, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->d:I

    .line 157
    invoke-static {p1, p3, v7}, Lea;->a(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4120
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v7, v1, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->b:I

    .line 4124
    iget-boolean v8, v1, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->c:Z

    .line 159
    invoke-static {v2, v0, v4, v7, v8}, Ldx;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 160
    const/4 v3, 0x0

    .line 163
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "e":Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    :goto_1
    return-object v3

    .line 155
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "e":Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "e":Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    :cond_1
    invoke-static {v2}, Ldx;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_1
.end method