.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->b()V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->c(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)V

    .line 300
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 228
    check-cast p1, Ljava/util/List;

    .line 1236
    const-class v0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method
