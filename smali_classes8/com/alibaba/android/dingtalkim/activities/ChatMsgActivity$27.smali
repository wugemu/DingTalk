.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 7126
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7147
    :goto_0
    return-void

    .line 7132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Z)V

    .line 7133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 7135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 7136
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "retail_im_msglist_detail_cancelmore"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 7145
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aO(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 7146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aP(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto :goto_0

    .line 7139
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 7140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 7141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldlx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldlx;

    move-result-object v0

    invoke-virtual {v0}, Ldlx;->a()V

    goto :goto_1
.end method
