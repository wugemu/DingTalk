.class final Ldgj$2;
.super Ljava/lang/Object;
.source "ChatListDetailPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgj;->a(Lcom/alibaba/wukong/im/Conversation;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ldgj;


# direct methods
.method constructor <init>(Ldgj;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Ldgj;

    .prologue
    .line 117
    iput-object p1, p0, Ldgj$2;->b:Ldgj;

    iput-object p2, p0, Ldgj$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1120
    iget-object v0, p0, Ldgj$2;->b:Ldgj;

    .line 2050
    iget-object v0, v0, Ldgj;->b:Ldgi$b;

    .line 1120
    invoke-interface {v0}, Ldgi$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1121
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    iget-object v1, p0, Ldgj$2;->b:Ldgj;

    iget-object v2, p0, Ldgj$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2, v0}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3050
    iput-object v0, v1, Ldgj;->e:Ljava/lang/String;

    .line 1123
    iget-object v0, p0, Ldgj$2;->b:Ldgj;

    .line 4050
    iget-object v0, v0, Ldgj;->b:Ldgi$b;

    .line 1123
    iget-object v1, p0, Ldgj$2;->b:Ldgj;

    .line 5050
    iget-object v1, v1, Ldgj;->e:Ljava/lang/String;

    .line 1123
    invoke-interface {v0, v1}, Ldgi$b;->b(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getTitle getUser fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 135
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 130
    return-void
.end method
