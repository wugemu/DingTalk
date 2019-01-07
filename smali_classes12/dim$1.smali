.class public final Ldim$1;
.super Ljava/lang/Object;
.source "ConversationMembersFetcher.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldim;


# direct methods
.method public constructor <init>(Ldim;)V
    .locals 0
    .param p1, "this$0"    # Ldim;

    .prologue
    .line 88
    iput-object p1, p0, Ldim$1;->a:Ldim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "MembersFetcher"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " getConversation exception,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Ldim$1;->a:Ldim;

    .line 1045
    invoke-virtual {v0, p1, p2}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const v8, 0x7ffffffe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1091
    iget-object v0, p0, Ldim$1;->a:Ldim;

    .line 2045
    iput-object p1, v0, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1092
    iget-object v0, p0, Ldim$1;->a:Ldim;

    .line 3045
    iget-object v0, v0, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1092
    if-nez v0, :cond_0

    .line 1093
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "MembersFetcher getConversation is null"

    invoke-static {v0, v9, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Ldim$1;->a:Ldim;

    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4045
    invoke-virtual {v0, v1, v2}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10164
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Ldim$1;->a:Ldim;

    iget-object v3, p0, Ldim$1;->a:Ldim;

    .line 5045
    iget-object v3, v3, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1096
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    .line 6045
    iput-wide v4, v0, Ldim;->d:J

    .line 1097
    iget-object v3, p0, Ldim$1;->a:Ldim;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 7045
    :goto_1
    iput-boolean v0, v3, Ldim;->e:Z

    .line 1098
    iget-object v0, p0, Ldim$1;->a:Ldim;

    .line 8045
    iget-boolean v0, v0, Ldim;->e:Z

    .line 1098
    if-eqz v0, :cond_1

    .line 1100
    :try_start_0
    iget-object v0, p0, Ldim$1;->a:Ldim;

    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 9045
    iput-wide v4, v0, Ldim;->h:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :cond_1
    :goto_2
    iget-object v1, p0, Ldim$1;->a:Ldim;

    .line 10126
    new-instance v3, Ldim$2;

    invoke-direct {v3, v1}, Ldim$2;-><init>(Ldim;)V

    .line 10163
    iget-boolean v0, v1, Ldim;->c:Z

    if-eqz v0, :cond_3

    .line 10164
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v0

    iget-object v1, v1, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ldxf;

    invoke-direct {v4, v3}, Ldxf;-><init>(Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v1, v2, v8, v4}, Ldxu;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1097
    goto :goto_1

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1103
    const-string/jumbo v3, "im"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "MembersFetcher orgId exception:"

    aput-object v5, v4, v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v9, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 10166
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, v1, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1, v2, v8}, Lcom/alibaba/wukong/im/ConversationService;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    goto :goto_0
.end method
