.class public final Lgpw;
.super Ljava/lang/Object;
.source "HanziToPinyinUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 56
    .end local p0    # "name":Ljava/lang/String;
    .local v6, "sb":Ljava/lang/StringBuilder;
    .local v7, "sortKey":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 20
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sortKey":Ljava/lang/String;
    .restart local p0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lain;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 24
    const-string/jumbo v11, " "

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v11, v2

    if-ge v0, v11, :cond_4

    .line 26
    aget-object v1, v2, v0

    .line 27
    .local v1, "nameTmp":Ljava/lang/String;
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v11

    invoke-virtual {v11, v1}, Lagr;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 28
    .local v9, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    new-instance v5, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 29
    .local v5, "pinyinHeader":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    new-instance v4, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 30
    .local v4, "pinyinAll":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 31
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lagr$a;

    .line 32
    .local v8, "token":Lagr$a;
    iget v11, v8, Lagr$a;->a:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 35
    iget-object v3, v8, Lagr$a;->c:Ljava/lang/String;

    .line 36
    .local v3, "pinyin":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 38
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v5, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 39
    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 30
    .end local v3    # "pinyin":Ljava/lang/String;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 41
    :cond_1
    iget-object v11, v8, Lagr$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 44
    .end local v8    # "token":Lagr$a;
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    .end local v0    # "j":I
    .end local v1    # "nameTmp":Ljava/lang/String;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v4    # "pinyinAll":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v5    # "pinyinHeader":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v9    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    .end local v10    # "x":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 53
    .restart local v7    # "sortKey":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object p0, v7

    .line 54
    goto/16 :goto_0

    .line 56
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
