.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a(Lcom/alibaba/wukong/im/Message;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;ILcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    .prologue
    .line 3141
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3144
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v2, :cond_0

    .line 3145
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->a:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 3146
    .local v0, "anchorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3147
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcts;

    .line 3148
    .local v1, "holder":Lcts;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    .line 3540
    iget-wide v2, v1, Lcts;->N:J

    .line 3148
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3149
    invoke-virtual {v1}, Lcts;->j()V

    .line 3153
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "holder":Lcts;
    :cond_0
    return-void
.end method
