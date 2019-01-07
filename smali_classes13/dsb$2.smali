.class public final Ldsb$2;
.super Ljava/lang/Object;
.source "RetailUserInfoModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldsb;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ldsb$a;

.field final synthetic c:Ldsb;


# direct methods
.method public constructor <init>(Ldsb;Lcom/alibaba/wukong/im/Conversation;Ldsb$a;)V
    .locals 0
    .param p1, "this$0"    # Ldsb;

    .prologue
    .line 138
    iput-object p1, p0, Ldsb$2;->c:Ldsb;

    iput-object p2, p0, Ldsb$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldsb$2;->b:Ldsb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1141
    if-eqz p1, :cond_1

    iget-object v0, p0, Ldsb$2;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldsb$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1142
    iget-object v0, p0, Ldsb$2;->c:Ldsb;

    .line 2036
    invoke-virtual {v0, p1}, Ldsb;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1143
    iget-object v0, p0, Ldsb$2;->b:Ldsb$a;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Ldsb$2;->b:Ldsb$a;

    invoke-interface {v0}, Ldsb$a;->a()V

    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "RetailUserInfoModel"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ErrorType:Null"

    aput-object v4, v2, v3

    .line 1148
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1147
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 159
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "RetailUserInfoModel"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ErrorType:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 160
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 155
    return-void
.end method
