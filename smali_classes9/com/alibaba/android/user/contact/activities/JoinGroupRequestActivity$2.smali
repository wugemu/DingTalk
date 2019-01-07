.class final Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;
.super Ljava/lang/Object;
.source "JoinGroupRequestActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Z)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->a:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->i(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    check-cast p1, Ljava/util/List;

    .line 1096
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->a:Z

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->f(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1099
    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    .line 1103
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->f(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    .line 1104
    iget-object v7, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->conversationId:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->conversationId:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    if-eqz v7, :cond_1

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    iget-object v7, v0, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    invoke-virtual {v1, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 1109
    :goto_1
    if-nez v1, :cond_6

    .line 1110
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->f(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    :goto_2
    move v2, v0

    .line 1113
    goto :goto_0

    .line 1114
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->createdAt:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;J)J

    .line 1115
    if-eqz v2, :cond_4

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)Z

    .line 1123
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->g(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Lfgn;

    move-result-object v0

    invoke-virtual {v0}, Lfgn;->notifyDataSetChanged()V

    .line 1124
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->a:Z

    if-nez v0, :cond_3

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->h(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V

    .line 93
    :cond_3
    return-void

    .line 1118
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)Z

    goto :goto_3

    .line 1121
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;->b:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)Z

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_1
.end method
