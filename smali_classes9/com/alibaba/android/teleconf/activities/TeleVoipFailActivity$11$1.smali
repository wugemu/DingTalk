.class final Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11$1;
.super Ljava/lang/Object;
.source "TeleVoipFailActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "voip_caller_quick_reply_custom_message_touched"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->finish()V

    .line 277
    return-void
.end method

.method public final a(Leux;)V
    .locals 5
    .param p1, "message"    # Leux;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 264
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "voip_caller_quick_reply_exist_message_touched"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 266
    .local v0, "messageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1014
    iget-object v1, p1, Leux;->a:Ljava/lang/String;

    .line 267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 268
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 269
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->finish()V

    .line 270
    return-void
.end method
