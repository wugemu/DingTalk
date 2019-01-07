.class public final Lpw;
.super Lpz;
.source "MessageController.java"


# static fields
.field private static d:Lpw;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "MessageController"

    invoke-direct {p0, v0}, Lpz;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lpw;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lpw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpw;->d:Lpw;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lpw;

    invoke-direct {v0}, Lpw;-><init>()V

    sput-object v0, Lpw;->d:Lpw;

    .line 26
    :cond_0
    sget-object v0, Lpw;->d:Lpw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IJLuv;)V
    .locals 12
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "syncType"    # I
    .param p4, "maxUid"    # J
    .param p6, "listener"    # Luv;

    .prologue
    .line 124
    const-string/jumbo v2, "SyncMailBox"

    new-instance v3, Lpw$5;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lpw$5;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IJLuv;)V

    move-object/from16 v0, p6

    invoke-virtual {p0, v2, v0, v3}, Lpw;->a(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V
    .locals 13
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUid"    # J
    .param p7, "listener"    # Luv;

    .prologue
    .line 107
    const-string/jumbo v11, "SyncchronizeFlag"

    new-instance v2, Lpw$4;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lpw$4;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V

    move-object/from16 v0, p7

    invoke-virtual {p0, v11, v0, v2}, Lpw;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V
    .locals 13
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;
    .param p6, "encoding"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "listener"    # Luv;

    .prologue
    .line 167
    const-string/jumbo v12, "fetchMailDetail"

    new-instance v2, Lpw$8;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lpw$8;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V

    move-object/from16 v0, p8

    invoke-virtual {p0, v12, v0, v2}, Lpw;->a(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
    .locals 9
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "currentReadStatus"    # Z
    .param p6, "listener"    # Luv;

    .prologue
    .line 141
    const-string/jumbo v8, "ChangeMailReadStatus"

    new-instance v0, Lpw$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lpw$6;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V

    invoke-virtual {p0, v8, p6, v0}, Lpw;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Luv;)V
    .locals 8
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .param p5, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    .local p4, "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v7, "moveMessage"

    new-instance v0, Lpw$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lpw$1;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Luv;)V

    invoke-virtual {p0, v7, p5, v0}, Lpw;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V
    .locals 7
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p4, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    .local p3, "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v6, "deleteMessage"

    new-instance v0, Lpw$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpw$2;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V

    invoke-virtual {p0, v6, p4, v0}, Lpw;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Luv;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    const-string/jumbo v0, "ListFolders"

    new-instance v1, Lpw$3;

    invoke-direct {v1, p0, p1, p2}, Lpw$3;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Luv;)V

    invoke-virtual {p0, v0, p2, v1}, Lpw;->a(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public final b(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
    .locals 9
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isFlag"    # Z
    .param p6, "listener"    # Luv;

    .prologue
    .line 158
    const-string/jumbo v8, "ChangeMailFlag"

    new-instance v0, Lpw$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lpw$7;-><init>(Lpw;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V

    invoke-virtual {p0, v8, p6, v0}, Lpw;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method
