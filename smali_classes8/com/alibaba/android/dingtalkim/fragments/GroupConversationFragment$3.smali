.class final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$3;
.super Landroid/os/Handler;
.source "GroupConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x6fa
        :pswitch_0
    .end packed-switch
.end method
