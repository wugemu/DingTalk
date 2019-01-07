.class public Lqh;
.super Ljava/lang/Object;
.source "CommonAccountPushDispatcher.java"


# static fields
.field private static volatile a:Lqh;


# instance fields
.field private b:Z

.field private c:Ljava/util/Map;
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

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/nio/charset/Charset;

.field private f:Lyb;

.field private g:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v4, p0, Lqh;->b:Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqh;->c:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqh;->d:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lqh;->g:Ljava/lang/Object;

    .line 1083
    new-instance v0, Lqh$1;

    invoke-direct {v0, p0}, Lqh$1;-><init>(Lqh;)V

    iput-object v0, p0, Lqh;->f:Lyb;

    .line 1103
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    iget-object v1, p0, Lqh;->f:Lyb;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "basic_SyncMail"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "basic_SyncNewMail"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 75
    new-instance v0, Livp;

    invoke-direct {v0}, Livp;-><init>()V

    const-string/jumbo v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Livp;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lqh;->e:Ljava/nio/charset/Charset;

    .line 76
    return-void
.end method

.method public static a()Lqh;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lqh;->a:Lqh;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lqh;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lqh;->a:Lqh;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lqh;

    invoke-direct {v0}, Lqh;-><init>()V

    sput-object v0, Lqh;->a:Lqh;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lqh;->a:Lqh;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lqh;)V
    .locals 0
    .param p0, "x0"    # Lqh;

    .prologue
    .line 43
    invoke-direct {p0}, Lqh;->b()V

    return-void
.end method

.method static synthetic a(Lqh;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lqh;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/List;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 43
    .line 1196
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1204
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1205
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1206
    const-string/jumbo v4, "CommonAccountPushDispatcher"

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "push --> handleFoldersPush folder: "

    aput-object v7, v6, v3

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    iget v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1213
    :cond_3
    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1214
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1215
    if-eqz v0, :cond_4

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1216
    const-string/jumbo v4, "CommonAccountPushDispatcher"

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "push --> handleFoldersPush folder: "

    aput-object v7, v6, v3

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    iget v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1223
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1224
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/MailApi;

    .line 1225
    if-eqz v0, :cond_0

    .line 1227
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [J

    .line 1228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1229
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v2

    move v2, v4

    .line 1230
    goto :goto_3

    .line 1233
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 1234
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1235
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v4, v3

    move v3, v2

    .line 1236
    goto :goto_4

    .line 1238
    :cond_7
    invoke-interface {v0, v6, v4}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncNewMails([J[I)V

    goto/16 :goto_0

    .line 1242
    :cond_8
    invoke-direct {p0}, Lqh;->b()V

    goto/16 :goto_0
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    iget-object v6, p0, Lqh;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 108
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lqh;->b:Z

    .line 110
    const-string/jumbo v5, "CommonAccountPushDispatcher"

    const-string/jumbo v7, "common account push handler resume"

    invoke-static {v5, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "folderServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "accountName":Ljava/lang/String;
    iget-object v5, p0, Lqh;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 115
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accountName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 117
    .restart local v0    # "accountName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "folderServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/List;

    .line 122
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "folderServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 123
    iget-object v5, p0, Lqh;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v5, p0, Lqh;->d:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v5, 0x1

    iput-boolean v5, p0, Lqh;->b:Z

    .line 128
    const-string/jumbo v5, "CommonAccountPushDispatcher"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "resume handle increment folders "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0, v0, v3}, Lqh;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    monitor-exit v6

    .line 151
    :goto_0
    return-void

    .line 133
    :cond_2
    const/4 v4, 0x0

    .line 134
    .local v4, "folderTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lqh;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accountName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 137
    .restart local v0    # "accountName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "folderTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v4, Ljava/util/List;

    .line 142
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v4    # "folderTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 143
    iget-object v5, p0, Lqh;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v5, p0, Lqh;->d:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v5, 0x1

    iput-boolean v5, p0, Lqh;->b:Z

    .line 148
    const-string/jumbo v5, "CommonAccountPushDispatcher"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "resume handle increment folders "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0, v0, v4}, Lqh;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 151
    :cond_5
    monitor-exit v6

    goto :goto_0

    .end local v0    # "accountName":Ljava/lang/String;
    .end local v3    # "folderServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "folderTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 343
    :try_start_0
    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 344
    .local v1, "encoded":[B
    iget-object v4, p0, Lqh;->e:Ljava/nio/charset/Charset;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 345
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 355
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .end local v1    # "encoded":[B
    :goto_0
    return-object v4

    .line 347
    :catch_0
    move-exception v3

    .line 349
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, ", Unable to decode folder name "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "errorMsg":Ljava/lang/String;
    const-string/jumbo v4, "CommonAccountPushDispatcher"

    invoke-static {v4, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "folderServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 247
    invoke-static {p1}, Lpp;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 248
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string/jumbo v1, "CommonAccountPushDispatcher"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "push --> found imap folders:"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Lqh$2;

    invoke-direct {v1, p0, p1, p2}, Lqh$2;-><init>(Lqh;Ljava/lang/String;Ljava/util/List;)V

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v0, v5, v1, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryVisibleFoldersForDingTalk(ZLxv;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    .local p2, "folderServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "folderTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lqh;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 157
    :try_start_0
    iget-boolean v4, p0, Lqh;->b:Z

    .line 158
    .local v4, "result":Z
    if-eqz v4, :cond_6

    .line 159
    const-string/jumbo v5, "CommonAccountPushDispatcher"

    const-string/jumbo v7, "syncing in progress, just save increment"

    invoke-static {v5, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v5, p0, Lqh;->c:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, p0, Lqh;->c:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 164
    .local v3, "oldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "newServerId":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 166
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v0    # "newServerId":Ljava/lang/String;
    .end local v3    # "oldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "result":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 170
    .restart local v4    # "result":Z
    :cond_1
    :try_start_1
    iget-object v5, p0, Lqh;->c:Ljava/util/Map;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_2
    iget-object v5, p0, Lqh;->d:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    iget-object v5, p0, Lqh;->d:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 177
    .local v2, "oldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 178
    .local v1, "newType":Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 179
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    .end local v1    # "newType":Ljava/lang/Integer;
    .end local v2    # "oldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v5, p0, Lqh;->d:Ljava/util/Map;

    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_5
    :goto_2
    monitor-exit v6

    .line 191
    return v4

    .line 187
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lqh;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 269
    .local p2, "folderTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lpp;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 270
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string/jumbo v1, "CommonAccountPushDispatcher"

    const-string/jumbo v2, "push --> not found imap folder, use folder type instead"

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v1, Lqh$3;

    invoke-direct {v1, p0, p1, p2}, Lqh$3;-><init>(Lqh;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->querySystemMailFolders(Lxv;)V

    goto :goto_0
.end method
