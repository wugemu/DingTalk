.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 704
    const-wide/16 v4, 0x0

    .line 705
    .local v4, "duration":J
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    if-eqz v0, :cond_0

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 1148
    iget-wide v2, v2, Leoe;->g:J

    .line 706
    sub-long v4, v0, v2

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 2093
    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 709
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v3, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 3093
    iget-object v3, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 709
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v6, v6, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 4093
    iget-object v6, v6, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 709
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Letb;->a(Ljava/util/List;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    if-nez v3, :cond_2

    move v3, v7

    .line 710
    :goto_0
    const-string/jumbo v6, ""

    .line 708
    invoke-static/range {v0 .. v7}, Letb;->a(Leoe;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Z)V

    .line 712
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 741
    :cond_1
    :goto_1
    return-void

    .line 709
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    .line 710
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)I

    .line 718
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    const-string/jumbo v1, "[Msg]local msg %d %b"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    if-nez v0, :cond_6

    move v0, v7

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 5093
    iget-boolean v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    .line 722
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    .line 6050
    const-string/jumbo v0, "search"

    invoke-static {v0, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->t()Z

    move-result v8

    .local v8, "isNewGlobalSearch":Z
    if-nez v8, :cond_4

    .line 725
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v7}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/lang/String;Ljava/util/List;Z)V

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    if-nez v1, :cond_7

    :goto_3
    const-string/jumbo v1, "searchLocalMessage#onNewDataCome"

    const/4 v2, 0x0

    invoke-static {v0, v7, v1, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;ILjava/lang/String;Ljava/util/Map;)V

    .line 731
    if-eqz v8, :cond_1

    .line 732
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o()V

    .line 733
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v9}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/lang/String;Ljava/util/List;Z)V

    .line 734
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 736
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-boolean v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 6093
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 737
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/List;)V

    goto/16 :goto_1

    .line 722
    .end local v8    # "isNewGlobalSearch":Z
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_2

    .line 728
    .restart local v8    # "isNewGlobalSearch":Z
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_3
.end method
