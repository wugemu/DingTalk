.class final Lfgn$7$1;
.super Ljava/lang/Object;
.source "JoinGroupRequestAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgn$7;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgn$7;


# direct methods
.method constructor <init>(Lfgn$7;)V
    .locals 0
    .param p1, "this$1"    # Lfgn$7;

    .prologue
    .line 286
    iput-object p1, p0, Lfgn$7$1;->a:Lfgn$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 290
    if-nez p2, :cond_0

    .line 291
    iget-object v0, p0, Lfgn$7$1;->a:Lfgn$7;

    iget-object v0, v0, Lfgn$7;->b:Lfgn;

    invoke-static {v0}, Lfgn;->b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 293
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lfgn$7$1;->a:Lfgn$7;

    iget-object v1, v1, Lfgn$7;->a:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v2, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->conversationId:Ljava/lang/String;

    iget-object v1, p0, Lfgn$7$1;->a:Lfgn$7;

    iget-object v1, v1, Lfgn$7;->a:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lfgn$7$1$1;

    invoke-direct {v3, p0}, Lfgn$7$1$1;-><init>(Lfgn$7$1;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    iget-object v7, p0, Lfgn$7$1;->a:Lfgn$7;

    iget-object v7, v7, Lfgn$7;->b:Lfgn;

    .line 312
    invoke-static {v7}, Lfgn;->b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v7

    .line 293
    invoke-interface {v1, v3, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v4, v5, v1}, Lcom/alibaba/wukong/im/ConversationService;->deleteJoinGroup(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 314
    :cond_0
    return-void
.end method
