.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;

    .prologue
    .line 5412
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 5415
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 5416
    return-void
.end method
