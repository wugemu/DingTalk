.class public Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchMembersTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 2387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2388
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;->mCid:Ljava/lang/String;

    .line 2389
    return-void
.end method


# virtual methods
.method public run(Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "data":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    const/4 v3, 0x0

    .line 2393
    if-nez p1, :cond_0

    .line 2422
    :goto_0
    return-void

    .line 2397
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;->mCid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2398
    const-string/jumbo v0, "general"

    const-string/jumbo v1, "[FetchMembersTask] cid is null"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0921a8

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2403
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;->mCid:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask$1;-><init>(Lcom/alibaba/android/rimet/utils/UrlUtils$FetchMembersTask;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
