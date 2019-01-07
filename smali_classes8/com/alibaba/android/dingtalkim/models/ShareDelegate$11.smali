.class public final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgwn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 232
    check-cast p1, Lgwn;

    .line 1236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/doraemon/eventbus/AdapterCallback;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V

    .line 1238
    const-string/jumbo v0, "im"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[ShareDelegate] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " share app check suc"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p1, Lgwn;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ljava/lang/String;)Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p1, Lgwn;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ljava/lang/String;)Ljava/lang/String;

    .line 1241
    iget-object v0, p1, Lgwn;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1242
    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;)V

    :goto_0
    return-void

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/doraemon/eventbus/AdapterCallback;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$11;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V

    .line 258
    sget v0, Lctk$i;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 259
    const-string/jumbo v0, "im"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[ShareDelegate] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " share app check error: errCode "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ",errMsg:"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "check app auth error,the reason is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 252
    return-void
.end method
