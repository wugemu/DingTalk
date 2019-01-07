.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 639
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 640
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 641
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 643
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "org_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 645
    .local v1, "orgId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 646
    .local v2, "oid":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 647
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v4, v2, v3}, Ldvw;->b(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v1    # "orgId":Ljava/lang/String;
    .end local v2    # "oid":J
    :cond_0
    :goto_0
    return-void

    .line 649
    .restart local v1    # "orgId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 651
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ldvw;->b(Z)V

    goto :goto_0

    .line 654
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "orgId":Ljava/lang/String;
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->a:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v4, :cond_0

    .line 655
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;->a:J

    invoke-virtual {v4, v6, v7}, Ldvw;->a(J)V

    goto :goto_0
.end method
