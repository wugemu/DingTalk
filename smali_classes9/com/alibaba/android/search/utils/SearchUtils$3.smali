.class final Lcom/alibaba/android/search/utils/SearchUtils$3;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/utils/SearchUtils$ActionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/alibaba/android/search/model/BaseModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/utils/SearchUtils$ActionType;Landroid/app/Activity;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p2, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->b:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    iput-object p3, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->d:Lcom/alibaba/android/search/model/BaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 809
    check-cast p1, Ljava/util/List;

    .line 1812
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1817
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1818
    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1821
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->b:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_MESSAGE:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    if-ne v0, v1, :cond_4

    .line 1822
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->c:Landroid/app/Activity;

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    const-string/jumbo v2, ""

    iget-wide v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1827
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->d:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->d:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1829
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->d:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0

    .line 1823
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->b:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_FREE_CALL:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    if-ne v0, v1, :cond_3

    .line 1824
    iget-object v0, p0, Lcom/alibaba/android/search/utils/SearchUtils$3;->c:Landroid/app/Activity;

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-wide v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    iget-object v5, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 841
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 837
    return-void
.end method
