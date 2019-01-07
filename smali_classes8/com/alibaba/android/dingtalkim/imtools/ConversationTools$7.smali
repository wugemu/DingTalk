.class public final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->e:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->c:J

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->d:Ljava/util/List;

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
    .line 909
    check-cast p1, Ljava/util/List;

    .line 1912
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1913
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "removeConversationMembers getUserProfileList result empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    :goto_0
    return-void

    .line 1917
    :cond_1
    const-string/jumbo v0, "im-removeConversationMembers"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 964
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 960
    return-void
.end method
