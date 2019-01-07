.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;ZLcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 498
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->a:Z

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_0

    .line 1186
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1187
    const-string/jumbo v0, "pref_key_group_admin_not_click"

    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-static {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/group_admin_internal.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$23;)V

    .line 504
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 512
    return-void
.end method
