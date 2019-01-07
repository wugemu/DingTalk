.class final Lflr$4$1$1$1;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflr$4$1$1;->run()V
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
        "Lcom/alibaba/wukong/im/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lflr$4$1$1;


# direct methods
.method constructor <init>(Lflr$4$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lflr$4$1$1;

    .prologue
    .line 386
    iput-object p1, p0, Lflr$4$1$1$1;->a:Lflr$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/User;)V
    .locals 2
    .param p1, "user"    # Lcom/alibaba/wukong/im/User;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lflr$4$1$1$1;->a:Lflr$4$1$1;

    iget-object v0, v0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lflr$4$1$1$1;->a:Lflr$4$1$1;

    iget-object v0, v0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->aliasPinyin:Ljava/lang/String;

    .line 398
    :cond_0
    invoke-static {}, Lflr;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lflr$4$1$1$1$1;

    invoke-direct {v1, p0}, Lflr$4$1$1$1$1;-><init>(Lflr$4$1$1$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lflr$4$1$1$1;->a(Lcom/alibaba/wukong/im/User;)V

    .line 410
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p1, Lcom/alibaba/wukong/im/User;

    .line 1389
    invoke-direct {p0, p1}, Lflr$4$1$1$1;->a(Lcom/alibaba/wukong/im/User;)V

    .line 386
    return-void
.end method
