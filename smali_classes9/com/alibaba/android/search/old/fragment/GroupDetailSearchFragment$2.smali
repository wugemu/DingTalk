.class final Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;
.super Ljava/lang/Object;
.source "GroupDetailSearchFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->a:Ljava/lang/String;

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

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string/jumbo v2, "group_conversation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    sget-object v3, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Remote:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    invoke-static {v2, v3}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;)Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .line 159
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iput v1, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->o:I

    .line 164
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->a:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 166
    if-nez p2, :cond_4

    move v0, v1

    .line 167
    .local v0, "size":I
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 1116
    iget v3, v3, Leoe;->d:I

    .line 167
    add-int/2addr v3, v0

    .line 1120
    iput v3, v2, Leoe;->d:I

    .line 168
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v6, v6, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v6, v6, Leoe;->g:J

    .line 168
    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Leoe;->a(Ljava/lang/String;IJ)V

    .line 170
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget v2, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->r:I

    const/16 v3, 0x50

    if-le v2, v3, :cond_5

    .line 171
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->c()V

    .line 172
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iput v1, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->r:I

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v4, v4, Leoe;->g:J

    .line 173
    sub-long/2addr v2, v4

    .line 3112
    iput-wide v2, v1, Leoe;->c:J

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 175
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    invoke-virtual {v1}, Leoe;->a()V

    goto/16 :goto_0

    .line 161
    .end local v0    # "size":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget v3, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->o:I

    add-int/lit8 v3, v3, 0x64

    iput v3, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->o:I

    goto :goto_1

    .line 166
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 177
    .restart local v0    # "size":I
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->c()V

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->j()V

    goto/16 :goto_0
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
    .line 183
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 186
    return-void
.end method
