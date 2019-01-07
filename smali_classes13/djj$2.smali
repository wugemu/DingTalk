.class final Ldjj$2;
.super Ljava/lang/Object;
.source "ConversationNameUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjj;->b(Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Ldjj$2;->a:Ljava/util/List;

    iput-object p2, p0, Ldjj$2;->b:Ljava/util/List;

    iput p3, p0, Ldjj$2;->c:I

    iput-object p4, p0, Ldjj$2;->d:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Ldjj$2;->e:Landroid/app/Activity;

    iput-object p6, p0, Ldjj$2;->f:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "fetchNormal, getGroupNick failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Ldjj$2;->b:Ljava/util/List;

    iget v1, p0, Ldjj$2;->c:I

    add-int/lit16 v1, v1, 0x1f4

    iget-object v2, p0, Ldjj$2;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjj$2;->a:Ljava/util/List;

    iget-object v4, p0, Ldjj$2;->e:Landroid/app/Activity;

    iget-object v5, p0, Ldjj$2;->f:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v5}, Ldjj;->a(Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 170
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    check-cast p1, Ljava/util/List;

    .line 1149
    if-eqz p1, :cond_2

    .line 1150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 1151
    if-eqz v0, :cond_0

    .line 1154
    iget-object v1, p0, Ldjj$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqw;

    .line 1155
    iget-object v4, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_1

    iget-object v4, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 1156
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1157
    invoke-virtual {v1, v0}, Ldqw;->a(Lcom/alibaba/wukong/im/GroupNickObject;)V

    goto :goto_0

    .line 1162
    :cond_2
    iget-object v0, p0, Ldjj$2;->b:Ljava/util/List;

    iget v1, p0, Ldjj$2;->c:I

    add-int/lit16 v1, v1, 0x1f4

    iget-object v2, p0, Ldjj$2;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjj$2;->a:Ljava/util/List;

    iget-object v4, p0, Ldjj$2;->e:Landroid/app/Activity;

    iget-object v5, p0, Ldjj$2;->f:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v5}, Ldjj;->a(Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 146
    return-void
.end method
