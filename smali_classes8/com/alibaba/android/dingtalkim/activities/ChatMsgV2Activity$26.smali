.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1270
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_festivalredenvelope_botton_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Z)V

    .line 1272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g()V

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldfg$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldfg$a;

    move-result-object v0

    invoke-interface {v0}, Ldfg$a;->a()V

    .line 1277
    :cond_0
    return-void
.end method
