.class final Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$2;
.super Ljava/lang/Object;
.source "ConversationBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->t_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v0, v1}, Ldde;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 86
    :cond_0
    return-void
.end method
