.class final Ldjj$1;
.super Ljava/lang/Object;
.source "ConversationNameUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjj;->b(Ljava/util/List;IJLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:I

.field final synthetic g:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic h:Landroid/app/Activity;

.field final synthetic i:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(JLjava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Ljava/util/List;Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Ldjj$1;->a:J

    iput-object p3, p0, Ldjj$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ldjj$1;->c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    iput-object p5, p0, Ldjj$1;->d:Ljava/util/List;

    iput-object p6, p0, Ldjj$1;->e:Ljava/util/List;

    iput p7, p0, Ldjj$1;->f:I

    iput-object p8, p0, Ldjj$1;->g:Lcom/alibaba/wukong/im/Conversation;

    iput-object p9, p0, Ldjj$1;->h:Landroid/app/Activity;

    iput-object p10, p0, Ldjj$1;->i:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    check-cast p1, Ljava/util/List;

    .line 1094
    if-eqz p1, :cond_2

    .line 1095
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 1096
    iget-wide v2, p0, Ldjj$1;->a:J

    .line 2097
    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Ldqw;->a(JLcgc;Z)Ldqw;

    move-result-object v8

    .line 1097
    if-eqz v8, :cond_0

    iget-object v0, v8, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 1098
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v1, p0, Ldjj$1;->b:Ljava/lang/String;

    iget-wide v2, p0, Ldjj$1;->a:J

    iget-object v4, v8, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v6, p0, Ldjj$1;->c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .line 1099
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)Lckl;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lckl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3039
    iget-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 1101
    iput-object v1, v8, Ldqw;->b:Ljava/lang/String;

    .line 3047
    iget-object v0, v0, Lckl;->e:Ljava/lang/String;

    .line 1102
    iput-object v0, v8, Ldqw;->c:Ljava/lang/String;

    .line 1104
    :cond_1
    iget-object v0, p0, Ldjj$1;->d:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1108
    :cond_2
    iget-object v0, p0, Ldjj$1;->e:Ljava/util/List;

    iget v1, p0, Ldjj$1;->f:I

    add-int/lit16 v1, v1, 0x1f4

    iget-wide v2, p0, Ldjj$1;->a:J

    iget-object v4, p0, Ldjj$1;->g:Lcom/alibaba/wukong/im/Conversation;

    iget-object v5, p0, Ldjj$1;->d:Ljava/util/List;

    iget-object v6, p0, Ldjj$1;->h:Landroid/app/Activity;

    iget-object v7, p0, Ldjj$1;->i:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v7}, Ldjj;->a(Ljava/util/List;IJLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 91
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
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

    .line 115
    iget-object v0, p0, Ldjj$1;->e:Ljava/util/List;

    iget v1, p0, Ldjj$1;->f:I

    add-int/lit16 v1, v1, 0x1f4

    iget-wide v2, p0, Ldjj$1;->a:J

    iget-object v4, p0, Ldjj$1;->g:Lcom/alibaba/wukong/im/Conversation;

    iget-object v5, p0, Ldjj$1;->d:Ljava/util/List;

    iget-object v6, p0, Ldjj$1;->h:Landroid/app/Activity;

    iget-object v7, p0, Ldjj$1;->i:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v7}, Ldjj;->a(Ljava/util/List;IJLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 116
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 121
    return-void
.end method
