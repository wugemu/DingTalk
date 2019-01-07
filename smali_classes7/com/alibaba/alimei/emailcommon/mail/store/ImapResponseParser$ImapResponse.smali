.class public Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
.super Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapResponse"
.end annotation


# instance fields
.field private mCallback:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

.field mCommandContinuationRequested:Z

.field private mCompleted:Z

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->this$0:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mCallback:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .param p1, "x1"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mCallback:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    return p1
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 784
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    const-string/jumbo v3, "[ALERT]"

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 786
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 787
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x2

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 789
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 796
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x0

    .line 779
    :goto_0
    return v0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->this$0:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    invoke-static {v0, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    .line 779
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "+"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    goto :goto_0
.end method
