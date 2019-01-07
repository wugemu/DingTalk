.class public final Leql;
.super Leqi;
.source "MailSearchModel.java"


# instance fields
.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field private i:J

.field private j:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/String;JLjava/lang/String;IZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "desc"    # Ljava/lang/CharSequence;
    .param p3, "isStarMail"    # Z
    .param p4, "senderName"    # Ljava/lang/String;
    .param p5, "sendTime"    # J
    .param p7, "mailId"    # Ljava/lang/String;
    .param p8, "relateCount"    # I
    .param p9, "haveRead"    # Z
    .param p10, "hasAttachment"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Leqi;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 26
    iput-boolean p3, p0, Leql;->d:Z

    .line 27
    iput-object p4, p0, Leql;->e:Ljava/lang/String;

    .line 28
    iput-wide p5, p0, Leql;->i:J

    .line 29
    iput-object p7, p0, Leql;->f:Ljava/lang/String;

    .line 30
    iput p8, p0, Leql;->j:I

    .line 31
    iput-boolean p9, p0, Leql;->g:Z

    .line 32
    iput-boolean p10, p0, Leql;->h:Z

    .line 33
    return-void
.end method

.method public static a(Lchq;)Leql;
    .locals 12
    .param p0, "sro"    # Lchq;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    .line 40
    :cond_0
    const/4 v9, 0x0

    .line 41
    .local v9, "relateCount":I
    iget-object v1, p0, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v2, "mail_related_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "relateCountStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 49
    :cond_1
    :goto_1
    iget-object v1, p0, Lchq;->a:Ljava/lang/String;

    .line 1057
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 50
    .local v4, "isStarMail":Z
    iget-object v1, p0, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v2, "mail_have_read"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2057
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 51
    .local v10, "haveRead":Z
    iget-object v1, p0, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v2, "mail_have_attachment"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3057
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 53
    .local v11, "hasAttachment":Z
    new-instance v1, Leql;

    iget-object v2, p0, Lchq;->b:Ljava/lang/String;

    invoke-static {v2}, Leql;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lchq;->c:Ljava/lang/String;

    invoke-static {v3}, Leql;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lchq;->d:Ljava/lang/String;

    invoke-static {v5}, Leql;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lchq;->e:J

    iget-object v8, p0, Lchq;->g:Ljava/lang/String;

    invoke-direct/range {v1 .. v11}, Leql;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/String;JLjava/lang/String;IZZ)V

    goto :goto_0

    .end local v4    # "isStarMail":Z
    .end local v10    # "haveRead":Z
    .end local v11    # "hasAttachment":Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "\t"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
