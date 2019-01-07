.class final Lfbz$2;
.super Ljava/lang/Object;
.source "CircleContactSimpleInfoPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbz;->a(Ljava/util/List;Lcov;Z)V
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
.field final synthetic a:Lcov;

.field final synthetic b:Lfbz;


# direct methods
.method constructor <init>(Lfbz;Lcov;)V
    .locals 0
    .param p1, "this$0"    # Lfbz;

    .prologue
    .line 169
    iput-object p1, p0, Lfbz$2;->b:Lfbz;

    iput-object p2, p0, Lfbz$2;->a:Lcov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 169
    check-cast p1, Ljava/util/List;

    .line 1172
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    const-string/jumbo v0, "userProfileObjects is empty"

    .line 2060
    invoke-static {v5, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 3224
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget-object v4, p0, Lfbz$2;->b:Lfbz;

    iget-object v8, p0, Lfbz$2;->a:Lcov;

    .line 4020
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5020
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4259
    if-eqz v0, :cond_2

    .line 4263
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 4264
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v2

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 5180
    cmp-long v3, v12, v6

    if-lez v3, :cond_3

    if-nez v0, :cond_5

    .line 5181
    :cond_3
    const-string/jumbo v2, "uid <= 0 || object = null"

    .line 6060
    invoke-static {v5, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 6291
    :cond_4
    :goto_2
    if-nez v0, :cond_6

    .line 6292
    const-string/jumbo v2, "user = null"

    .line 7060
    invoke-static {v5, v2}, Lffe;->a(ZLjava/lang/String;)V

    move-wide v2, v6

    .line 4268
    :goto_3
    cmp-long v11, v2, v6

    if-lez v11, :cond_2

    .line 4269
    iget-wide v12, v4, Lfbz;->b:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_7

    .line 4271
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5184
    :cond_5
    iget-object v2, v2, Lfcn;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6295
    :cond_6
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    invoke-static {v2}, Lfbz;->a(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_3

    .line 4275
    :cond_7
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3218
    :cond_8
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3219
    invoke-static {v9}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3220
    const-string/jumbo v0, "error occur when get user profile"

    .line 8060
    invoke-static {v5, v0}, Lffe;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 8314
    :cond_9
    iget-object v0, v4, Lfbz;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8315
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, v4, Lfbz;->c:Ljava/util/Map;

    invoke-static {v9, v1}, Lfbz;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 8316
    if-eqz v8, :cond_0

    .line 8317
    invoke-interface {v8, v0}, Lcov;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3227
    :cond_a
    new-instance v6, Lfbz$3;

    invoke-direct {v6, v4, v9, v8, v1}, Lfbz$3;-><init>(Lfbz;Ljava/util/List;Lcov;Ljava/util/List;)V

    .line 3252
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, v4, Lfbz;->b:J

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;JZZLcma;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lfbz$2;->a:Lcov;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lfbz$2;->a:Lcov;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 189
    :cond_0
    const-string/jumbo v0, "getUserProfileList"

    invoke-static {v0, p1, p2}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 182
    return-void
.end method
