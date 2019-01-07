.class final Ldim$3;
.super Ljava/lang/Object;
.source "ConversationMembersFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldim;->a(Ljava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ldim;


# direct methods
.method constructor <init>(Ldim;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldim;

    .prologue
    .line 199
    iput-object p1, p0, Ldim$3;->c:Ldim;

    iput p2, p0, Ldim$3;->a:I

    iput-object p3, p0, Ldim$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    check-cast p1, Ljava/util/List;

    .line 1202
    if-eqz p1, :cond_3

    .line 1203
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcgc;

    .line 1205
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcgc;->a:Lcgk;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Ldim$3;->c:Ldim;

    .line 2045
    iget-wide v0, v0, Ldim;->h:J

    .line 1206
    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Ldqw;->a(JLcgc;Z)Ldqw;

    move-result-object v9

    .line 1207
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v1, p0, Ldim$3;->c:Ldim;

    .line 3045
    iget-object v1, v1, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1207
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldim$3;->c:Ldim;

    .line 4045
    iget-wide v2, v2, Ldim;->h:J

    .line 1207
    iget-object v4, v4, Lcgc;->a:Lcgk;

    iget-object v4, v4, Lcgk;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Ldim$3;->c:Ldim;

    .line 5045
    iget-object v6, v6, Ldim;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1207
    sget-object v10, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->MEMBER:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v6, v10}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)Lckl;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6039
    iget-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 1209
    iput-object v1, v9, Ldqw;->b:Ljava/lang/String;

    .line 6047
    iget-object v0, v0, Lckl;->e:Ljava/lang/String;

    .line 1210
    iput-object v0, v9, Ldqw;->c:Ljava/lang/String;

    .line 1212
    :cond_1
    if-eqz v9, :cond_0

    .line 1213
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1218
    :cond_2
    iget-object v0, p0, Ldim$3;->c:Ldim;

    .line 7045
    iget-object v0, v0, Ldim;->g:Ljava/util/ArrayList;

    .line 1218
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1220
    iget-object v0, p0, Ldim$3;->c:Ldim;

    .line 8045
    iget v0, v0, Ldim;->f:I

    .line 1220
    iget v1, p0, Ldim$3;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 1221
    iget-object v0, p0, Ldim$3;->c:Ldim;

    invoke-static {v0}, Ldim;->a(Ldim;)V

    :cond_3
    :goto_1
    return-void

    .line 1223
    :cond_4
    iget-object v0, p0, Ldim$3;->c:Ldim;

    .line 9045
    iget v1, v0, Ldim;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ldim;->f:I

    .line 1224
    iget-object v0, p0, Ldim$3;->c:Ldim;

    iget-object v1, p0, Ldim$3;->b:Ljava/util/List;

    .line 10045
    invoke-virtual {v0, v1}, Ldim;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "MembersFetcher getUserEmployeeInfoBatches exception,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 237
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Ldim$3;->c:Ldim;

    .line 1045
    invoke-virtual {v0, p1, p2}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 232
    return-void
.end method
