.class final Ldjw$2$1;
.super Ljava/lang/Object;
.source "InitializeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjw$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ldjw$2;


# direct methods
.method constructor <init>(Ldjw$2;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$1"    # Ldjw$2;

    .prologue
    .line 629
    iput-object p1, p0, Ldjw$2$1;->b:Ldjw$2;

    iput-object p2, p0, Ldjw$2$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 632
    iget-object v6, p0, Ldjw$2$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    .line 633
    .local v0, "senderId":J
    iget-object v6, p0, Ldjw$2$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->senderVersion()J

    move-result-wide v4

    .line 634
    .local v4, "wkVersion":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 635
    .local v3, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v2, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, v2, v8, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Ljava/util/List;)V

    .line 640
    .end local v2    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method
