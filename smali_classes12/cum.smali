.class public final Lcum;
.super Ljava/lang/Object;
.source "DingFromManager.java"


# instance fields
.field a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field b:Landroid/app/Activity;

.field c:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcum$1;

    invoke-direct {v0, p0}, Lcum$1;-><init>(Lcum;)V

    iput-object v0, p0, Lcum;->c:Lckm$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 62
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_8

    .line 63
    const/4 v1, 0x1

    .line 64
    .local v1, "unconfirmed":Z
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C()Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v2

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v2, v6, :cond_2

    .line 65
    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v2

    if-ne v6, v2, :cond_1

    move v1, v3

    .line 69
    :cond_0
    :goto_0
    iget-object v2, p0, Lcum;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2}, Lddq;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    .line 70
    .local v0, "shouldCommentShow":Z
    iget-object v3, p0, Lcum;->e:Landroid/widget/LinearLayout;

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    move v2, v5

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v2, p0, Lcum;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 72
    iget-object v3, p0, Lcum;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    sget v2, Lctk$i;->ding_txt_confirm:I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v3, p0, Lcum;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcum;->b:Landroid/app/Activity;

    .line 74
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lctk$c;->text_color_blue:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 73
    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .end local v0    # "shouldCommentShow":Z
    .end local v1    # "unconfirmed":Z
    :goto_5
    return-void

    .restart local v1    # "unconfirmed":Z
    :cond_1
    move v1, v4

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C()Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v2

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v2, v6, :cond_0

    .line 67
    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v2

    if-ne v6, v2, :cond_3

    move v1, v3

    :goto_6
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_6

    .restart local v0    # "shouldCommentShow":Z
    :cond_4
    move v2, v4

    .line 70
    goto :goto_1

    :cond_5
    move v4, v5

    .line 71
    goto :goto_2

    .line 72
    :cond_6
    sget v2, Lctk$i;->dt_ding_confirmed:I

    goto :goto_3

    .line 74
    :cond_7
    iget-object v2, p0, Lcum;->b:Landroid/app/Activity;

    .line 75
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lctk$c;->text_color_gray:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_4

    .line 77
    .end local v0    # "shouldCommentShow":Z
    .end local v1    # "unconfirmed":Z
    :cond_8
    iget-object v2, p0, Lcum;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcum;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    goto :goto_5
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    iput-object p1, p0, Lcum;->b:Landroid/app/Activity;

    .line 157
    iput-object p2, p0, Lcum;->g:Lcom/alibaba/wukong/im/Message;

    .line 158
    const/4 v1, 0x1

    .line 159
    .local v1, "shouldClean":Z
    const-string/jumbo v2, "dingId"

    invoke-interface {p2, v2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 164
    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_2

    .line 1052
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcum;->c:Lckm$a;

    if-eqz v2, :cond_1

    .line 1053
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C()Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v2, v3, :cond_4

    .line 1054
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    iget-object v3, p0, Lcum;->c:Lckm$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->r(Lckm$a;)V

    .line 166
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 169
    :cond_2
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v2, :cond_5

    .line 1098
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1099
    new-instance v2, Lcum$2;

    invoke-direct {v2, p0}, Lcum$2;-><init>(Lcum;)V

    .line 1122
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/lang/String;Lcma;)V

    .line 174
    :cond_3
    :goto_1
    return-void

    .line 1055
    :cond_4
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C()Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v2, v3, :cond_1

    .line 1056
    iget-object v2, p0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v3, p0, Lcum;->c:Lckm$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->r(Lckm$a;)V

    goto :goto_0

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcum;->a()V

    goto :goto_1
.end method

.method protected final a(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 131
    :cond_0
    sget v0, Lctk$f;->comment_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iput-object v0, p0, Lcum;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .line 133
    sget v0, Lctk$f;->ll_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcum;->e:Landroid/widget/LinearLayout;

    .line 134
    sget v0, Lctk$f;->tv_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcum;->f:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcum;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 136
    iget-object v0, p0, Lcum;->f:Landroid/widget/TextView;

    new-instance v1, Lcum$3;

    invoke-direct {v1, p0}, Lcum$3;-><init>(Lcum;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcum;->c:Lckm$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 145
    new-instance v0, Lcum$4;

    invoke-direct {v0, p0}, Lcum$4;-><init>(Lcum;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
