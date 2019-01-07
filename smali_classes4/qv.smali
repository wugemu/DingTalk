.class public final Lqv;
.super Lqk;
.source "SaveDraftTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lqk;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J
    .param p6, "sourceId"    # J

    .prologue
    .line 33
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lqk;-><init>(Ljava/lang/String;JJJZ)V

    .line 34
    return-void
.end method

.method static synthetic a(Lqv;)V
    .locals 0
    .param p0, "x0"    # Lqv;

    .prologue
    .line 17
    invoke-virtual {p0}, Lqv;->j()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lqv;->l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v0, "SaveDraftTask"

    const-string/jumbo v1, "appendMail"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lpy;->a()Lpy;

    move-result-object v0

    iget-object v1, p0, Lqv;->c:Lcom/alibaba/alimei/emailcommon/Account;

    iget-object v2, p0, Lqv;->l:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    new-instance v3, Lqv$1;

    invoke-direct {v3, p0}, Lqv$1;-><init>(Lqv;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lpy;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V

    goto :goto_0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "SaveDraftTask"

    return-object v0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x5

    return v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    return v0
.end method
