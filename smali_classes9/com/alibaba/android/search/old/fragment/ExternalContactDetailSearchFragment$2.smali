.class final Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;
.super Ljava/lang/Object;
.source "ExternalContactDetailSearchFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x50

    const/4 v2, 0x0

    .line 125
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    if-nez v0, :cond_5

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I

    .line 1141
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->n:Z

    .line 1146
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    .line 1148
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-nez v0, :cond_7

    :cond_3
    move v1, v2

    .line 1149
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 2128
    iget v3, v3, Leoe;->e:I

    .line 1149
    add-int/2addr v3, v1

    .line 2132
    iput v3, v0, Leoe;->e:I

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v3, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    sget-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3, v4, v1, v0}, Leoe;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Z)Z

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-boolean v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->q:I

    if-le v0, v5, :cond_9

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iput v2, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->q:I

    .line 1155
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v4, v1, Leoe;->g:J

    .line 1155
    sub-long/2addr v2, v4

    .line 3112
    iput-wide v2, v0, Leoe;->c:J

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    invoke-virtual {v0}, Leoe;->a()V

    goto :goto_0

    .line 1143
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1152
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Z)Z

    .line 1153
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-boolean v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->n:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->q:I

    if-le v1, v5, :cond_a

    .line 1154
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iput v2, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->q:I

    .line 1155
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 3148
    iget-wide v4, v4, Leoe;->g:J

    .line 1155
    sub-long/2addr v2, v4

    .line 4112
    iput-wide v2, v1, Leoe;->c:J

    .line 1156
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Leqb;->a()V

    .line 1157
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    invoke-virtual {v1}, Leoe;->a()V

    .line 1159
    :goto_4
    throw v0

    .line 1148
    :cond_7
    :try_start_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_2

    .line 1150
    :cond_8
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1159
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->j()V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->j()V

    goto :goto_4
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Z)Z

    .line 177
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bd

    .line 178
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 180
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->c()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 167
    return-void
.end method
