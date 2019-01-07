.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$2;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1564
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1552
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1552
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2555
    if-eqz p1, :cond_0

    .line 2556
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    sget v2, Lctk$i;->fileshelper_logo_assistant:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1552
    :cond_0
    return-void
.end method
