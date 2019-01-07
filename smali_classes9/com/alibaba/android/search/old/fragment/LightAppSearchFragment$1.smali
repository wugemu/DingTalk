.class final Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;
.super Ljava/lang/Object;
.source "LightAppSearchFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lchr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 68
    check-cast p1, Lchr;

    .line 1071
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->f:Ljava/lang/String;

    iget-object v3, p1, Lchr;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lchr;->a:I

    if-ne v8, v0, :cond_3

    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    .line 1075
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1077
    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchq;

    .line 1078
    invoke-static {v0}, Leqk;->a(Lchq;)Leqk;

    move-result-object v0

    .line 1079
    if-eqz v0, :cond_0

    .line 1080
    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    if-eqz v4, :cond_1

    .line 1081
    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 2084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 1081
    invoke-virtual {v0, v4}, Leqk;->a(Ljava/lang/String;)V

    .line 1082
    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 2092
    iget v4, v4, Leoe;->b:I

    .line 1082
    invoke-virtual {v0, v4}, Leqk;->a(I)V

    .line 1084
    :cond_1
    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Leqk;->b(Ljava/lang/String;)V

    .line 1085
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 3051
    iget-wide v6, v0, Leqk;->d:J

    .line 1085
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string/jumbo v5, "_"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    .line 3055
    iget-object v6, v0, Leqk;->e:Ljava/lang/String;

    .line 1085
    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Leqk;->c(Ljava/lang/String;)V

    .line 1086
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-wide v4, p1, Lchr;->c:J

    invoke-static {v0, v4, v5}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;J)J

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->c(Z)V

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;Z)Z

    .line 1094
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->g:Leqc;

    invoke-virtual {v0}, Leqc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-boolean v5, v5, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->c:Z

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-boolean v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->c:Z

    if-nez v0, :cond_4

    iget-wide v2, p1, Lchr;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->b(Z)V

    .line 1107
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-boolean v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    if-eqz v0, :cond_6

    .line 1108
    if-eqz p1, :cond_5

    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    if-nez v0, :cond_9

    :cond_5
    move v0, v1

    .line 1109
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 3128
    iget v2, v2, Leoe;->e:I

    .line 1109
    add-int/2addr v2, v0

    .line 3132
    iput v2, v1, Leoe;->e:I

    .line 1110
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 3148
    iget-wide v6, v3, Leoe;->g:J

    .line 1110
    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v0, v4, v5}, Leoe;->a(Ljava/lang/String;IJ)V

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 4148
    iget-wide v4, v1, Leoe;->g:J

    .line 1112
    sub-long/2addr v2, v4

    .line 5112
    iput-wide v2, v0, Leoe;->c:J

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    invoke-virtual {v0}, Leoe;->a()V

    .line 68
    :cond_6
    return-void

    .line 1101
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->g:Leqc;

    invoke-virtual {v0, v2}, Leqc;->a(Ljava/util/List;)V

    goto :goto_1

    .line 1103
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->e:Lenx;

    goto :goto_1

    .line 1108
    :cond_9
    iget-object v0, p1, Lchr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 125
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bf

    .line 126
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->c(Z)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;Z)Z

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->e:Lenx;

    .line 132
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 121
    return-void
.end method
