.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;->a()V

    .line 899
    return-void
.end method
