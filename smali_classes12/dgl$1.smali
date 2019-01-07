.class final Ldgl$1;
.super Ljava/lang/Object;
.source "AbsChatDetailViewHolder.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgl;->a(Landroid/view/ViewGroup;Landroid/view/View;ILdcr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Ldgl;


# direct methods
.method constructor <init>(Ldgl;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Ldgl;

    .prologue
    .line 180
    iput-object p1, p0, Ldgl$1;->d:Ldgl;

    iput-object p2, p0, Ldgl$1;->a:Landroid/view/View;

    iput p3, p0, Ldgl$1;->b:I

    iput-object p4, p0, Ldgl$1;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    check-cast p1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .line 1183
    if-nez p1, :cond_0

    .line 1184
    iget-object v0, p0, Ldgl$1;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    :goto_0
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Ldgl$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Ldgl$1;->a:Landroid/view/View;

    sget v1, Lctk$f;->item_search_message_data:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1191
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 1192
    const-string/jumbo v0, "IM"

    const-string/jumbo v1, "AbsChatDetailViewHolder"

    const-string/jumbo v2, "tag is not integer"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1196
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1197
    iget v1, p0, Ldgl$1;->b:I

    if-eq v0, v1, :cond_2

    .line 1198
    const-string/jumbo v0, "IM"

    const-string/jumbo v1, "AbsChatDetailViewHolder"

    const-string/jumbo v2, "pos != position"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1202
    :cond_2
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 2062
    iput-object v1, v0, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    .line 1203
    iget-object v1, p0, Ldgl$1;->d:Ldgl;

    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    .line 3062
    iget-object v0, v0, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    .line 1203
    if-eqz v0, :cond_3

    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    .line 4062
    iget-object v0, v0, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    .line 1203
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Ldgl;->l:Lcom/alibaba/wukong/im/Conversation;

    .line 1205
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, p0, Ldgl$1;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ldgl;->a(Landroid/view/View;)V

    .line 1206
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, p0, Ldgl$1;->d:Ldgl;

    .line 5062
    iget-wide v2, v1, Ldgl;->j:J

    .line 5377
    iput-wide v2, v0, Ldgl;->j:J

    .line 1207
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, p0, Ldgl$1;->d:Ldgl;

    .line 6062
    iget-object v1, v1, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    .line 6381
    iput-object v1, v0, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    .line 1208
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, v1, Ldgl;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldgl;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1209
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, p0, Ldgl$1;->d:Ldgl;

    .line 7062
    iget-boolean v1, v1, Ldgl;->g:Z

    .line 1209
    invoke-static {p1, v1}, Ldgv;->a(Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;Z)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->ordinal()I

    move-result v1

    .line 7441
    iput v1, v0, Ldgl;->i:I

    .line 1212
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Ldgl;->a(Ldgl;Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;I)V

    .line 1214
    iget-object v0, p0, Ldgl$1;->d:Ldgl;

    iget-object v1, p0, Ldgl$1;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ldgl;->a(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1203
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
