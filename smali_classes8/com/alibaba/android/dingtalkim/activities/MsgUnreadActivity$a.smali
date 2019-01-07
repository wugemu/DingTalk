.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V
    .locals 1

    .prologue
    .line 430
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversationData"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 460
    :cond_0
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 430
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 470
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 465
    return-void
.end method
