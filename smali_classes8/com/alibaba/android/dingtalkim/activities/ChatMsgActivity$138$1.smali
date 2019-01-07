.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;

    .prologue
    .line 5362
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 5365
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 5366
    return-void
.end method
