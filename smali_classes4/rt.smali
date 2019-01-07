.class public final Lrt;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:I

.field public final g:J

.field public final h:Z


# direct methods
.method private constructor <init>(JJLjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "size"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "accountKey"    # J
    .param p9, "flags"    # I
    .param p10, "messageKey"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p3, p0, Lrt;->b:J

    .line 67
    invoke-static {p5, p6}, Lagd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lrt;->d:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lrt;->c:Ljava/lang/String;

    .line 69
    iput-wide p1, p0, Lrt;->a:J

    .line 70
    iput-wide p7, p0, Lrt;->e:J

    .line 71
    iput p9, p0, Lrt;->f:I

    .line 72
    iput-wide p10, p0, Lrt;->g:J

    .line 73
    const/4 v0, 0x0

    .line 76
    .local v0, "canImageView":Z
    iget-object v1, p0, Lrt;->d:Ljava/lang/String;

    sget-object v2, Lagd;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Lrt;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :cond_0
    iput-boolean v0, p0, Lrt;->h:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 46
    iget-wide v2, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    iget-wide v8, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    iget v10, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->flags:I

    iget-wide v11, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lrt;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 48
    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 1051
    .local v0, "matchType":Ljava/lang/String;
    const-string/jumbo v4, "\\*"

    const-string/jumbo v5, "\\.\\*"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1053
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    const/4 v1, 0x1

    .line 61
    .end local v0    # "matchType":Ljava/lang/String;
    :cond_0
    return v1

    .line 56
    .restart local v0    # "matchType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-ne p1, p0, :cond_1

    .line 126
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 122
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 123
    goto :goto_0

    .line 126
    :cond_3
    check-cast p1, Lrt;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Lrt;->a:J

    iget-wide v4, p0, Lrt;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    iget-wide v0, p0, Lrt;->a:J

    iget-wide v2, p0, Lrt;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{Attachment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lrt;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrt;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lrt;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
