.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldoi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;

    .prologue
    .line 4233
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "isSucceed"    # Z

    .prologue
    .line 4236
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 4237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 4239
    :cond_0
    return-void
.end method
