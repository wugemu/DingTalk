.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$3;
.super Lcif;
.source "ConversationMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p2, "x0"    # I

    .prologue
    .line 676
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-direct {p0, p2}, Lcif;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 684
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 685
    const/4 v0, -0x1

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 0
    .param p1, "operationCode"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 680
    return-void
.end method
