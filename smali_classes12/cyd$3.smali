.class final Lcyd$3;
.super Ljava/lang/Object;
.source "UserCommonVideoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyd;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcyd;


# direct methods
.method constructor <init>(Lcyd;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcyd;

    .prologue
    .line 278
    iput-object p1, p0, Lcyd$3;->b:Lcyd;

    iput-object p2, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 283
    .local v8, "videoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcyd$3;->b:Lcyd;

    iget-object v1, v1, Lcyd;->d:Landroid/app/Activity;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcyd$3;->b:Lcyd;

    iget-object v4, v4, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v8, v4}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcyd$3$1;

    invoke-direct {v1, p0, v8}, Lcyd$3$1;-><init>(Lcyd$3;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    const-class v2, Lcma;

    iget-object v4, p0, Lcyd$3;->b:Lcyd;

    iget-object v4, v4, Lcyd;->d:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 316
    .local v6, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcyd$3;->b:Lcyd;

    iget-object v1, v1, Lcyd;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcyd$3;->b:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v8, v2}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string/jumbo v5, "IM"

    iget-object v9, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v9}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getAuthCode()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v11

    invoke-static {v5, v9, v10, v11}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcma;)V

    .line 326
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    .end local v8    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v8    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iget-object v2, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->read()V

    .line 321
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v0

    iget-object v1, p0, Lcyd$3;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lcyd$3;->b:Lcyd;

    iget-wide v4, v2, Lcyd;->V:J

    invoke-virtual {v0, v1, v4, v5}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;J)Ldjz$a;

    move-result-object v7

    .line 322
    .local v7, "timer":Ldjz$a;
    iget-object v0, p0, Lcyd$3;->b:Lcyd;

    invoke-virtual {v0, v7}, Lcyd;->a(Ldjz$a;)V

    goto :goto_0
.end method
