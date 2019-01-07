.class public final Lqa;
.super Lpz;
.source "SummaryController.java"


# static fields
.field private static d:Lqa;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "SummaryController"

    invoke-direct {p0, v0}, Lpz;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static declared-synchronized a()Lqa;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lqa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lqa;->d:Lqa;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lqa;

    invoke-direct {v0}, Lqa;-><init>()V

    sput-object v0, Lqa;->d:Lqa;

    .line 22
    :cond_0
    sget-object v0, Lqa;->d:Lqa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
    .locals 15
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;
    .param p6, "encoding"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "range"    # J
    .param p10, "listener"    # Luv;

    .prologue
    .line 42
    const-string/jumbo v13, "fetchMailSummary"

    new-instance v1, Lqa$1;

    const-wide/16 v10, -0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lqa$1;-><init>(Lqa;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v13, v0, v1}, Lqa;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLuv;)V
    .locals 9
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "listener"    # Luv;

    .prologue
    .line 58
    const-string/jumbo v7, "fetchMailEml"

    new-instance v0, Lqa$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lqa$2;-><init>(Lqa;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLuv;)V

    invoke-virtual {p0, v7, p5, v0}, Lqa;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
