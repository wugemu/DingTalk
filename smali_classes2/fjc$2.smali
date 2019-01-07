.class final Lfjc$2;
.super Ljava/lang/Object;
.source "ExternalPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjc;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
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

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic c:Lfjc;


# direct methods
.method constructor <init>(Lfjc;ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lfjc;

    .prologue
    .line 170
    iput-object p1, p0, Lfjc$2;->c:Lfjc;

    iput-boolean p2, p0, Lfjc$2;->a:Z

    iput-object p3, p0, Lfjc$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 170
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1173
    if-nez p1, :cond_1

    .line 1174
    const-string/jumbo v0, "ExternalPresenterImpl"

    const-string/jumbo v1, "getOrgNodeList ret null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-boolean v0, p0, Lfjc$2;->a:Z

    if-nez v0, :cond_2

    .line 1178
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    invoke-static {v0}, Lfjc;->a(Lfjc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1179
    iget-object v0, p0, Lfjc$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfjc$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v0, v1, :cond_2

    .line 1180
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    invoke-static {v0}, Lfjc;->a(Lfjc;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfjc$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    :cond_2
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgId:J

    invoke-static {v0, v2, v3}, Lfjc;->a(Lfjc;J)J

    .line 1184
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->offset:I

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->size:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lfjc;->a(Lfjc;I)I

    .line 1185
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    invoke-static {v0, v1}, Lfjc;->b(Lfjc;I)I

    .line 1186
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1187
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    invoke-static {v0}, Lfjc;->a(Lfjc;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1190
    :cond_3
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    invoke-static {v0}, Lfjc;->b(Lfjc;)Lfir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lfjc$2;->c:Lfjc;

    invoke-static {v0}, Lfjc;->b(Lfjc;)Lfir;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    invoke-interface {v0, v1, v2}, Lfir;->a(ZI)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 202
    const-string/jumbo v2, "ExternalPresenterImpl"

    invoke-static {v2}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 203
    .local v1, "trace":Lcom/alibaba/doraemon/trace/Trace;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 204
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "getOrgNodeList faild code:"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason:"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 205
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 206
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 207
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lfjc$2;->c:Lfjc;

    invoke-static {v2}, Lfjc;->b(Lfjc;)Lfir;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lfjc$2;->c:Lfjc;

    invoke-static {v2}, Lfjc;->b(Lfjc;)Lfir;

    move-result-object v2

    invoke-interface {v2}, Lfir;->b()V

    .line 211
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 198
    return-void
.end method
