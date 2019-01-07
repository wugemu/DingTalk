.class final Lcom/alibaba/android/search/model/DeptModel$1$1;
.super Ljava/lang/Object;
.source "DeptModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/model/DeptModel$1;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic c:Lcom/alibaba/android/search/model/DeptModel$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/DeptModel$1;Ljava/util/Map;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/model/DeptModel$1;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->c:Lcom/alibaba/android/search/model/DeptModel$1;

    iput-object p2, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

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
    .line 155
    check-cast p1, Ljava/util/List;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->c:Lcom/alibaba/android/search/model/DeptModel$1;

    iget-object v0, v0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->c:Lcom/alibaba/android/search/model/DeptModel$1;

    iget-object v1, v1, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DeptModel;->access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    .line 1159
    if-eqz p1, :cond_2

    .line 1160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1161
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    goto :goto_0

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->c:Lcom/alibaba/android/search/model/DeptModel$1;

    iget-object v0, v0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->c:Lcom/alibaba/android/search/model/DeptModel$1;

    iget-object v1, v1, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/search/model/DeptModel;->access$100(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    :goto_1
    return-void

    .line 1168
    :cond_2
    const-string/jumbo v0, "[Dept] null userProfileObjects"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 179
    const-string/jumbo v0, "[Dept]Exception getUserProfileList %s %s"

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

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->c:Lcom/alibaba/android/search/model/DeptModel$1;

    iget-object v0, v0, Lcom/alibaba/android/search/model/DeptModel$1;->b:Lcom/alibaba/android/search/model/DeptModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel$1$1;->c:Lcom/alibaba/android/search/model/DeptModel$1;

    iget-object v1, v1, Lcom/alibaba/android/search/model/DeptModel$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/model/DeptModel;->access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    .line 181
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 175
    return-void
.end method
