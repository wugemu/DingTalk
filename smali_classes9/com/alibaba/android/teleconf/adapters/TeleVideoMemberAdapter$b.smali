.class final Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;
.super Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;
.source "TeleVideoMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;-><init>(Landroid/view/View;)V

    .line 39
    sget v0, Leuj$i;->item_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 40
    sget v0, Leuj$i;->item_user_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->b:Landroid/widget/TextView;

    .line 41
    sget v0, Leuj$i;->item_user_mute_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->c:Landroid/view/View;

    .line 42
    sget v0, Leuj$i;->item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->d:Landroid/widget/TextView;

    .line 43
    sget v0, Leuj$i;->item_sub_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    .line 44
    sget v0, Leuj$i;->item_bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->f:Landroid/view/View;

    .line 45
    return-void
.end method
