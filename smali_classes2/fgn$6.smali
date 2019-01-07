.class final Lfgn$6;
.super Ljava/lang/Object;
.source "JoinGroupRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgn;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

.field final synthetic c:Lfgn$a;

.field final synthetic d:Lfgn;


# direct methods
.method constructor <init>(Lfgn;[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;Lfgn$a;)V
    .locals 0
    .param p1, "this$0"    # Lfgn;

    .prologue
    .line 247
    iput-object p1, p0, Lfgn$6;->d:Lfgn;

    iput-object p2, p0, Lfgn$6;->a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object p3, p0, Lfgn$6;->b:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iput-object p4, p0, Lfgn$6;->c:Lfgn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lfgn$6;->a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgn$6;->a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lfgn$6;->d:Lfgn;

    iget-object v1, p0, Lfgn$6;->b:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v2, p0, Lfgn$6;->a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0, v1, v2}, Lfgn;->a(Lfgn;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 253
    .local v4, "msg":Lcom/alibaba/wukong/im/Message;
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v4, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 255
    iget-object v0, p0, Lfgn$6;->c:Lfgn$a;

    iget-object v0, v0, Lfgn$a;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lfgn$6;->d:Lfgn;

    invoke-static {v0}, Lfgn;->b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 258
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lfgn$6;->b:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lfgn$6;->b:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    const-string/jumbo v5, "EVENTBUTLER"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lfgn$6$1;

    invoke-direct {v6, p0}, Lfgn$6$1;-><init>(Lfgn$6;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    iget-object v8, p0, Lfgn$6;->d:Lfgn;

    .line 277
    invoke-static {v8}, Lfgn;->b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v8

    .line 258
    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/ConversationService;->auditJoinGroup(Ljava/lang/String;JLcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 279
    .end local v4    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_0
    return-void
.end method
