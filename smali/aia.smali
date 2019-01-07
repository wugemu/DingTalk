.class public final Laia;
.super Lahp;
.source "SyncSingleDraftTask.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lahp;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J

    .prologue
    .line 29
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lahp;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 30
    sget-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 1062
    iput-object v0, p0, Lyr;->u:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "SyncSingleDraftTask"

    return-object v0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x5

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "basic_SyncDraft"

    return-object v0
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method protected final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "cmail_save_draft"

    return-object v0
.end method
