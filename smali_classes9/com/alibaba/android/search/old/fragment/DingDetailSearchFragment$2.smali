.class final Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;
.super Ljava/lang/Object;
.source "DingDetailSearchFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v2, "ding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ding_attachment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->a(I)V

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)I

    .line 87
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_3

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;Z)Z

    .line 91
    :cond_3
    if-nez p2, :cond_5

    move v0, v1

    .line 92
    .local v0, "size":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    .line 1116
    iget v3, v3, Leoe;->d:I

    .line 92
    add-int/2addr v3, v0

    .line 1120
    iput v3, v2, Leoe;->d:I

    .line 93
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v6, v6, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v6, v6, Leoe;->g:J

    .line 93
    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Leoe;->a(Ljava/lang/String;IJ)V

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->c(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget v2, v1, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->o:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->o:I

    .line 102
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v4, v4, Leoe;->g:J

    .line 102
    sub-long/2addr v2, v4

    .line 3112
    iput-wide v2, v1, Leoe;->c:J

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    invoke-virtual {v1}, Leoe;->a()V

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->a:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 91
    .end local v0    # "size":I
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 99
    .restart local v0    # "size":I
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iput v1, v2, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->o:I

    .line 100
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iput-boolean v1, v2, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->n:Z

    goto :goto_2
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 114
    return-void
.end method
