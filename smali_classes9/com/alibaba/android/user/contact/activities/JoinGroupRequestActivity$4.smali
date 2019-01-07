.class final Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;
.super Ljava/lang/Object;
.source "JoinGroupRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->showLoadingDialog()V

    .line 162
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->f(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->createdAt:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4$1;-><init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/im/ConversationService;->cleanJoinGroupValidationByOwner(JLcom/alibaba/wukong/Callback;)V

    .line 183
    return-void
.end method
