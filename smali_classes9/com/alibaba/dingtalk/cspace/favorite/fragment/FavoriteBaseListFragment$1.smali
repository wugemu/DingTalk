.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;
.super Ljava/lang/Object;
.source "FavoriteBaseListFragment.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 7
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 87
    const-string/jumbo v3, "favorite_update"

    iget-object v4, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 88
    iget v3, p1, Lyc;->c:I

    if-ne v3, v5, :cond_1

    .line 89
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v2

    invoke-virtual {v2}, Lgas;->c()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v3

    invoke-virtual {v3}, Lgas;->c()V

    .line 98
    :cond_2
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v3, :cond_3

    move-object v0, v2

    .line 99
    .local v0, "errorCode":Ljava/lang/String;
    :goto_1
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v3, :cond_4

    move-object v1, v2

    .line 100
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "favorivate"

    const-string/jumbo v5, "fav update"

    invoke-static {v5, v0, v1, v2}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "errorCode":Ljava/lang/String;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_3
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 99
    .restart local v0    # "errorCode":Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 102
    .end local v0    # "errorCode":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "favorite_sync"

    iget-object v4, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 103
    iget v3, p1, Lyc;->c:I

    if-ne v3, v5, :cond_6

    .line 104
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iget-object v3, p1, Lyc;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_6
    iget v3, p1, Lyc;->c:I

    if-ne v3, v6, :cond_0

    .line 106
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->D_()V

    .line 108
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v3, :cond_7

    move-object v0, v2

    .line 109
    .restart local v0    # "errorCode":Ljava/lang/String;
    :goto_3
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v3, :cond_8

    move-object v1, v2

    .line 110
    .restart local v1    # "errorMsg":Ljava/lang/String;
    :goto_4
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "favorivate"

    const-string/jumbo v5, "fav sync"

    invoke-static {v5, v0, v1, v2}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v0    # "errorCode":Ljava/lang/String;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_7
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 109
    .restart local v0    # "errorCode":Ljava/lang/String;
    :cond_8
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 112
    .end local v0    # "errorCode":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "favorite_loadmore"

    iget-object v4, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget v3, p1, Lyc;->c:I

    if-ne v3, v5, :cond_a

    .line 114
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    iget-object v3, p1, Lyc;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    :cond_a
    iget v3, p1, Lyc;->c:I

    if-ne v3, v6, :cond_0

    .line 116
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment$1;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteBaseListFragment;->c()V

    .line 118
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v3, :cond_b

    move-object v0, v2

    .line 119
    .restart local v0    # "errorCode":Ljava/lang/String;
    :goto_5
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v3, :cond_c

    move-object v1, v2

    .line 120
    .restart local v1    # "errorMsg":Ljava/lang/String;
    :goto_6
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "favorivate"

    const-string/jumbo v5, "fav loadmore"

    invoke-static {v5, v0, v1, v2}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "errorCode":Ljava/lang/String;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_b
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 119
    .restart local v0    # "errorCode":Ljava/lang/String;
    :cond_c
    iget-object v3, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method
