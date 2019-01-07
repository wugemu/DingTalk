.class final Lfib$1;
.super Ljava/lang/Object;
.source "OrgContactPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfib;->a(Landroid/app/Activity;Ljava/lang/String;JZLfia;)V
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
.field final synthetic a:Z

.field final synthetic b:Lfia;

.field final synthetic c:Lfib;


# direct methods
.method constructor <init>(Lfib;ZLfia;)V
    .locals 0
    .param p1, "this$0"    # Lfib;

    .prologue
    .line 89
    iput-object p1, p0, Lfib$1;->c:Lfib;

    iput-boolean p2, p0, Lfib$1;->a:Z

    iput-object p3, p0, Lfib$1;->b:Lfia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 89
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1093
    if-eqz p1, :cond_1

    .line 1096
    iget-boolean v0, p0, Lfib$1;->a:Z

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lfib$1;->c:Lfib;

    .line 2044
    iget-object v0, v0, Lfib;->a:Ljava/util/List;

    .line 1097
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1099
    :cond_0
    iget-object v0, p0, Lfib$1;->c:Lfib;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->offset:I

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->size:I

    add-int/2addr v1, v2

    .line 3044
    iput v1, v0, Lfib;->b:I

    .line 1100
    iget-object v0, p0, Lfib$1;->c:Lfib;

    .line 4044
    iget-object v0, v0, Lfib;->a:Ljava/util/List;

    .line 1100
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1102
    iget-object v0, p0, Lfib$1;->b:Lfia;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lfib$1;->b:Lfia;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    invoke-interface {v0, v1, v2}, Lfia;->a(ZI)V

    .line 1104
    iget-object v0, p0, Lfib$1;->b:Lfia;

    invoke-interface {v0}, Lfia;->c()V

    .line 89
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 115
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v2, 0x34bd

    .line 116
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 117
    const-string/jumbo v1, "getSingleSearch"

    invoke-static {v1}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 118
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getSingleSearch faild code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 120
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 121
    iget-object v1, p0, Lfib$1;->c:Lfib;

    .line 1044
    iget-object v1, v1, Lfib;->c:Landroid/app/Activity;

    .line 121
    if-eqz v1, :cond_0

    .line 122
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lfib$1;->b:Lfia;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lfib$1;->b:Lfia;

    invoke-interface {v1}, Lfia;->d()V

    .line 127
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 111
    return-void
.end method
