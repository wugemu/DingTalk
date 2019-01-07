.class final Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;
.super Ljava/lang/Object;
.source "SelectResultActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;->a:Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

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
    .line 133
    check-cast p1, Ljava/util/List;

    .line 1136
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1138
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;->a:Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;->a:Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)Ljava/util/Map;

    move-result-object v1

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/alibaba/android/user/contact/organization/select/SelectModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;->a:Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;->a:Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->a(Ljava/util/List;)V

    .line 133
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 154
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 149
    return-void
.end method
