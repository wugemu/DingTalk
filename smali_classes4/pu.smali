.class public final Lpu;
.super Lpz;
.source "AttachmentController.java"


# static fields
.field private static d:Lpu;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "AttachmentController"

    invoke-direct {p0, v0}, Lpz;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Lpu;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lpu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpu;->d:Lpu;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lpu;

    invoke-direct {v0}, Lpu;-><init>()V

    sput-object v0, Lpu;->d:Lpu;

    .line 21
    :cond_0
    sget-object v0, Lpu;->d:Lpu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
    .locals 14
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;
    .param p6, "encoding"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "size"    # J
    .param p10, "listener"    # Luv;

    .prologue
    .line 39
    const-string/jumbo v13, "fetchAttachment"

    new-instance v1, Lpu$1;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lpu$1;-><init>(Lpu;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v13, v0, v1}, Lpu;->b(Ljava/lang/String;Luv;Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
