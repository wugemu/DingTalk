.class final Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;
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
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 201
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    if-nez v0, :cond_4

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->n:Z

    .line 1221
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-boolean v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->q:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_5

    .line 1224
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Z)Z

    goto :goto_0

    .line 1218
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1229
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Z)Z

    throw v0

    .line 1226
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bd

    .line 246
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;->b:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Z)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 236
    return-void
.end method
