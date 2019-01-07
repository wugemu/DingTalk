.class public final Lfzw$1;
.super Ljava/lang/Object;
.source "SpaceSearchHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lfzw$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lfzw$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lfzw$1;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 81
    check-cast p1, Ljava/util/List;

    .line 1089
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1091
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1092
    invoke-static {v0}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1093
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1094
    invoke-static {v0}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v3

    .line 1095
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1096
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    invoke-static {v0}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 1098
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lfzv;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 1099
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v5}, Lfzv;->a(Ljava/lang/String;J)V

    .line 1100
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    const/4 v5, 0x3

    .line 1102
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-virtual {v4, v3, v6, v5, v0}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lfzw$1;->a:Lcma;

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lfzw$1;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 81
    :cond_2
    return-void
.end method
