.class public Lcom/alipay/euler/andfix/patch/Patch;
.super Ljava/lang/Object;
.source "Patch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/euler/andfix/patch/Patch;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD_CLASS:Ljava/lang/String; = "-add-classes"

.field private static final CREATED_TIME:Ljava/lang/String; = "Created-Time"

.field private static final ENTRY_NAME:Ljava/lang/String; = "META-INF/PATCH.MF"

.field private static final MODIFIED_CLASSES:Ljava/lang/String; = "-Modified-Classes"

.field private static final PATCH_CLASSES:Ljava/lang/String; = "-Patch-Classes"

.field private static final PATCH_NAME:Ljava/lang/String; = "Patch-Name"

.field private static final PREPARE_CLASSES:Ljava/lang/String; = "-Prepare-Classes"

.field private static final USED_CLASSES:Ljava/lang/String; = "-Used-Classes"

.field private static final USED_METHODS:Ljava/lang/String; = "-Used-Methods"


# instance fields
.field private mAddClassesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClassesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private mModifiedClassesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPrepareClassesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTime:Ljava/util/Date;

.field private mUsedClassesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsedMethodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    .line 82
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/Patch;->init()V

    .line 83
    return-void
.end method

.method private getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "postFix"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private init()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, "jarFile":Ljava/util/jar/JarFile;
    const/4 v2, 0x0

    .line 90
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    iget-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .local v5, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string/jumbo v10, "META-INF/PATCH.MF"

    invoke-virtual {v5, v10}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 92
    .local v1, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v5, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 93
    new-instance v7, Ljava/util/jar/Manifest;

    invoke-direct {v7, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v7, "manifest":Ljava/util/jar/Manifest;
    invoke-virtual {v7}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    .line 95
    .local v6, "main":Ljava/util/jar/Attributes;
    const-string/jumbo v10, "Patch-Name"

    invoke-virtual {v6, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    .line 96
    new-instance v10, Ljava/util/Date;

    const-string/jumbo v11, "Created-Time"

    invoke-virtual {v6, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    .line 98
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    .line 99
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mPrepareClassesMap:Ljava/util/Map;

    .line 100
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mUsedMethodsMap:Ljava/util/Map;

    .line 101
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mModifiedClassesMap:Ljava/util/Map;

    .line 102
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mUsedClassesMap:Ljava/util/Map;

    .line 103
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mAddClassesMap:Ljava/util/Map;

    .line 107
    invoke-virtual {v6}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    .line 109
    .local v0, "attrName":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v0}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v10, "-Patch-Classes"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 113
    invoke-virtual {v6, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 114
    .local v9, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    const-string/jumbo v11, "-Patch-Classes"

    invoke-direct {p0, v8, v11}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v0    # "attrName":Ljava/util/jar/Attributes$Name;
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "main":Ljava/util/jar/Attributes;
    .end local v7    # "manifest":Ljava/util/jar/Manifest;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    :goto_1
    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 136
    :cond_1
    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v10

    .line 115
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "attrName":Ljava/util/jar/Attributes$Name;
    .restart local v1    # "entry":Ljava/util/jar/JarEntry;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "main":Ljava/util/jar/Attributes;
    .restart local v7    # "manifest":Ljava/util/jar/Manifest;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v10, "-Prepare-Classes"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 116
    invoke-virtual {v6, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 117
    .restart local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mPrepareClassesMap:Ljava/util/Map;

    const-string/jumbo v11, "-Prepare-Classes"

    invoke-direct {p0, v8, v11}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v10, "-Modified-Classes"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    invoke-virtual {v6, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 120
    .restart local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mModifiedClassesMap:Ljava/util/Map;

    const-string/jumbo v11, "-Modified-Classes"

    invoke-direct {p0, v8, v11}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 121
    .end local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v10, "-Used-Classes"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 122
    invoke-virtual {v6, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 123
    .restart local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mUsedClassesMap:Ljava/util/Map;

    const-string/jumbo v11, "-Used-Classes"

    invoke-direct {p0, v8, v11}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 124
    .end local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v10, "-Used-Methods"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 125
    invoke-virtual {v6, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 126
    .restart local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mUsedMethodsMap:Ljava/util/Map;

    const-string/jumbo v11, "-Used-Methods"

    invoke-direct {p0, v8, v11}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 127
    .end local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v10, "-add-classes"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 128
    invoke-virtual {v6, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 129
    .restart local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/alipay/euler/andfix/patch/Patch;->mAddClassesMap:Ljava/util/Map;

    const-string/jumbo v11, "-add-classes"

    invoke-direct {p0, v8, v11}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 134
    .end local v0    # "attrName":Ljava/util/jar/Attributes$Name;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    .line 136
    if-eqz v2, :cond_9

    .line 137
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_9
    return-void

    .line 133
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v6    # "main":Ljava/util/jar/Attributes;
    .end local v7    # "manifest":Ljava/util/jar/Manifest;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v10

    goto/16 :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/alipay/euler/andfix/patch/Patch;)I
    .locals 2
    .param p1, "another"    # Lcom/alipay/euler/andfix/patch/Patch;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-virtual {p0, p1}, Lcom/alipay/euler/andfix/patch/Patch;->compareTo(Lcom/alipay/euler/andfix/patch/Patch;)I

    move-result v0

    return v0
.end method

.method public getAddClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mAddClassesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getModifiedClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mModifiedClassesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPatchNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrepareClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mPrepareClassesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUsedClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mUsedClassesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getUsedMethods(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mUsedMethodsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Patch{mTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
