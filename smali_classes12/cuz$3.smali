.class final Lcuz$3;
.super Ljava/lang/Object;
.source "EncryptMsgViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcuz;
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcuz;


# direct methods
.method constructor <init>(Lcuz;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcuz;

    .prologue
    .line 113
    iput-object p1, p0, Lcuz$3;->c:Lcuz;

    iput-object p2, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcuz$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcuz$3;->c:Lcuz;

    iget-object v1, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcuz;->a(Lcuz;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcuz$3;->c:Lcuz;

    invoke-static {v0}, Lcuz;->b(Lcuz;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcuz$3;->c:Lcuz;

    invoke-static {v0}, Lcuz;->a(Lcuz;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "resetMsgEncryptStatus onException code : "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", msg : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 113
    .line 1116
    iget-object v0, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->updateDisplayType()V

    .line 1118
    iget-object v0, p0, Lcuz$3;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcuz$3;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Z()Lcug;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_1

    .line 1121
    iget-object v1, p0, Lcuz$3;->c:Lcuz;

    iget-object v2, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Lcuz;->a(Lcuz;Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcuz$3;->c:Lcuz;

    invoke-static {v1}, Lcuz;->a(Lcuz;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1125
    :cond_0
    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 1127
    :cond_1
    :goto_0
    return-void

    .line 1128
    :cond_2
    iget-object v0, p0, Lcuz$3;->c:Lcuz;

    iget-object v1, p0, Lcuz$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcuz;->a(Lcuz;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcuz$3;->c:Lcuz;

    invoke-static {v0}, Lcuz;->b(Lcuz;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcuz$3;->c:Lcuz;

    invoke-static {v0}, Lcuz;->a(Lcuz;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
