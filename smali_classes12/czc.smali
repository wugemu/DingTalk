.class public abstract Lczc;
.super Lctv;
.source "UserLuckyTimeRedPacketRemainViewHolder.java"


# instance fields
.field private S:Landroid/view/View;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lczc;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczc;->S:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lczc;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczc;->b:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lczc;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczc;->a:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0, p2}, Lczc;->c(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 1062
    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 1063
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1064
    instance-of v2, v1, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    if-eqz v2, :cond_2

    .line 1065
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    move-object v0, v1

    .line 36
    .local v0, "remindDo":Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;
    :goto_1
    if-eqz v0, :cond_1

    .line 37
    iget-object v2, p0, Lczc;->b:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->content:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lczc;->a:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->title:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_1
    iget-object v1, p0, Lczc;->S:Landroid/view/View;

    new-instance v2, Lczc$1;

    invoke-direct {v2, p0, v0}, Lczc$1;-><init>(Lczc;Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lczc;->S:Landroid/view/View;

    sget-object v2, Lczc;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    invoke-virtual {p0, p1, p2}, Lczc;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 1069
    .end local v0    # "remindDo":Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 37
    .restart local v0    # "remindDo":Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->content:Ljava/lang/String;

    goto :goto_2

    .line 38
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->title:Ljava/lang/String;

    goto :goto_3
.end method

.method protected abstract c(Landroid/view/View;)V
.end method
