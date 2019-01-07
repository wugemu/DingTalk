.class public final Lcww;
.super Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;
.source "RemoveMyAddedMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcww$b;,
        Lcww$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcww$a;

.field private e:Landroid/app/Activity;

.field private f:Lcom/alibaba/wukong/im/Conversation;

.field private g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcww$1;

    invoke-direct {v0, p0}, Lcww$1;-><init>(Lcww;)V

    iput-object v0, p0, Lcww;->h:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lcww;->e:Landroid/app/Activity;

    .line 34
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "param conversation or nameSchema cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcww;->f:Lcom/alibaba/wukong/im/Conversation;

    .line 38
    iput-object p3, p0, Lcww;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .line 39
    return-void
.end method

.method private a(I)J
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcww;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-wide v2

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Lcww;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 46
    .local v0, "item":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method static synthetic a(Lcww;I)J
    .locals 2
    .param p0, "x0"    # Lcww;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcww;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcww;)Lcww$a;
    .locals 1
    .param p0, "x0"    # Lcww;

    .prologue
    .line 25
    iget-object v0, p0, Lcww;->a:Lcww$a;

    return-object v0
.end method

.method static synthetic b(Lcww;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcww;

    .prologue
    .line 25
    iget-object v0, p0, Lcww;->f:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 55
    if-nez p2, :cond_1

    .line 56
    iget-object v0, p0, Lcww;->d:Landroid/view/LayoutInflater;

    sget v1, Lctk$g;->im_remove_my_added_members_item:I

    invoke-virtual {v0, v1, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v7, Lcww$b;

    invoke-direct {v7, p0}, Lcww$b;-><init>(Lcww;)V

    .line 58
    .local v7, "viewHolder":Lcww$b;
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    sget v0, Lctk$f;->aiv_user:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1103
    iput-object v0, v7, Lcww$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 60
    sget v0, Lctk$f;->tv_remove:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2103
    iput-object v0, v7, Lcww$b;->c:Landroid/widget/TextView;

    .line 61
    sget v0, Lctk$f;->tv_username:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3103
    iput-object v0, v7, Lcww$b;->b:Landroid/widget/TextView;

    .line 62
    sget v0, Lctk$f;->v_divider_full:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4103
    iput-object v0, v7, Lcww$b;->e:Landroid/view/View;

    .line 63
    sget v0, Lctk$f;->v_divider_part:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5103
    iput-object v0, v7, Lcww$b;->d:Landroid/view/View;

    .line 67
    :goto_0
    invoke-direct {p0, p1}, Lcww;->a(I)J

    move-result-wide v8

    .line 6103
    .local v8, "userId":J
    iput-wide v8, v7, Lcww$b;->f:J

    .line 7103
    iget-object v0, v7, Lcww$b;->c:Landroid/widget/TextView;

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8103
    iget-object v0, v7, Lcww$b;->c:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcww;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8118
    iget-object v0, v7, Lcww$b;->g:Ldht;

    if-eqz v0, :cond_0

    .line 8119
    iget-object v0, v7, Lcww$b;->g:Ldht;

    invoke-virtual {v0}, Ldht;->a()V

    .line 8121
    :cond_0
    iget-object v0, v7, Lcww$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8122
    iget-object v0, v7, Lcww$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8123
    new-instance v0, Ldht;

    iget-object v1, v7, Lcww$b;->i:Lcww;

    .line 9025
    iget-object v1, v1, Lcww;->e:Landroid/app/Activity;

    .line 8123
    new-instance v2, Lcww$b$1;

    invoke-direct {v2, v7}, Lcww$b$1;-><init>(Lcww$b;)V

    invoke-direct {v0, v1, v2}, Ldht;-><init>(Landroid/app/Activity;Ldht$a;)V

    iput-object v0, v7, Lcww$b;->g:Ldht;

    .line 8141
    iget-object v0, v7, Lcww$b;->g:Ldht;

    iget-object v1, v7, Lcww$b;->i:Lcww;

    .line 10025
    iget-object v1, v1, Lcww;->f:Lcom/alibaba/wukong/im/Conversation;

    .line 8141
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v7, Lcww$b;->h:J

    iget-wide v4, v7, Lcww$b;->f:J

    iget-object v6, v7, Lcww$b;->i:Lcww;

    .line 11025
    iget-object v6, v6, Lcww;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .line 8141
    invoke-virtual/range {v0 .. v6}, Ldht;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V

    .line 72
    invoke-virtual {p0}, Lcww;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 11103
    iget-object v0, v7, Lcww$b;->e:Landroid/view/View;

    .line 73
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 12103
    iget-object v0, v7, Lcww$b;->d:Landroid/view/View;

    .line 74
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :goto_1
    return-object p2

    .line 65
    .end local v7    # "viewHolder":Lcww$b;
    .end local v8    # "userId":J
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcww$b;

    .restart local v7    # "viewHolder":Lcww$b;
    goto :goto_0

    .line 13103
    .restart local v8    # "userId":J
    :cond_2
    iget-object v0, v7, Lcww$b;->e:Landroid/view/View;

    .line 76
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 14103
    iget-object v0, v7, Lcww$b;->d:Landroid/view/View;

    .line 77
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
