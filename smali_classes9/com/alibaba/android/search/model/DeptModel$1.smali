.class final Lcom/alibaba/android/search/model/DeptModel$1;
.super Ljava/lang/Object;
.source "DeptModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/DeptModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/search/model/DeptModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/DeptModel;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iput-object p2, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 117
    check-cast p1, Ljava/util/List;

    .line 1120
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    :cond_0
    const-string/jumbo v0, "[Dept] empty breadcrumbs"

    new-array v1, v2, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DeptModel;->access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    .line 1184
    :cond_1
    :goto_0
    return-void

    .line 1126
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v0, v1, :cond_3

    .line 1127
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1130
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1131
    const-string/jumbo v0, "[Dept] empty breadcrumbs after removing"

    new-array v1, v2, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DeptModel;->access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    goto :goto_0

    .line 1136
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1137
    if-nez v0, :cond_5

    .line 1138
    const-string/jumbo v0, "[Dept] null currentNode"

    new-array v1, v2, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DeptModel;->access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    goto :goto_0

    .line 1142
    :cond_5
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    .line 1144
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgId:J

    const-wide/16 v4, 0x5209

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    .line 1145
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1148
    if-eqz v1, :cond_6

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v5, :cond_6

    .line 1149
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1154
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/search/model/DeptModel$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/alibaba/android/search/model/DeptModel$1$1;-><init>(Lcom/alibaba/android/search/model/DeptModel$1;Ljava/util/Map;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    const-class v0, Lcma;

    iget-object v2, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v4, v0, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 1185
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v2, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/model/DeptModel;->access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    .line 1186
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v2, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/search/model/DeptModel;->access$100(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 197
    const-string/jumbo v0, "Exception getParentNodeList %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DeptModel;->access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    .line 199
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 193
    return-void
.end method
