.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$5;
.super Ljava/lang/Object;
.source "ConversationMembersActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1029
    check-cast p1, Ljava/lang/Long;

    .line 2032
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2032
    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;J)V

    .line 1029
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;J)V

    .line 1043
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1038
    return-void
.end method
