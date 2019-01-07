.class final Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;
.super Ljava/lang/Object;
.source "ContactDetailSearchFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->b:J

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

    .line 344
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string/jumbo v2, "friend"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;I)I

    .line 359
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iput v1, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    .line 364
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    sget-object v3, Lcom/alibaba/android/search/ContactSource;->Friend:Lcom/alibaba/android/search/ContactSource;

    invoke-virtual {v2, p2, v3}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V

    .line 366
    if-nez p2, :cond_4

    move v0, v1

    .line 367
    .local v0, "size":I
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 1116
    iget v3, v3, Leoe;->d:I

    .line 367
    add-int/2addr v3, v0

    .line 1120
    iput v3, v2, Leoe;->d:I

    .line 368
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->b:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Leoe;->a(Ljava/lang/String;IJ)V

    .line 370
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget v2, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->r:I

    const/16 v3, 0x50

    if-le v2, v3, :cond_5

    .line 371
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 372
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->c()V

    .line 373
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iput v1, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->r:I

    .line 374
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v4, v4, Leoe;->g:J

    .line 374
    sub-long/2addr v2, v4

    .line 2112
    iput-wide v2, v1, Leoe;->c:J

    .line 375
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 376
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    invoke-virtual {v1}, Leoe;->a()V

    goto/16 :goto_0

    .line 361
    .end local v0    # "size":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget v3, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    add-int/lit8 v3, v3, 0x64

    iput v3, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    goto :goto_1

    .line 366
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 378
    .restart local v0    # "size":I
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;->c:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

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
    .line 383
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 386
    return-void
.end method
