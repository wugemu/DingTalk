.class final Lfbj$2$1;
.super Ljava/lang/Object;
.source "UserAliasRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbj$2;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfbj$2;


# direct methods
.method constructor <init>(Lfbj$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfbj$2;

    .prologue
    .line 162
    iput-object p1, p0, Lfbj$2$1;->b:Lfbj$2;

    iput-object p2, p0, Lfbj$2$1;->a:Ljava/util/List;

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
    .line 165
    iget-object v2, p0, Lfbj$2$1;->a:Ljava/util/List;

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lfbj$2$1;->b:Lfbj$2;

    iget-object v2, v2, Lfbj$2;->a:Lcma;

    iget-object v3, p0, Lfbj$2$1;->b:Lfbj$2;

    iget-object v3, v3, Lfbj$2;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 181
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Lfbj$2$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/User;

    .line 170
    .local v1, "user":Lcom/alibaba/wukong/im/User;
    if-eqz v1, :cond_1

    .line 173
    iget-object v3, p0, Lfbj$2$1;->b:Lfbj$2;

    iget-object v3, v3, Lfbj$2;->c:Ljava/util/Map;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 174
    .local v0, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 176
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lfbj$2$1;->b:Lfbj$2;

    iget-object v3, v3, Lfbj$2;->d:Lfbj;

    invoke-static {v3}, Lfbj;->a(Lfbj;)Landroid/util/LruCache;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    .end local v0    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v1    # "user":Lcom/alibaba/wukong/im/User;
    :cond_2
    iget-object v2, p0, Lfbj$2$1;->b:Lfbj$2;

    iget-object v2, v2, Lfbj$2;->a:Lcma;

    iget-object v3, p0, Lfbj$2$1;->b:Lfbj$2;

    iget-object v3, v3, Lfbj$2;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
