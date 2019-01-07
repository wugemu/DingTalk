.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldtl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 228
    check-cast p1, Ldtl;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Z)Z

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Ldtl;)Ldtl;

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Ldtl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Ldtl;

    move-result-object v0

    iget-object v0, v0, Ldtl;->j:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Ldtl;

    move-result-object v1

    iget-object v1, v1, Ldtl;->j:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    :goto_0
    return-void

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Z)Z

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Ldtl;)Ldtl;

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->dismissLoadingDialog()V

    .line 271
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 262
    return-void
.end method
