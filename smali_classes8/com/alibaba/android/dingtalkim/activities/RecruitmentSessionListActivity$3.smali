.class final Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$3;
.super Ljava/lang/Object;
.source "RecruitmentSessionListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 144
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 133
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1136
    if-eqz p1, :cond_0

    invoke-static {p1}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->checkUpdateConfigInfo()V

    .line 133
    :cond_0
    return-void
.end method
