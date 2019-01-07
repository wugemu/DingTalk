.class public final Lqg;
.super Ljava/lang/Object;
.source "TextBodyBuilder.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "messageContent"    # Ljava/lang/String;
    .param p2, "isHtmlFormated"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v1, p0, Lqg;->a:Z

    .line 10
    iput-boolean v0, p0, Lqg;->b:Z

    .line 11
    iput-boolean v0, p0, Lqg;->c:Z

    .line 12
    iput-boolean v0, p0, Lqg;->d:Z

    .line 13
    iput-boolean v1, p0, Lqg;->e:Z

    .line 14
    iput-boolean v0, p0, Lqg;->j:Z

    .line 22
    iput-object p1, p0, Lqg;->f:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lqg;->j:Z

    .line 24
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 209
    .line 4111
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "<br>\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4114
    const-string/jumbo v1, "&apos;"

    const-string/jumbo v2, "&#39;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 209
    return-object v0
.end method


# virtual methods
.method public final a()Lvn;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    iget-object v4, p0, Lqg;->f:Ljava/lang/String;

    .line 42
    .local v4, "text":Ljava/lang/String;
    iget-boolean v5, p0, Lqg;->a:Z

    if-eqz v5, :cond_7

    .line 1202
    iget-object v3, p0, Lqg;->i:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;

    .line 45
    .local v3, "quotedHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    iget-boolean v5, p0, Lqg;->e:Z

    if-eqz v5, :cond_1

    .line 47
    iget-boolean v5, p0, Lqg;->b:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lqg;->c:Z

    if-eqz v5, :cond_1

    .line 48
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lqg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    :cond_1
    iget-boolean v5, p0, Lqg;->j:Z

    if-nez v5, :cond_2

    .line 54
    invoke-static {v4}, Lqg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    :cond_2
    iget-boolean v5, p0, Lqg;->b:Z

    if-eqz v5, :cond_6

    .line 66
    sget-object v5, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;->AFTER_QUOTE:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->setInsertionLocation(Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;)V

    .line 68
    iget-boolean v5, p0, Lqg;->d:Z

    if-eqz v5, :cond_3

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<br clear=\"all\">"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_3
    :goto_0
    iget-boolean v5, p0, Lqg;->e:Z

    if-eqz v5, :cond_5

    .line 81
    iget-boolean v5, p0, Lqg;->b:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lqg;->c:Z

    if-nez v5, :cond_5

    .line 2186
    const-string/jumbo v5, ""

    .line 2187
    iget-object v6, p0, Lqg;->g:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2188
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lqg;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lqg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_4
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->insertIntoQuotedFooter(Ljava/lang/String;)V

    .line 86
    :cond_5
    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->setUserContent(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "composedMessageLength":I
    invoke-virtual {v3}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->getInsertionPoint()I

    move-result v2

    .line 91
    .local v2, "composedMessageOffset":I
    invoke-virtual {v3}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .end local v3    # "quotedHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    :goto_1
    new-instance v0, Lvn;

    invoke-direct {v0, v4}, Lvn;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "body":Lvn;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3105
    iput-object v5, v0, Lvn;->c:Ljava/lang/Integer;

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3115
    iput-object v5, v0, Lvn;->d:Ljava/lang/Integer;

    .line 114
    return-object v0

    .line 72
    .end local v0    # "body":Lvn;
    .end local v1    # "composedMessageLength":I
    .end local v2    # "composedMessageOffset":I
    .restart local v3    # "quotedHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    :cond_6
    sget-object v5, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;->BEFORE_QUOTE:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->setInsertionLocation(Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;)V

    .line 74
    iget-boolean v5, p0, Lqg;->d:Z

    if-eqz v5, :cond_3

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "<br><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 95
    .end local v3    # "quotedHtmlContent":Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
    :cond_7
    iget-boolean v5, p0, Lqg;->e:Z

    if-eqz v5, :cond_8

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lqg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    :cond_8
    iget-boolean v5, p0, Lqg;->j:Z

    if-nez v5, :cond_9

    .line 101
    invoke-static {v4}, Lqg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 107
    .restart local v1    # "composedMessageLength":I
    const/4 v2, 0x0

    .restart local v2    # "composedMessageOffset":I
    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    const-string/jumbo v0, ""

    .line 178
    .local v0, "signature":Ljava/lang/String;
    iget-object v1, p0, Lqg;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\r\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lqg;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method
