.class final Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;
.super Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;
.source "TeleVideoMemberAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/view/View;

.field i:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

.field j:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;-><init>(Landroid/view/View;)V

    .line 63
    sget v0, Leuj$i;->item_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 64
    sget v0, Leuj$i;->item_user_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->b:Landroid/widget/TextView;

    .line 65
    sget v0, Leuj$i;->item_user_mute_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->c:Landroid/view/View;

    .line 66
    sget v0, Leuj$i;->item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->d:Landroid/widget/TextView;

    .line 67
    sget v0, Leuj$i;->item_sub_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    .line 68
    sget v0, Leuj$i;->item_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    .line 69
    sget v0, Leuj$i;->item_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    .line 70
    sget v0, Leuj$i;->item_bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->h:Landroid/view/View;

    .line 71
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    iget-object v1, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->i:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 93
    .local v0, "viewId":I
    sget v1, Leuj$i;->item_delete:I

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->i:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v2, p1, v1, v3}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;->a(Landroid/view/View;ILcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;)V

    goto :goto_0

    .line 95
    :cond_2
    sget v1, Leuj$i;->item_control:I

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->i:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->j:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v2, p1, v1, v3}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;->a(Landroid/view/View;ILcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;)V

    goto :goto_0
.end method
