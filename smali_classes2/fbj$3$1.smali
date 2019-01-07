.class final Lfbj$3$1;
.super Ljava/lang/Object;
.source "UserAliasRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbj$3;->a(Lcom/alibaba/wukong/im/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/User;

.field final synthetic b:Lfbj$3;


# direct methods
.method constructor <init>(Lfbj$3;Lcom/alibaba/wukong/im/User;)V
    .locals 0
    .param p1, "this$1"    # Lfbj$3;

    .prologue
    .line 264
    iput-object p1, p0, Lfbj$3$1;->b:Lfbj$3;

    iput-object p2, p0, Lfbj$3$1;->a:Lcom/alibaba/wukong/im/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 267
    iget-object v0, p0, Lfbj$3$1;->a:Lcom/alibaba/wukong/im/User;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lfbj$3$1;->b:Lfbj$3;

    iget-object v0, v0, Lfbj$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, p0, Lfbj$3$1;->a:Lcom/alibaba/wukong/im/User;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lfbj$3$1;->b:Lfbj$3;

    iget-object v0, v0, Lfbj$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, p0, Lfbj$3$1;->a:Lcom/alibaba/wukong/im/User;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lfbj$3$1;->b:Lfbj$3;

    iget-object v0, v0, Lfbj$3;->c:Lfbj;

    invoke-static {v0}, Lfbj;->a(Lfbj;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lfbj$3$1;->b:Lfbj$3;

    iget-object v1, v1, Lfbj$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lfbj$3$1;->a:Lcom/alibaba/wukong/im/User;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    iget-object v0, p0, Lfbj$3$1;->b:Lfbj$3;

    iget-object v0, v0, Lfbj$3;->b:Lcma;

    iget-object v1, p0, Lfbj$3$1;->b:Lfbj$3;

    iget-object v1, v1, Lfbj$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 273
    return-void
.end method
