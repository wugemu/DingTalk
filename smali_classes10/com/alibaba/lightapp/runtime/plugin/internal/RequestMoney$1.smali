.class Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;
.super Ljava/lang/Object;
.source "RequestMoney.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->showContactAndGroupPick(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$builder:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

.field final synthetic val$disabledUIds:Ljava/util/List;

.field final synthetic val$pickedUIds:Ljava/util/List;

.field final synthetic val$requiredUIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$pickedUIds:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$requiredUIds:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$disabledUIds:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$builder:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "pickedUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v3, "requiredUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "disabledUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_4

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 141
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    .line 144
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 145
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$pickedUIds:Ljava/util/List;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$builder:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-virtual {v6, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v6

    .line 153
    invoke-virtual {v6, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v6

    .line 154
    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto :goto_0

    .line 147
    :cond_2
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$requiredUIds:Ljava/util/List;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 148
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_3
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$disabledUIds:Ljava/util/List;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$builder:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2053
    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 158
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 159
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    const-string/jumbo v0, "lightapp"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "RequestMoney getUserProfileList failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$1;->val$builder:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3053
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 170
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 163
    return-void
.end method
