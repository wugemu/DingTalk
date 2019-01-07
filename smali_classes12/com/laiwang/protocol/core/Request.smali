.class public final Lcom/laiwang/protocol/core/Request;
.super Lcom/laiwang/protocol/android/bd;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/core/Request$Processor;,
        Lcom/laiwang/protocol/core/Request$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/protocol/android/bd",
        "<",
        "Ljava/lang/String;",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private endTime:J

.field private pendTime:J

.field private sendTime:J

.field private timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "startline"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bd;-><init>(Ljava/lang/Object;)V

    .line 17
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    .line 18
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->pendTime:J

    .line 19
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->sendTime:J

    .line 20
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->endTime:J

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "startline"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bd;-><init>(Ljava/lang/Object;)V

    .line 17
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    .line 18
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->pendTime:J

    .line 19
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->sendTime:J

    .line 20
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->endTime:J

    .line 51
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;)V
    .locals 4
    .param p1, "startline"    # Ljava/lang/String;
    .param p2, "messageID"    # Lcom/laiwang/protocol/core/MessageID;

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/bd;-><init>(Ljava/lang/Object;Lcom/laiwang/protocol/core/MessageID;)V

    .line 17
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    .line 18
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->pendTime:J

    .line 19
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->sendTime:J

    .line 20
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->endTime:J

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;I)V
    .locals 4
    .param p1, "startline"    # Ljava/lang/String;
    .param p2, "messageID"    # Lcom/laiwang/protocol/core/MessageID;
    .param p3, "timeout"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/bd;-><init>(Ljava/lang/Object;Lcom/laiwang/protocol/core/MessageID;)V

    .line 17
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    .line 18
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->pendTime:J

    .line 19
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->sendTime:J

    .line 20
    iput-wide v2, p0, Lcom/laiwang/protocol/core/Request;->endTime:J

    .line 56
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    .line 57
    return-void
.end method

.method public static newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;
    .locals 2
    .param p0, "startline"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/laiwang/protocol/core/Request;

    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/core/Request;-><init>(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;)V

    return-object v0
.end method

.method public static request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lcom/laiwang/protocol/core/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/core/Request$Builder;-><init>(Ljava/lang/String;Lcom/laiwang/protocol/core/Request$1;)V

    return-object v0
.end method

.method public static request(Ljava/lang/String;I)Lcom/laiwang/protocol/core/Request;
    .locals 2
    .param p0, "startline"    # Ljava/lang/String;
    .param p1, "timeout"    # I

    .prologue
    .line 28
    new-instance v0, Lcom/laiwang/protocol/core/Request;

    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/laiwang/protocol/core/Request;-><init>(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;I)V

    return-object v0
.end method

.method public static request(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;)Lcom/laiwang/protocol/core/Request;
    .locals 1
    .param p0, "startline"    # Ljava/lang/String;
    .param p1, "messageID"    # Lcom/laiwang/protocol/core/MessageID;

    .prologue
    .line 32
    new-instance v0, Lcom/laiwang/protocol/core/Request;

    invoke-direct {v0, p0, p1}, Lcom/laiwang/protocol/core/Request;-><init>(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;)V

    return-object v0
.end method

.method public static request(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;I)Lcom/laiwang/protocol/core/Request;
    .locals 1
    .param p0, "startline"    # Ljava/lang/String;
    .param p1, "messageID"    # Lcom/laiwang/protocol/core/MessageID;
    .param p2, "timeout"    # I

    .prologue
    .line 36
    new-instance v0, Lcom/laiwang/protocol/core/Request;

    invoke-direct {v0, p0, p1, p2}, Lcom/laiwang/protocol/core/Request;-><init>(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;I)V

    return-object v0
.end method


# virtual methods
.method public final getEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/laiwang/protocol/core/Request;->endTime:J

    return-wide v0
.end method

.method public final getPendTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/laiwang/protocol/core/Request;->pendTime:J

    return-wide v0
.end method

.method public final getSendTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/laiwang/protocol/core/Request;->sendTime:J

    return-wide v0
.end method

.method public final getTimeout()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    return-wide v0
.end method

.method public final setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/laiwang/protocol/core/Request;->endTime:J

    .line 93
    return-void
.end method

.method public final setPendTime(J)V
    .locals 1
    .param p1, "pendTime"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/laiwang/protocol/core/Request;->pendTime:J

    .line 77
    return-void
.end method

.method public final setSendTime(J)V
    .locals 1
    .param p1, "sendTime"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/laiwang/protocol/core/Request;->sendTime:J

    .line 85
    return-void
.end method

.method public final setTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/laiwang/protocol/core/Request;->timeout:J

    .line 69
    return-void
.end method

.method public final url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
