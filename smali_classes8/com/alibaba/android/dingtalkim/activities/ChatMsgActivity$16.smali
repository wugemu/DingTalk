.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
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
    .line 6488
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6491
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    .line 7158
    iget-boolean v0, v0, Lcro;->i:Z

    .line 6491
    if-eqz v0, :cond_1

    .line 6492
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    .line 8158
    iget-boolean v1, v0, Lcro;->i:Z

    .line 7173
    if-eqz v1, :cond_0

    .line 7174
    iget-object v0, v0, Lcro;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lcsx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    .line 6499
    :cond_0
    :goto_0
    return-void

    .line 6493
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    .line 9147
    iget-boolean v0, v0, Lcrp;->h:Z

    .line 6493
    if-eqz v0, :cond_2

    .line 6494
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    .line 10147
    iget-boolean v1, v0, Lcrp;->h:Z

    .line 9157
    if-eqz v1, :cond_0

    .line 9158
    iget-object v0, v0, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lcsx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    goto :goto_0

    .line 6496
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto :goto_0
.end method
