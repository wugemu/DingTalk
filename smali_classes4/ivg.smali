.class public final Livg;
.super Livc;
.source "ImageList.java"

# interfaces
.implements Live;


# static fields
.field static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string/jumbo v1, "image/png"

    aput-object v1, v0, v3

    const-string/jumbo v1, "image/gif"

    aput-object v1, v0, v4

    sput-object v0, Livg;->h:[Ljava/lang/String;

    .line 101
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mini_thumb_magic"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Livg;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "sort"    # I
    .param p4, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Livc;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/Cursor;)Livb;
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 127
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 128
    .local v6, "id":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "dataPath":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 130
    .local v14, "dateTaken":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_0

    .line 131
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 133
    :cond_0
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 134
    .local v11, "miniThumbMagic":J
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 135
    .local v18, "orientation":I
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 136
    .local v16, "title":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 137
    .local v13, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 138
    :cond_1
    move-object/from16 v16, v10

    .line 140
    :cond_2
    move-object/from16 v17, v16

    .line 141
    .local v17, "displayName":Ljava/lang/String;
    new-instance v3, Livf;

    move-object/from16 v0, p0

    iget-object v5, v0, Livg;->a:Landroid/content/ContentResolver;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Livg;->a(J)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v18}, Livf;-><init>(Livc;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method

.method protected final b(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final c()Landroid/database/Cursor;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 95
    iget-object v0, p0, Livg;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Livg;->c:Landroid/net/Uri;

    sget-object v2, Livg;->g:[Ljava/lang/String;

    .line 1078
    iget-object v3, p0, Livg;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "(mime_type in (?, ?, ?))"

    .line 1083
    :goto_0
    iget-object v4, p0, Livg;->e:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1085
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 1086
    sget-object v5, Livg;->h:[Ljava/lang/String;

    invoke-static {v5, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    iget-object v5, p0, Livg;->e:Ljava/lang/String;

    aput-object v5, v4, v8

    .line 97
    :goto_1
    invoke-virtual {p0}, Livg;->d()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    .local v6, "c":Landroid/database/Cursor;
    return-object v6

    .line 1078
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string/jumbo v3, "(mime_type in (?, ?, ?)) AND bucket_id = ?"

    goto :goto_0

    .line 1090
    :cond_1
    sget-object v4, Livg;->h:[Ljava/lang/String;

    goto :goto_1
.end method
