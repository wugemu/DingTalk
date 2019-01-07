.class Ldz;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Ldv$a;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldz$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {p0}, Lea;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, "tmpFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-object v1

    .line 92
    :cond_0
    :try_start_0
    invoke-static {v0, p1}, Lea;->a(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method private static a([Ljava/lang/Object;ILdz$a;)Ljava/lang/Object;
    .locals 12
    .param p1, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ldz$a",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "fonts":[Ljava/lang/Object;, "[TT;"
    .local p2, "extractor":Ldz$a;, "Ldz$a<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 53
    and-int/lit8 v8, p1, 0x1

    if-nez v8, :cond_2

    const/16 v5, 0x190

    .line 54
    .local v5, "targetWeight":I
    :goto_0
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_3

    move v3, v6

    .line 56
    .local v3, "isTargetItalic":Z
    :goto_1
    const/4 v0, 0x0

    .line 57
    .local v0, "best":Ljava/lang/Object;, "TT;"
    const v1, 0x7fffffff

    .line 59
    .local v1, "bestScore":I
    array-length v10, p0

    move v9, v7

    .end local v0    # "best":Ljava/lang/Object;, "TT;"
    :goto_2
    if-ge v9, v10, :cond_5

    aget-object v2, p0, v9

    .line 60
    .local v2, "font":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v2}, Ldz$a;->b(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v11, v8, 0x2

    .line 61
    invoke-interface {p2, v2}, Ldz$a;->a(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v3, :cond_4

    move v8, v7

    :goto_3
    add-int v4, v11, v8

    .line 63
    .local v4, "score":I
    if-eqz v0, :cond_0

    if-le v1, v4, :cond_1

    .line 64
    :cond_0
    move-object v0, v2

    .line 65
    .restart local v0    # "best":Ljava/lang/Object;, "TT;"
    move v1, v4

    .line 59
    .end local v0    # "best":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_2

    .line 53
    .end local v1    # "bestScore":I
    .end local v2    # "font":Ljava/lang/Object;, "TT;"
    .end local v3    # "isTargetItalic":Z
    .end local v4    # "score":I
    .end local v5    # "targetWeight":I
    :cond_2
    const/16 v5, 0x2bc

    goto :goto_0

    .restart local v5    # "targetWeight":I
    :cond_3
    move v3, v7

    .line 54
    goto :goto_1

    .restart local v1    # "bestScore":I
    .restart local v2    # "font":Ljava/lang/Object;, "TT;"
    .restart local v3    # "isTargetItalic":Z
    :cond_4
    move v8, v6

    .line 61
    goto :goto_3

    .line 68
    .end local v2    # "font":Ljava/lang/Object;, "TT;"
    :cond_5
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {p1}, Lea;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 159
    .local v0, "tmpFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-object v1

    .line 163
    :cond_0
    :try_start_0
    invoke-static {v0, p2, p3}, Lea;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 166
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/graphics/Typeface;
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 110
    array-length v3, p3

    if-gtz v3, :cond_0

    .line 121
    :goto_0
    return-object v2

    .line 113
    :cond_0
    invoke-virtual {p0, p3, p4}, Ldz;->a([Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/support/v4/provider/FontsContractCompat$a;

    move-result-object v0

    .line 114
    .local v0, "font":Landroid/support/v4/provider/FontsContractCompat$a;
    const/4 v1, 0x0

    .line 116
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1312
    iget-object v4, v0, Landroid/support/v4/provider/FontsContractCompat$a;->a:Landroid/net/Uri;

    .line 116
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 117
    invoke-static {p1, v1}, Ldz;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 121
    invoke-static {v1}, Lea;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v1}, Lea;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lea;->a(Ljava/io/Closeable;)V

    throw v2
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$b;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    .line 2143
    iget-object v1, p2, Landroid/support/v4/content/res/FontResourcesParserCompat$b;->a:[Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 2126
    new-instance v2, Ldz$2;

    invoke-direct {v2, p0}, Ldz$2;-><init>(Ldz;)V

    invoke-static {v1, p4, v2}, Ldz;->a([Ljava/lang/Object;ILdz$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 144
    .local v0, "best":Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    .line 3128
    :cond_0
    iget v1, v0, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->d:I

    .line 4116
    iget-object v2, v0, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->a:Ljava/lang/String;

    .line 147
    invoke-static {p1, p3, v1, v2, p4}, Ldv;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method protected final a([Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/support/v4/provider/FontsContractCompat$a;
    .locals 1
    .param p1, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$a;
    .param p2, "style"    # I

    .prologue
    .line 72
    new-instance v0, Ldz$1;

    invoke-direct {v0, p0}, Ldz$1;-><init>(Ldz;)V

    invoke-static {p1, p2, v0}, Ldz;->a([Ljava/lang/Object;ILdz$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/provider/FontsContractCompat$a;

    return-object v0
.end method
