.class final Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;
.super Ljava/lang/Object;
.source "ChatMsgDetailSearchFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

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
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(I)V

    .line 354
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_2

    .line 355
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget v2, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    add-int/lit8 v2, v2, 0x32

    iput v2, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    .line 361
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->d:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5$1;-><init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    if-nez p2, :cond_3

    .line 380
    .local v0, "size":I
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 1116
    iget v2, v2, Leoe;->d:I

    .line 380
    add-int/2addr v2, v0

    .line 1120
    iput v2, v1, Leoe;->d:I

    .line 381
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v6, v3, Leoe;->g:J

    .line 381
    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v0, v4, v5}, Leoe;->a(Ljava/lang/String;IJ)V

    .line 383
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v4, v4, Leoe;->g:J

    .line 383
    sub-long/2addr v2, v4

    .line 3112
    iput-wide v2, v1, Leoe;->c:J

    .line 384
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 385
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    invoke-virtual {v1}, Leoe;->a()V

    goto :goto_0

    .line 357
    .end local v0    # "size":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iput v0, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    .line 358
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iput-boolean v0, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->n:Z

    goto :goto_1

    .line 379
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

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
    .line 389
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 392
    return-void
.end method
