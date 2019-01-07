.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$79;
.super Lcom/alibaba/wukong/im/MessageChangeListener;
.source "ChatMsgActivity.java"


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
    .line 1940
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$79;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/MessageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVoiceTranslateEvent(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "data"    # Lcom/alibaba/wukong/im/VoiceTranslateData;

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$79;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V

    .line 1944
    return-void
.end method
