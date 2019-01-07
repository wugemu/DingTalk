.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a$1;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 450
    :goto_0
    goto/32 :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 438
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 438
    return-void
.end method
