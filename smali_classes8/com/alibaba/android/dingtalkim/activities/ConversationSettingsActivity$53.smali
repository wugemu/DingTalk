.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 2969
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 2972
    const-string/jumbo v1, ""

    .line 2973
    .local v1, "groupNick":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v6

    .line 2974
    .local v6, "uid":J
    const-class v8, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v8}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 2975
    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6, v7, v10}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v2

    .line 2976
    .local v2, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v2, :cond_0

    .line 2977
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    .line 2979
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->d()Ljava/lang/String;

    move-result-object v5

    .line 2980
    .local v5, "nick":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 2981
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2982
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2983
    const-string/jumbo v8, "("

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2987
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 2988
    invoke-virtual {v8, v9}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newInvitationManager(Landroid/app/Activity;)Lgwp;

    move-result-object v3

    .line 2989
    .local v3, "manager":Lgwp;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lgwp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2990
    .local v4, "message":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2991
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v9, Lctk$i;->dt_share_ding_word_popup_view_content:I

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2993
    :cond_2
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9, v4}, Lgwp;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2994
    return-void
.end method
