.class public Lcom/alibaba/doraemon/performance/DDStringBuilder;
.super Ljava/lang/Object;
.source "DDStringBuilder.java"


# instance fields
.field private mShared:Z

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mShared:Z

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mShared:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mShared:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mShared:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    return-object p0
.end method

.method public append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 171
    return-object p0
.end method

.method public append(F)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    return-object p0
.end method

.method public append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    return-object p0
.end method

.method public append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 264
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 286
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 213
    return-object p0
.end method

.method public append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    return-object p0
.end method

.method public append([C)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 228
    return-object p0
.end method

.method public append([CII)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 250
    return-object p0
.end method

.method public appendCodePoint(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "codePoint"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 300
    return-object p0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 318
    return-object p0
.end method

.method public deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 334
    return-object p0
.end method

.method public insert(IC)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 375
    return-object p0
.end method

.method public insert(ID)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(ID)Ljava/lang/StringBuilder;

    .line 456
    return-object p0
.end method

.method public insert(IF)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(IF)Ljava/lang/StringBuilder;

    .line 435
    return-object p0
.end method

.method public insert(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 395
    return-object p0
.end method

.method public insert(IJ)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 415
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 562
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 590
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    .line 476
    return-object p0
.end method

.method public insert(ILjava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    return-object p0
.end method

.method public insert(IZ)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(IZ)Ljava/lang/StringBuilder;

    .line 355
    return-object p0
.end method

.method public insert(I[C)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "ch"    # [C

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 514
    return-object p0
.end method

.method public insert(I[CII)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # [C
    .param p3, "strOffset"    # I
    .param p4, "strLen"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    .line 541
    return-object p0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    return-object p0
.end method

.method public reverse()Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 622
    return-object p0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 662
    return-void
.end method

.method setShared(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mShared:Z

    .line 698
    return-void
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 632
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 633
    iget-boolean v2, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mShared:Z

    if-eqz v2, :cond_1

    .line 635
    const-string/jumbo v1, ""

    .line 636
    .local v1, "resultStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 638
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 639
    iget-object v2, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 640
    iget-object v2, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 648
    .end local v0    # "len":I
    .end local v1    # "resultStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 648
    :cond_2
    iget-object v2, p0, Lcom/alibaba/doraemon/performance/DDStringBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
