.class final Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;
.super Ljava/lang/Object;
.source "CombinedPraiseView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a(Ljava/util/List;)V
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

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;->c:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 232
    check-cast p1, Ljava/util/List;

    .line 1235
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1237
    if-eqz v0, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    .line 1244
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_2

    .line 1245
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$2;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1246
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->a()V

    goto :goto_1

    .line 232
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 258
    const-string/jumbo v0, "CombinedPraiseView"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, " get user profiles exception code "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " msg "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 254
    return-void
.end method
