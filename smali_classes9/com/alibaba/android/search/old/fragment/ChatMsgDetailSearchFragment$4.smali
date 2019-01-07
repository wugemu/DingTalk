.class final Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;
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
    .line 295
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

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
    .line 300
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(I)V

    .line 306
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->d:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4$1;-><init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 314
    .local v0, "size":I
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 1116
    iget v2, v2, Leoe;->d:I

    .line 314
    add-int/2addr v2, v0

    .line 1120
    iput v2, v1, Leoe;->d:I

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v6, v3, Leoe;->g:J

    .line 315
    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v0, v4, v5}, Leoe;->a(Ljava/lang/String;IJ)V

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v4, v4, Leoe;->g:J

    .line 317
    sub-long/2addr v2, v4

    .line 3112
    iput-wide v2, v1, Leoe;->c:J

    .line 318
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    invoke-virtual {v1}, Leoe;->a()V

    goto :goto_0

    .line 313
    .end local v0    # "size":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
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
    .line 338
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "canLoad"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-eqz p1, :cond_2

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iget v1, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    .line 334
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    iput-boolean p1, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->n:Z

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    goto :goto_1
.end method
