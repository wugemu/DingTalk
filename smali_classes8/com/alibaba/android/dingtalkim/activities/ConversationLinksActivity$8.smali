.class final Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$8;
.super Ljava/lang/Object;
.source "ConversationLinksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->showLoadingDialog()V

    goto :goto_0
.end method
