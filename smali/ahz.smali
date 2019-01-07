.class public final Lahz;
.super Lahp;
.source "SingleMailSendTask.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lahp;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J
    .param p6, "srcServerId"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lahp;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 30
    sget-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

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
    const/16 v0, 0x8

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "SingleMailSendTask"

    return-object v0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "basic_SendMail"

    return-object v0
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "cmail_send_mail"

    return-object v0
.end method
