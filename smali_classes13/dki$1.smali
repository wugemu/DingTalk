.class final Ldki$1;
.super Ljava/lang/Object;
.source "PraiseBelongOrgManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldki;->a(Ldro;Ldki$a;)Ldro;
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
.field final synthetic a:Ldki$a;

.field final synthetic b:Ldki;


# direct methods
.method constructor <init>(Ldki;Ldki$a;)V
    .locals 0
    .param p1, "this$0"    # Ldki;

    .prologue
    .line 76
    iput-object p1, p0, Ldki$1;->b:Ldki;

    iput-object p2, p0, Ldki$1;->a:Ldki$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1079
    if-eqz p1, :cond_0

    .line 1082
    iget-object v0, p0, Ldki$1;->b:Ldki;

    .line 2024
    iget-object v0, v0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1082
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldki$1;->b:Ldki;

    .line 3024
    iget-object v0, v0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1082
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v0, p0, Ldki$1;->b:Ldki;

    .line 4024
    iput-object p1, v0, Ldki;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1086
    iget-object v0, p0, Ldki$1;->b:Ldki;

    .line 5024
    iget-object v0, v0, Ldki;->d:Ldro;

    .line 1086
    iget-object v1, p0, Ldki$1;->b:Ldki;

    iget-object v2, p0, Ldki$1;->b:Ldki;

    .line 6024
    iget-object v2, v2, Ldki;->c:Ldro;

    .line 1086
    iget-object v2, v2, Ldro;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    .line 7024
    invoke-virtual {v1, v2, v3}, Ldki;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1086
    iput-object v1, v0, Ldro;->a:Ljava/util/List;

    .line 1087
    iget-object v0, p0, Ldki$1;->b:Ldki;

    .line 8024
    iget-object v0, v0, Ldki;->d:Ldro;

    .line 1087
    iget-object v1, p0, Ldki$1;->b:Ldki;

    .line 9024
    iget-object v1, v1, Ldki;->c:Ldro;

    .line 1087
    iget-wide v2, v1, Ldro;->b:J

    iput-wide v2, v0, Ldro;->b:J

    .line 1088
    iget-object v0, p0, Ldki$1;->a:Ldki$a;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Ldki$1;->a:Ldki$a;

    iget-object v1, p0, Ldki$1;->b:Ldki;

    .line 10024
    iget-object v1, v1, Ldki;->d:Ldro;

    .line 1089
    iget-object v2, p0, Ldki$1;->b:Ldki;

    .line 11024
    iget-object v2, v2, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1089
    invoke-interface {v0, v1, v2}, Ldki$a;->a(Ldro;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "PraiseBelongOrgManager"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "getUserProfile exception error :"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " msg :"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 94
    return-void
.end method
