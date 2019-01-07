.class public final Lage;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lage;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Landroid/net/Uri;
    .locals 4
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 77
    const-string/jumbo v0, "calendar"

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    invoke-static {v0, v1}, Lage;->c(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v0, v2, v3}, Lage;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v0, v2, v3}, Lage;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p0, "accountKey"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v5, Lage;->a:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    sget-object v5, Lage;->a:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 102
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 133
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 107
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".db_att"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "dirName":Ljava/lang/String;
    invoke-static {}, Lafv;->c()Lafy;

    .line 2125
    const/4 v1, 0x0

    .line 109
    .local v1, "dir":Ljava/io/File;
    if-nez v1, :cond_3

    .line 110
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1

    .line 111
    const/4 v4, 0x0

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 130
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    .local v0, "baseUri":Landroid/net/Uri;
    sget-object v5, Lage;->a:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 133
    goto :goto_0

    .line 120
    .end local v0    # "baseUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .end local v1    # "dir":Ljava/io/File;
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    move-object v1, v2

    .end local v2    # "dir":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .param p0, "accountKey"    # Ljava/lang/String;
    .param p1, "attachmentId"    # J

    .prologue
    .line 143
    invoke-static {p0}, Lage;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "baseUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(J)Ljava/io/File;
    .locals 4
    .param p0, "accountId"    # J

    .prologue
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".db_att"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "mDirName":Ljava/lang/String;
    invoke-static {}, Lafv;->c()Lafy;

    .line 1125
    const/4 v0, 0x0

    .line 87
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static b(J)V
    .locals 6
    .param p0, "accountId"    # J

    .prologue
    const/4 v0, 0x0

    .line 257
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    .line 258
    const-string/jumbo v0, "Attachment"

    const-string/jumbo v1, "remove attachment files fail for account is less equal than 0"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2269
    invoke-static {v1}, Lage;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2270
    if-nez v1, :cond_1

    .line 2271
    const-string/jumbo v0, "Attachment"

    const-string/jumbo v1, "remove attachment files fail for attUri is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2275
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2277
    const-string/jumbo v1, "Attachment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "remove attachment files fail for attDir is file, attDir: "

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2281
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2282
    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 2283
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v1, v0

    .line 2284
    if-nez v4, :cond_3

    .line 2283
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2287
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 2290
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z
    .locals 4
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 173
    const-string/jumbo v0, "calendar"

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    invoke-static {v0, v1}, Lage;->c(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v0, v2, v3}, Lage;->b(Ljava/lang/String;J)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v0, v2, v3}, Lage;->b(Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;J)Z
    .locals 5
    .param p0, "accountKey"    # Ljava/lang/String;
    .param p1, "attachmentId"    # J

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {p0, p1, p2}, Lage;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 158
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 163
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static c(J)Ljava/lang/String;
    .locals 2
    .param p0, "accountId"    # J

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_cal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
