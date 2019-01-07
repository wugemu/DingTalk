.class final Lfbj$1$1;
.super Ljava/lang/Object;
.source "UserAliasRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbj$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfbj$1;


# direct methods
.method constructor <init>(Lfbj$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfbj$1;

    .prologue
    .line 97
    iput-object p1, p0, Lfbj$1$1;->b:Lfbj$1;

    iput-object p2, p0, Lfbj$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 100
    iget-object v2, p0, Lfbj$1$1;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lfbj$1$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/User;

    .line 102
    .local v0, "user":Lcom/alibaba/wukong/im/User;
    if-eqz v0, :cond_0

    .line 105
    iget-object v3, p0, Lfbj$1$1;->b:Lfbj$1;

    iget-object v3, v3, Lfbj$1;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 106
    .local v1, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 108
    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lfbj$1$1;->b:Lfbj$1;

    iget-object v3, v3, Lfbj$1;->d:Lfbj;

    invoke-static {v3}, Lfbj;->a(Lfbj;)Landroid/util/LruCache;

    move-result-object v3

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    .end local v0    # "user":Lcom/alibaba/wukong/im/User;
    .end local v1    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    iget-object v2, p0, Lfbj$1$1;->b:Lfbj$1;

    iget-object v2, v2, Lfbj$1;->b:Lcma;

    iget-object v3, p0, Lfbj$1$1;->b:Lfbj$1;

    iget-object v3, v3, Lfbj$1;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
