.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 371
    check-cast p1, Ljava/lang/String;

    .line 1374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V

    .line 1378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ljava/lang/String;)Ljava/lang/String;

    .line 1379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$17;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->c(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V

    .line 391
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 385
    return-void
.end method
