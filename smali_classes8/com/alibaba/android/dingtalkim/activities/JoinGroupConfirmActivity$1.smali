.class final Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;
.super Ljava/lang/Object;
.source "JoinGroupConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 170
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .line 171
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 177
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-interface {v3, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    invoke-interface {v4, v5, v3}, Ldxx;->c(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    if-eq v3, v4, :cond_6

    .line 209
    const-class v3, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;

    .line 210
    .local v2, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;)V

    .line 234
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->k(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 235
    new-instance v1, Ldsi;

    invoke-direct {v1}, Ldsi;-><init>()V

    .line 236
    .local v1, "model":Ldsi;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->k(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;->dest:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Ldsi;->b:Ljava/lang/Integer;

    .line 237
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->k(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Ldsi;->a:Ljava/lang/Integer;

    .line 238
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->k(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;->inviterUid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Ldsi;->c:Ljava/lang/Long;

    .line 239
    iget-object v3, v1, Ldsi;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    .line 240
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Ldsi;->c:Ljava/lang/Long;

    .line 242
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->addGroupMemberByBizType(Ljava/lang/String;Ldsi;Liyv;)V

    .line 250
    .end local v1    # "model":Ldsi;
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 243
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 244
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->l(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->addGroupMemberByQrcodeV2(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_1

    .line 246
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;->addGroupMemberBySearch(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    goto :goto_1

    .line 252
    .end local v0    # "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    .end local v2    # "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IMIService;
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->m(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 253
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    goto/16 :goto_0

    .line 255
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->n(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    goto/16 :goto_0
.end method
