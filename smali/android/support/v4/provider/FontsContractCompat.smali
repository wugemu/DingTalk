.class public final Landroid/support/v4/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;,
        Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;,
        Landroid/support/v4/provider/FontsContractCompat$a;
    }
.end annotation


# static fields
.field private static final a:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lfd;

.field private static final c:Ljava/lang/Object;

.field private static final d:Lfw;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfw",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lfd$a",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Lfq;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->a:Lfq;

    .line 178
    new-instance v0, Lfd;

    const-string/jumbo v1, "fonts"

    const/16 v2, 0xa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lfd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->b:Lfd;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->c:Ljava/lang/Object;

    .line 200
    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->d:Lfw;

    .line 719
    new-instance v0, Landroid/support/v4/provider/FontsContractCompat$4;

    invoke-direct {v0}, Landroid/support/v4/provider/FontsContractCompat$4;-><init>()V

    sput-object v0, Landroid/support/v4/provider/FontsContractCompat;->e:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lfc;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lfc;
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Landroid/support/v4/provider/FontsContractCompat;->b(Landroid/content/Context;Lfc;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lfc;Landroid/widget/TextView;III)Landroid/graphics/Typeface;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lfc;
    .param p2, "targetView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "strategy"    # I
    .param p4, "timeout"    # I
    .param p5, "style"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 6139
    iget-object v9, p1, Lfc;->e:Ljava/lang/String;

    .line 207
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "id":Ljava/lang/String;
    sget-object v8, Landroid/support/v4/provider/FontsContractCompat;->a:Lfq;

    invoke-virtual {v8, v3}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 209
    .local v1, "cached":Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    .line 274
    .end local v1    # "cached":Landroid/graphics/Typeface;
    :goto_0
    return-object v1

    .line 213
    .restart local v1    # "cached":Landroid/graphics/Typeface;
    :cond_0
    if-nez p3, :cond_1

    const/4 v4, 0x1

    .line 216
    .local v4, "isBlockingFetch":Z
    :goto_1
    if-eqz v4, :cond_2

    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_2

    .line 218
    move/from16 v0, p5

    invoke-static {p0, p1, v0}, Landroid/support/v4/provider/FontsContractCompat;->b(Landroid/content/Context;Lfc;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 213
    .end local v4    # "isBlockingFetch":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 221
    .restart local v4    # "isBlockingFetch":Z
    :cond_2
    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$1;

    move/from16 v0, p5

    invoke-direct {v2, p0, p1, v0, v3}, Landroid/support/v4/provider/FontsContractCompat$1;-><init>(Landroid/content/Context;Lfc;ILjava/lang/String;)V

    .line 232
    .local v2, "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Typeface;>;"
    if-eqz v4, :cond_3

    .line 234
    :try_start_0
    sget-object v8, Landroid/support/v4/provider/FontsContractCompat;->b:Lfd;

    move/from16 v0, p4

    invoke-virtual {v8, v2, v0}, Lfd;->a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    goto :goto_0

    .line 236
    :catch_0
    move-exception v8

    const/4 v1, 0x0

    goto :goto_0

    .line 239
    :cond_3
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 240
    .local v7, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v6, Landroid/support/v4/provider/FontsContractCompat$2;

    move/from16 v0, p5

    invoke-direct {v6, v7, p2, v0}, Landroid/support/v4/provider/FontsContractCompat$2;-><init>(Ljava/lang/ref/WeakReference;Landroid/widget/TextView;I)V

    .line 250
    .local v6, "reply":Lfd$a;, "Lfd$a<Landroid/graphics/Typeface;>;"
    sget-object v9, Landroid/support/v4/provider/FontsContractCompat;->c:Ljava/lang/Object;

    monitor-enter v9

    .line 251
    :try_start_1
    sget-object v8, Landroid/support/v4/provider/FontsContractCompat;->d:Lfw;

    invoke-virtual {v8, v3}, Lfw;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    sget-object v8, Landroid/support/v4/provider/FontsContractCompat;->d:Lfw;

    invoke-virtual {v8, v3}, Lfw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v1, 0x0

    monitor-exit v9

    goto :goto_0

    .line 260
    .end local v1    # "cached":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 257
    .restart local v1    # "cached":Landroid/graphics/Typeface;
    :cond_4
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v5, "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lfd$a<Landroid/graphics/Typeface;>;>;"
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v8, Landroid/support/v4/provider/FontsContractCompat;->d:Lfw;

    invoke-virtual {v8, v3, v5}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    sget-object v8, Landroid/support/v4/provider/FontsContractCompat;->b:Lfd;

    new-instance v9, Landroid/support/v4/provider/FontsContractCompat$3;

    invoke-direct {v9, v3}, Landroid/support/v4/provider/FontsContractCompat$3;-><init>(Ljava/lang/String;)V

    .line 7135
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 7136
    new-instance v11, Lfd$2;

    invoke-direct {v11, v8, v2, v10, v9}, Lfd$2;-><init>(Lfd;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lfd$a;)V

    invoke-virtual {v8, v11}, Lfd;->a(Ljava/lang/Runnable;)V

    .line 274
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a()Lfq;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/provider/FontsContractCompat;->a:Lfq;

    return-object v0
.end method

.method private static a([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 748
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v1, "shas":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 750
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$a;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$a;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/support/v4/provider/FontsContractCompat$a;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 626
    .local v2, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p1, v4

    .line 7342
    .local v1, "font":Landroid/support/v4/provider/FontsContractCompat$a;
    iget v6, v1, Landroid/support/v4/provider/FontsContractCompat$a;->e:I

    .line 627
    if-nez v6, :cond_0

    .line 8312
    iget-object v3, v1, Landroid/support/v4/provider/FontsContractCompat$a;->a:Landroid/net/Uri;

    .line 632
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 636
    invoke-static {p0, p2, v3}, Lea;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 637
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "font":Landroid/support/v4/provider/FontsContractCompat$a;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .line 736
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 744
    :goto_0
    return v1

    .line 739
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 740
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 741
    goto :goto_0

    .line 739
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 744
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lfc;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/support/v4/provider/FontsContractCompat$a;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lfc;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 759
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 761
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 762
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 763
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 764
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "file"

    .line 765
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 766
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 767
    .local v11, "fileBaseUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 769
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v2, v4, :cond_1

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string/jumbo v23, "_id"

    aput-object v23, v4, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "file_id"

    aput-object v23, v4, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "font_ttc_index"

    aput-object v23, v4, v22

    const/16 v22, 0x3

    const-string/jumbo v23, "font_variation_settings"

    aput-object v23, v4, v22

    const/16 v22, 0x4

    const-string/jumbo v23, "font_weight"

    aput-object v23, v4, v22

    const/16 v22, 0x5

    const-string/jumbo v23, "font_italic"

    aput-object v23, v4, v22

    const/16 v22, 0x6

    const-string/jumbo v23, "result_code"

    aput-object v23, v4, v22

    const-string/jumbo v5, "query = ?"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v6, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    .line 9109
    move-object/from16 v0, p1

    iget-object v0, v0, Lfc;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 774
    aput-object v23, v6, v22

    const/4 v7, 0x0

    move-object/from16 v8, p3

    .line 770
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 783
    :goto_0
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 784
    const-string/jumbo v2, "result_code"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 785
    .local v19, "resultCodeColumnIndex":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 786
    .end local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    :try_start_1
    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 787
    .local v13, "idColumnIndex":I
    const-string/jumbo v2, "file_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 788
    .local v12, "fileIdColumnIndex":I
    const-string/jumbo v2, "font_ttc_index"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 789
    .local v20, "ttcIndexColumnIndex":I
    const-string/jumbo v2, "font_weight"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 790
    .local v21, "weightColumnIndex":I
    const-string/jumbo v2, "font_italic"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 791
    .local v16, "italicColumnIndex":I
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 792
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    .line 793
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 794
    .local v9, "resultCode":I
    :goto_2
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_3

    .line 795
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 797
    .local v6, "ttcIndex":I
    :goto_3
    const/4 v2, -0x1

    if-ne v12, v2, :cond_4

    .line 798
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 799
    .local v14, "id":J
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 805
    .local v5, "fileUri":Landroid/net/Uri;
    :goto_4
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_5

    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 806
    .local v7, "weight":I
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_6

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    const/4 v8, 0x1

    .line 808
    .local v8, "italic":Z
    :goto_6
    new-instance v4, Landroid/support/v4/provider/FontsContractCompat$a;

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/provider/FontsContractCompat$a;-><init>(Landroid/net/Uri;IIZI)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 812
    .end local v5    # "fileUri":Landroid/net/Uri;
    .end local v6    # "ttcIndex":I
    .end local v7    # "weight":I
    .end local v8    # "italic":Z
    .end local v9    # "resultCode":I
    .end local v12    # "fileIdColumnIndex":I
    .end local v13    # "idColumnIndex":I
    .end local v14    # "id":J
    .end local v16    # "italicColumnIndex":I
    .end local v20    # "ttcIndexColumnIndex":I
    .end local v21    # "weightColumnIndex":I
    :catchall_0
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    .end local v19    # "resultCodeColumnIndex":I
    .restart local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    :goto_7
    if-eqz v10, :cond_0

    .line 813
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 777
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string/jumbo v23, "_id"

    aput-object v23, v4, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "file_id"

    aput-object v23, v4, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "font_ttc_index"

    aput-object v23, v4, v22

    const/16 v22, 0x3

    const-string/jumbo v23, "font_variation_settings"

    aput-object v23, v4, v22

    const/16 v22, 0x4

    const-string/jumbo v23, "font_weight"

    aput-object v23, v4, v22

    const/16 v22, 0x5

    const-string/jumbo v23, "font_italic"

    aput-object v23, v4, v22

    const/16 v22, 0x6

    const-string/jumbo v23, "result_code"

    aput-object v23, v4, v22

    const-string/jumbo v5, "query = ?"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v6, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    .line 10109
    move-object/from16 v0, p1

    iget-object v0, v0, Lfc;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 781
    aput-object v23, v6, v22

    const/4 v7, 0x0

    .line 777
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    goto/16 :goto_0

    .line 793
    .end local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    .restart local v12    # "fileIdColumnIndex":I
    .restart local v13    # "idColumnIndex":I
    .restart local v16    # "italicColumnIndex":I
    .restart local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    .restart local v19    # "resultCodeColumnIndex":I
    .restart local v20    # "ttcIndexColumnIndex":I
    .restart local v21    # "weightColumnIndex":I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 795
    .restart local v9    # "resultCode":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 801
    .restart local v6    # "ttcIndex":I
    :cond_4
    :try_start_3
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 802
    .restart local v14    # "id":J
    invoke-static {v11, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .restart local v5    # "fileUri":Landroid/net/Uri;
    goto/16 :goto_4

    .line 805
    :cond_5
    const/16 v7, 0x190

    goto/16 :goto_5

    .line 806
    .restart local v7    # "weight":I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_6

    .end local v5    # "fileUri":Landroid/net/Uri;
    .end local v6    # "ttcIndex":I
    .end local v7    # "weight":I
    .end local v9    # "resultCode":I
    .end local v14    # "id":J
    :cond_7
    move-object/from16 v17, v18

    .line 812
    .end local v12    # "fileIdColumnIndex":I
    .end local v13    # "idColumnIndex":I
    .end local v16    # "italicColumnIndex":I
    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    .end local v19    # "resultCodeColumnIndex":I
    .end local v20    # "ttcIndexColumnIndex":I
    .end local v21    # "weightColumnIndex":I
    .restart local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/FontsContractCompat$a;>;"
    :cond_8
    if-eqz v10, :cond_9

    .line 813
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_9
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/support/v4/provider/FontsContractCompat$a;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v4/provider/FontsContractCompat$a;

    return-object v2

    .line 812
    :catchall_1
    move-exception v2

    goto/16 :goto_7
.end method

.method private static b(Landroid/content/Context;Lfc;I)Landroid/graphics/Typeface;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lfc;
    .param p2, "style"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 186
    .line 1663
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2093
    iget-object v6, p1, Lfc;->a:Ljava/lang/String;

    .line 1680
    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 1681
    if-nez v4, :cond_0

    .line 1682
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No package found for authority: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 194
    :goto_0
    return-object v1

    .line 1686
    :cond_0
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 2101
    iget-object v8, p1, Lfc;->b:Ljava/lang/String;

    .line 1686
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1687
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Found content provider "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", but package was not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3101
    iget-object v4, p1, Lfc;->b:Ljava/lang/String;

    .line 1689
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1695
    :cond_1
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1697
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Landroid/support/v4/provider/FontsContractCompat;->a([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v6

    .line 1698
    sget-object v1, Landroid/support/v4/provider/FontsContractCompat;->e:Ljava/util/Comparator;

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4121
    iget-object v1, p1, Lfc;->d:Ljava/util/List;

    .line 3712
    if-eqz v1, :cond_2

    .line 5121
    iget-object v1, p1, Lfc;->d:Ljava/util/List;

    move-object v2, v1

    .line 1700
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 1702
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1703
    sget-object v1, Landroid/support/v4/provider/FontsContractCompat;->e:Ljava/util/Comparator;

    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1704
    invoke-static {v6, v7}, Landroid/support/v4/provider/FontsContractCompat;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v4

    .line 1664
    :goto_2
    if-nez v1, :cond_5

    .line 1665
    new-instance v0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroid/support/v4/provider/FontsContractCompat$a;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5387
    .local v0, "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :goto_3
    iget v1, v0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->a:I

    .line 190
    if-nez v1, :cond_6

    .line 5391
    iget-object v1, v0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->b:[Landroid/support/v4/provider/FontsContractCompat$a;

    .line 191
    invoke-static {p0, v3, v1, p2}, Ldv;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 5133
    .end local v0    # "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :cond_2
    const/4 v1, 0x0

    .line 3716
    :try_start_1
    invoke-static {v2, v1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1700
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 1708
    goto :goto_2

    .line 1668
    :cond_5
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/support/v4/provider/FontsContractCompat;->a(Landroid/content/Context;Lfc;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/support/v4/provider/FontsContractCompat$a;

    move-result-object v1

    .line 1670
    new-instance v0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroid/support/v4/provider/FontsContractCompat$a;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .restart local v0    # "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :cond_6
    move-object v1, v3

    .line 194
    goto/16 :goto_0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/provider/FontsContractCompat;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()Lfw;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/provider/FontsContractCompat;->d:Lfw;

    return-object v0
.end method
