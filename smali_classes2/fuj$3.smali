.class final Lfuj$3;
.super Ljava/lang/Object;
.source "NameCardCache.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfuj;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfuj;


# direct methods
.method constructor <init>(Lfuj;)V
    .locals 0
    .param p1, "this$0"    # Lfuj;

    .prologue
    .line 229
    iput-object p1, p0, Lfuj$3;->a:Lfuj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 229
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1232
    iget-object v1, p0, Lfuj$3;->a:Lfuj;

    .line 2275
    if-eqz p1, :cond_0

    .line 2278
    iget-object v0, v1, Lfuj;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;

    .line 2279
    if-nez v0, :cond_1

    .line 2280
    new-instance v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 2281
    iget-object v2, v1, Lfuj;->a:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    :goto_0
    iget-object v0, v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2304
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfuj$5;

    invoke-direct {v3, v1, v0}, Lfuj$5;-><init>(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_0
    return-void

    .line 2283
    :cond_1
    iput-object p1, v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2284
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->uid:J

    .line 2285
    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->fillCardUser(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 243
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 238
    return-void
.end method
