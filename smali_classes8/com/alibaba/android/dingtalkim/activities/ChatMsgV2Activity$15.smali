.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$15;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Ldps$a;


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
    .line 1139
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$15;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$15;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$15;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Ldpu;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    .line 1145
    :cond_0
    return-void
.end method
