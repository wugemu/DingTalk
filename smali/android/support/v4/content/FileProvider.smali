.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/FileProvider$b;,
        Landroid/support/v4/content/FileProvider$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/io/File;

.field private static c:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/content/FileProvider$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/support/v4/content/FileProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 325
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/content/FileProvider;->a:[Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/content/FileProvider;->b:Ljava/io/File;

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 664
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 400
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$a;

    move-result-object v0

    .line 401
    .local v0, "strategy":Landroid/support/v4/content/FileProvider$a;
    invoke-interface {v0, p2}, Landroid/support/v4/content/FileProvider$a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$a;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 554
    sget-object v4, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;

    monitor-enter v4

    .line 555
    :try_start_0
    sget-object v2, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/content/FileProvider$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    .local v1, "strat":Landroid/support/v4/content/FileProvider$a;
    if-nez v1, :cond_7

    .line 3580
    :try_start_1
    new-instance v1, Landroid/support/v4/content/FileProvider$b;

    .end local v1    # "strat":Landroid/support/v4/content/FileProvider$a;
    invoke-direct {v1, p1}, Landroid/support/v4/content/FileProvider$b;-><init>(Ljava/lang/String;)V

    .line 3582
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x80

    .line 3583
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 3585
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.support.FILE_PROVIDER_PATHS"

    .line 3584
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 3586
    if-nez v5, :cond_0

    .line 3587
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 568
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3592
    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v10, :cond_6

    .line 3593
    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    .line 3594
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3596
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3597
    const/4 v7, 0x0

    const-string/jumbo v8, "path"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3600
    const-string/jumbo v8, "root-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3601
    sget-object v2, Landroid/support/v4/content/FileProvider;->b:Ljava/io/File;

    .line 3620
    :goto_1
    if-eqz v2, :cond_0

    .line 3621
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v2, v8}, Landroid/support/v4/content/FileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/support/v4/content/FileProvider$b;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 562
    :catch_1
    move-exception v0

    .line 563
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3602
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :try_start_5
    const-string/jumbo v8, "files-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3603
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    goto :goto_1

    .line 3604
    :cond_2
    const-string/jumbo v8, "cache-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3605
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    goto :goto_1

    .line 3606
    :cond_3
    const-string/jumbo v8, "external-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3607
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    goto :goto_1

    .line 3608
    :cond_4
    const-string/jumbo v8, "external-files-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3609
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ldp;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 3610
    array-length v8, v2

    if-lez v8, :cond_8

    .line 3611
    const/4 v8, 0x0

    aget-object v2, v2, v8

    goto :goto_1

    .line 3613
    :cond_5
    const-string/jumbo v8, "external-cache-path"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3614
    invoke-static {p0}, Ldp;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    .line 3615
    array-length v8, v2

    if-lez v8, :cond_8

    .line 3616
    const/4 v8, 0x0

    aget-object v2, v2, v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 566
    .restart local v1    # "strat":Landroid/support/v4/content/FileProvider$a;
    :cond_6
    :try_start_6
    sget-object v2, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_7
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 569
    return-object v1

    .end local v1    # "strat":Landroid/support/v4/content/FileProvider$a;
    :cond_8
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 787
    move-object v0, p0

    .local v0, "cur":Ljava/io/File;
    move v3, v4

    move-object v1, v0

    .line 788
    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_0
    if-gtz v3, :cond_0

    aget-object v2, p1, v4

    .line 789
    .local v2, "segment":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 790
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 788
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_0

    .line 793
    .end local v2    # "segment":Ljava/lang/String;
    :cond_0
    return-object v1

    .restart local v2    # "segment":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 369
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must not be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/FileProvider$a;

    .line 377
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 521
    iget-object v1, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/FileProvider$a;

    invoke-interface {v1, p1}, Landroid/support/v4/content/FileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 522
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 475
    iget-object v4, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/FileProvider$a;

    invoke-interface {v4, p1}, Landroid/support/v4/content/FileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 477
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 478
    .local v2, "lastDot":I
    if-ltz v2, :cond_0

    .line 479
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "mime":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 486
    .end local v0    # "extension":Ljava/lang/String;
    .end local v3    # "mime":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, "application/octet-stream"

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 495
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v2, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/FileProvider$a;

    invoke-interface {v2, p1}, Landroid/support/v4/content/FileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 2763
    .local v0, "file":Ljava/io/File;
    const-string/jumbo v2, "r"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2764
    const/high16 v1, 0x10000000

    .line 545
    .local v1, "fileMode":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 2765
    .end local v1    # "fileMode":I
    :cond_0
    const-string/jumbo v2, "w"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "wt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2766
    :cond_1
    const/high16 v1, 0x2c000000

    goto :goto_0

    .line 2769
    :cond_2
    const-string/jumbo v2, "wa"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2770
    const/high16 v1, 0x2a000000

    goto :goto_0

    .line 2773
    :cond_3
    const-string/jumbo v2, "rw"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2774
    const/high16 v1, 0x38000000

    goto :goto_0

    .line 2776
    :cond_4
    const-string/jumbo v2, "rwt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2777
    const/high16 v1, 0x3c000000    # 0.0078125f

    goto :goto_0

    .line 2781
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/FileProvider$a;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/support/v4/content/FileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v6

    .line 438
    .local v6, "file":Ljava/io/File;
    if-nez p2, :cond_0

    .line 439
    sget-object p2, Landroid/support/v4/content/FileProvider;->a:[Ljava/lang/String;

    .line 442
    :cond_0
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v3, v11, [Ljava/lang/String;

    .line 443
    .local v3, "cols":[Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v9, v11, [Ljava/lang/Object;

    .line 444
    .local v9, "values":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 445
    .local v7, "i":I
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v11, 0x0

    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v2, p2, v11

    .line 446
    .local v2, "col":Ljava/lang/String;
    const-string/jumbo v13, "_display_name"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 447
    const-string/jumbo v13, "_display_name"

    aput-object v13, v3, v8

    .line 448
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v8

    .line 445
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_0

    .line 449
    :cond_1
    const-string/jumbo v13, "_size"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 450
    const-string/jumbo v13, "_size"

    aput-object v13, v3, v8

    .line 451
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v9, v8

    goto :goto_1

    .line 1797
    .end local v2    # "col":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :cond_2
    new-array v4, v8, [Ljava/lang/String;

    .line 1798
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v3, v11, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1803
    .end local v3    # "cols":[Ljava/lang/String;
    .local v4, "cols":[Ljava/lang/String;
    new-array v10, v8, [Ljava/lang/Object;

    .line 1804
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v10, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    .end local v9    # "values":[Ljava/lang/Object;
    .local v10, "values":[Ljava/lang/Object;
    new-instance v5, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    invoke-direct {v5, v4, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 459
    .local v5, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 460
    return-object v5

    .end local v4    # "cols":[Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/MatrixCursor;
    .end local v10    # "values":[Ljava/lang/Object;
    .restart local v2    # "col":Ljava/lang/String;
    .restart local v3    # "cols":[Ljava/lang/String;
    .restart local v9    # "values":[Ljava/lang/Object;
    :cond_3
    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
