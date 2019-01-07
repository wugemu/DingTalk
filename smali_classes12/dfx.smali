.class public abstract Ldfx;
.super Ljava/lang/Object;
.source "PreviewViewHolder.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected d:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected e:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected g:Landroid/content/Context;

.field protected h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

.field protected i:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iput-object p1, p0, Ldfx;->g:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Ldfx;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ldfx;->a:Landroid/view/View;

    .line 80
    iget-object v1, p0, Ldfx;->a:Landroid/view/View;

    sget v2, Lctk$f;->chatting_content_view_stub:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 81
    .local v0, "viewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldfx;->b()I

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Ldfx;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ldfx;->b:Landroid/view/View;

    .line 86
    :cond_0
    iget-object v1, p0, Ldfx;->a:Landroid/view/View;

    sget v2, Lctk$f;->chattting_avatar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Ldfx;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 87
    iget-object v1, p0, Ldfx;->a:Landroid/view/View;

    sget v2, Lctk$f;->chatting_time_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ldfx;->d:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Ldfx;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_overlay:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ldfx;->c:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Ldfx;->c()V

    .line 91
    iget-object v1, p0, Ldfx;->a:Landroid/view/View;

    return-object v1
.end method

.method public a(Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 10
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    iput-object p1, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    .line 99
    iput-object p2, p0, Ldfx;->i:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 1107
    iget-object v0, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->d:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_3

    .line 1153
    :cond_0
    :goto_0
    iget-object v0, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldfx;->d:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 1174
    :cond_1
    :goto_1
    iget-object v0, p0, Ldfx;->i:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldfx;->i:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-nez v0, :cond_9

    .line 1175
    :cond_2
    :goto_2
    return-void

    .line 1110
    :cond_3
    iget-object v0, p0, Ldfx;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_0

    .line 1113
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->d:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1114
    if-eqz v0, :cond_5

    .line 1115
    iget-object v1, p0, Ldfx;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1116
    iget-object v1, p0, Ldfx;->e:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_4
    iget-object v1, p0, Ldfx;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1120
    :cond_5
    new-instance v1, Ldfx$1;

    invoke-direct {v1, p0}, Ldfx$1;-><init>(Ldfx;)V

    .line 1142
    iget-object v0, p0, Ldfx;->g:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 1143
    const-class v4, Lcma;

    iget-object v0, p0, Ldfx;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v4, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1145
    :goto_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v4, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->d:J

    invoke-virtual {v1, v4, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 1157
    :cond_6
    iget-object v0, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->e:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    move v0, v2

    .line 1158
    :goto_4
    if-eqz v0, :cond_8

    .line 1159
    iget-object v0, p0, Ldfx;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Ldfx;->d:Landroid/widget/TextView;

    iget-object v1, p0, Ldfx;->h:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;->e:J

    invoke-static {v4, v5, v2}, Lcog;->b(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    iget-object v0, p0, Ldfx;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Ldfx;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v0, v3

    .line 1157
    goto :goto_4

    .line 1166
    :cond_8
    iget-object v0, p0, Ldfx;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Ldfx;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Ldfx;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1177
    :cond_9
    iget-object v0, p0, Ldfx;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1178
    iget-object v0, p0, Ldfx;->e:Landroid/widget/TextView;

    iget-object v1, p0, Ldfx;->i:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->nickColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto :goto_3
.end method

.method protected abstract b()I
.end method

.method protected abstract c()V
.end method

.method protected d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Ldfx;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Ldfx;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Ldfx;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Ldfx;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    return-void
.end method
