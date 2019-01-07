.class public Lcvm;
.super Landroid/widget/BaseAdapter;
.source "ForwardConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcvm$a;,
        Lcvm$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcvm$a;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcvm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcvm;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "conversationObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcvm;->e:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcvm;->f:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcvm;->a:Ljava/util/HashSet;

    .line 49
    return-void
.end method

.method static synthetic a(Lcvm;)Lcvm$a;
    .locals 1
    .param p0, "x0"    # Lcvm;

    .prologue
    .line 35
    iget-object v0, p0, Lcvm;->c:Lcvm$a;

    return-object v0
.end method

.method static synthetic b(Lcvm;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcvm;

    .prologue
    .line 35
    iget-object v0, p0, Lcvm;->a:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcvm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcvm;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 53
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcvm;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcvm;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isMultiple"    # Z

    .prologue
    .line 80
    iget-boolean v0, p0, Lcvm;->g:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcvm;->g:Z

    .line 82
    iget-object v0, p0, Lcvm;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 83
    invoke-virtual {p0}, Lcvm;->notifyDataSetChanged()V

    .line 85
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcvm;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcvm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcvm;->a(I)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    if-nez p2, :cond_5

    .line 114
    new-instance v2, Lcvm$b;

    invoke-direct {v2, p0}, Lcvm$b;-><init>(Lcvm;)V

    .line 115
    .local v2, "holder":Lcvm$b;
    iget-object v0, p0, Lcvm;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->forward_session_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    sget v0, Lctk$f;->session_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 117
    sget v0, Lctk$f;->session_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    .line 118
    sget v0, Lctk$f;->group_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcvm$b;->f:Landroid/widget/TextView;

    .line 119
    sget v0, Lctk$f;->session_top:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcvm$b;->c:Landroid/view/View;

    .line 120
    sget v0, Lctk$f;->enterprise_session_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcvm$b;->d:Landroid/widget/ImageView;

    .line 121
    sget v0, Lctk$f;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    .line 122
    sget v0, Lctk$f;->session_right_arrow:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcvm$b;->g:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcvm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 130
    .local v4, "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    check-cast p3, Landroid/widget/ListView;

    .line 1231
    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1233
    iget-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1235
    iget-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2233
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b:I

    .line 1236
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v10, 0x4

    cmp-long v0, v0, v10

    if-nez v0, :cond_6

    .line 1237
    iget-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1238
    iget-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lctk$e;->icon_burn_chat_avatar:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1249
    :goto_1
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v0, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    .line 131
    :cond_0
    :goto_2
    iget-object v0, v2, Lcvm$b;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    if-eqz v4, :cond_b

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_b

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 133
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v10, 0x4

    cmp-long v0, v0, v10

    if-nez v0, :cond_a

    .line 134
    iget-object v0, p0, Lcvm;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$e;->ic_conversation_safe_lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 135
    .local v6, "pic":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x18

    const/16 v9, 0x1e

    invoke-virtual {v6, v0, v1, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v3, v6, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcvm;->e:Landroid/content/Context;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 156
    .end local v6    # "pic":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_3
    const-string/jumbo v8, ""

    .line 157
    .local v8, "title":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v8

    .line 160
    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 161
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 162
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 167
    :cond_3
    :goto_4
    if-eqz v4, :cond_d

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_d

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 168
    invoke-static {v0}, Ldjl;->C(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 169
    iget-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, v2, Lcvm$b;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, v2, Lcvm$b;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcvm;->e:Landroid/content/Context;

    sget v3, Lctk$i;->member_count:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v3, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_5
    if-eqz v4, :cond_4

    .line 178
    iget-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 181
    :cond_4
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-lez v0, :cond_e

    .line 182
    iget-object v0, v2, Lcvm$b;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_6
    iget-boolean v0, p0, Lcvm;->g:Z

    if-eqz v0, :cond_11

    .line 188
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 189
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->m(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "key":Ljava/lang/String;
    iget-object v0, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 191
    iget-object v0, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcvm;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    iget-object v9, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    new-instance v0, Lcvm$1;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcvm$1;-><init>(Lcvm;Lcvm$b;ILcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcvm;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_f

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcvm;->b:Ljava/util/HashSet;

    iget-object v1, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    iget-object v0, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 214
    :goto_7
    iget-object v0, v2, Lcvm$b;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    .end local v5    # "key":Ljava/lang/String;
    :goto_8
    return-object p2

    .line 125
    .end local v2    # "holder":Lcvm$b;
    .end local v4    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v8    # "title":Ljava/lang/String;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcvm$b;

    .restart local v2    # "holder":Lcvm$b;
    goto/16 :goto_0

    .line 1240
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v4    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_6
    iget-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1241
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 1242
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 1243
    if-eqz v3, :cond_7

    .line 1244
    iget-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_1

    .line 1246
    :cond_7
    iget-object v3, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_1

    .line 1250
    :cond_8
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1251
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    iget-object v1, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Lctk$e;->default_group_icon:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultRes(I)V

    .line 1253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1254
    iget-object v1, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :goto_9
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v0, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    goto/16 :goto_2

    .line 1256
    :cond_9
    iget-object v0, v2, Lcvm$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lctk$e;->default_group_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_9

    .line 139
    :cond_a
    iget-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v3, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->u(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v7

    .line 141
    .local v7, "resource":I
    if-eqz v7, :cond_1

    .line 142
    iget-object v0, v2, Lcvm$b;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, v2, Lcvm$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 147
    .end local v7    # "resource":I
    :cond_b
    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v3, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->u(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v7

    .line 150
    .restart local v7    # "resource":I
    if-eqz v7, :cond_1

    .line 151
    iget-object v0, v2, Lcvm$b;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, v2, Lcvm$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 164
    .end local v7    # "resource":I
    .restart local v8    # "title":Ljava/lang/String;
    :cond_c
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 173
    :cond_d
    iget-object v0, v2, Lcvm$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, v2, Lcvm$b;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, v2, Lcvm$b;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 184
    :cond_e
    iget-object v0, v2, Lcvm$b;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 212
    .restart local v5    # "key":Ljava/lang/String;
    :cond_f
    iget-object v0, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_7

    .line 217
    .end local v5    # "key":Ljava/lang/String;
    :cond_10
    iget-object v0, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 218
    iget-object v0, v2, Lcvm$b;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 221
    :cond_11
    iget-object v0, v2, Lcvm$b;->e:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 222
    iget-object v0, v2, Lcvm$b;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8
.end method
