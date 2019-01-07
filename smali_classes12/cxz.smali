.class public abstract Lcxz;
.super Lctv;
.source "UserCRMLinkHolder.java"


# instance fields
.field private S:Landroid/widget/TextView;

.field private Y:Landroid/widget/ImageView;

.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcxz;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 46
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcxz;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 47
    return-void
.end method

.method static synthetic a(Lcxz;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p0, "x0"    # Lcxz;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/app/Activity;

    .prologue
    .line 38
    .line 1084
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcxz;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_link:I

    invoke-static {v2}, Lcxz;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcxz;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcxz;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcxz;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcxz;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lcxz;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_link_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxz;->Y:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcxz;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv_link_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxz;->S:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcxz;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv_link_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxz;->b:Landroid/widget/TextView;

    .line 93
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_0

    .line 52
    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 53
    .local v0, "linkedContent":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    if-eqz v1, :cond_0

    .line 54
    iget-object v2, p0, Lcxz;->b:Landroid/widget/TextView;

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;->text:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 55
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcxz;->S:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    move-object v1, v0

    .line 61
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcxz;->Y:Landroid/widget/ImageView;

    sget v2, Lctk$e;->link_default_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :goto_1
    iget-object v1, p0, Lcxz;->r:Landroid/view/View;

    new-instance v2, Lcxz$1;

    invoke-direct {v2, p0, v0, p1}, Lcxz$1;-><init>(Lcxz;Ljava/lang/Object;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .end local v0    # "linkedContent":Ljava/lang/Object;
    :cond_0
    return-void

    .line 58
    .restart local v0    # "linkedContent":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcxz;->S:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v2, p0, Lcxz;->S:Landroid/widget/TextView;

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcxz;->Y:Landroid/widget/ImageView;

    sget v2, Lctk$e;->link_default_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v2, p0, Lcxz;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Lcxz;->Y:Landroid/widget/ImageView;

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/crm/CRMLinkDO;->picUrl:Ljava/lang/String;

    iget-object v1, p0, Lcxz;->L:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_1
.end method
