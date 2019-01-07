.class final Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$2;
.super Ljava/lang/Object;
.source "RemoveMyAddedConversationMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V

    goto :goto_0
.end method
