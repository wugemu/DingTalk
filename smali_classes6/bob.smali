.class public final Lbob;
.super Lbnv;
.source "NoticeViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/View;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/app/Activity;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lbnv;-><init>(Landroid/view/View;Lboq;)V

    .line 53
    iput-object p1, p0, Lbob;->k:Landroid/view/View;

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v1, Lbpu$d;->notice_avatar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lbob;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 56
    sget v1, Lbpu$d;->notice_msg_cnt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbob;->m:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "context":Landroid/content/Context;
    sget v1, Lbpu$f;->dt_circle_title_new_messages:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbob;->o:Ljava/lang/String;

    .line 61
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iput-object v0, p0, Lbob;->n:Landroid/app/Activity;

    .line 65
    :cond_0
    iput-object p2, p0, Lbob;->j:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic a(Lbob;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lbob;

    .prologue
    .line 39
    iget-object v0, p0, Lbob;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "noticeObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    const/4 v3, 0x0

    .line 91
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string/jumbo v0, "onShowNotice noticeObjectList empty"

    .line 1076
    invoke-static {v3, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lbob;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbob;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 1101
    iget-object v1, p0, Lbob;->n:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 1103
    if-nez v1, :cond_2

    .line 1104
    const-string/jumbo v0, "userObject = null"

    .line 2076
    invoke-static {v3, v0}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1108
    :cond_2
    iget-object v2, p0, Lbob;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 1109
    iget-object v2, p0, Lbob;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Lbpu$c;->icon_avatar_default_round:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1111
    iget-object v2, p0, Lbob;->n:Landroid/app/Activity;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    new-instance v1, Lbob$1;

    invoke-direct {v1, p0, v0}, Lbob$1;-><init>(Lbob;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V

    invoke-static {v2, v4, v5, v1}, Lbqr;->a(Landroid/app/Activity;JLcov;)V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 147
    iget-object v3, p0, Lbob;->n:Landroid/app/Activity;

    invoke-static {v3}, Lbpw;->a(Landroid/app/Activity;)V

    .line 150
    iget-object v2, p0, Lbob;->j:Ljava/util/List;

    .line 151
    .local v2, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 152
    .local v1, "noticeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    iput v5, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->readState:I

    goto :goto_0

    .line 2164
    .end local v1    # "noticeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    :cond_0
    const-string/jumbo v3, "NoticeViewHolder"

    invoke-static {v3, v5}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lbob$2;

    invoke-direct {v4}, Lbob$2;-><init>()V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "circle_on_receive_notice_num"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "circle_on_receive_notice_num"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    iget-object v3, p0, Lbob;->n:Landroid/app/Activity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 161
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 75
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 1
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lbob;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lbob;->a(Ljava/util/List;)V

    .line 86
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Lbob;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lbob;->a(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lbob;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lbob;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2140
    iget-object v0, p0, Lbob;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbob;->n:Landroid/app/Activity;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2142
    const-string/jumbo v2, "extra_notice_list"

    iget-object v0, p0, Lbob;->j:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2143
    iget-object v0, p0, Lbob;->n:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_0
    invoke-direct {p0}, Lbob;->b()V

    .line 137
    :cond_1
    return-void
.end method
