.class final Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$6;
.super Ljava/lang/Object;
.source "RemoveMyAddedConversationMembersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$6;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;ZLjava/util/List;)V

    .line 209
    return-void
.end method
