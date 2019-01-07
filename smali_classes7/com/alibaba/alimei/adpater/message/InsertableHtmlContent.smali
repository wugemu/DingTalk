.class public Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;
.super Ljava/lang/Object;
.source "InsertableHtmlContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8ee44ebaL


# instance fields
.field private footerInsertionPoint:I

.field private headerInsertionPoint:I

.field private insertionLocation:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

.field private quotedContent:Ljava/lang/StringBuilder;

.field private userContent:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->headerInsertionPoint:I

    .line 19
    iput v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->userContent:Ljava/lang/StringBuilder;

    .line 25
    sget-object v0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;->BEFORE_QUOTE:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->insertionLocation:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    return-void
.end method


# virtual methods
.method public clearQuotedContent()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    iput v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    .line 102
    iput v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->headerInsertionPoint:I

    .line 103
    return-void
.end method

.method public getFooterInsertionPoint()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    return v0
.end method

.method public getInsertionPoint()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->insertionLocation:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    sget-object v1, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;->BEFORE_QUOTE:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    if-ne v0, v1, :cond_0

    .line 128
    iget v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->headerInsertionPoint:I

    .line 130
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    goto :goto_0
.end method

.method public getQuotedContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertIntoQuotedFooter(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    .line 94
    return-void
.end method

.method public insertIntoQuotedHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->headerInsertionPoint:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    .line 80
    return-void
.end method

.method public setFooterInsertionPoint(I)V
    .locals 2
    .param p1, "footerInsertionPoint"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 44
    .local v0, "len":I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 45
    :cond_0
    iput v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_1
    iput p1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    goto :goto_0
.end method

.method public setHeaderInsertionPoint(I)V
    .locals 1
    .param p1, "headerInsertionPoint"    # I

    .prologue
    .line 35
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->headerInsertionPoint:I

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_1
    iput p1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->headerInsertionPoint:I

    goto :goto_0
.end method

.method public setInsertionLocation(Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;)V
    .locals 0
    .param p1, "insertionLocation"    # Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->insertionLocation:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    .line 120
    return-void
.end method

.method public setQuotedContent(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/StringBuilder;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 65
    return-void
.end method

.method public setUserContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->userContent:Ljava/lang/StringBuilder;

    .line 112
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "InsertableHtmlContent{headerInsertionPoint="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->headerInsertionPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", footerInsertionPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->footerInsertionPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", insertionLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->insertionLocation:Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent$InsertionLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", quotedContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->userContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", compiledResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->getInsertionPoint()I

    move-result v0

    .line 151
    .local v0, "insertionPoint":I
    iget-object v2, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->userContent:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/message/InsertableHtmlContent;->userContent:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 153
    return-object v1
.end method
