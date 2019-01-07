.class final Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;
.super Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;
.source "TeleVideoWindowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Landroid/widget/TextView;

.field c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

.field d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

.field e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;-><init>(Landroid/view/View;)V

    .line 49
    sget v0, Leuj$i;->video_sub_surface_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->a:Landroid/widget/FrameLayout;

    .line 50
    sget v0, Leuj$i;->video_sub_surface_view_nick:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->b:Landroid/widget/TextView;

    .line 51
    sget v0, Leuj$i;->video_sub_surface_view_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    .line 52
    sget v0, Leuj$i;->video_sub_surface_view_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    .line 53
    sget v0, Leuj$i;->video_sub_surface_view_recall:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;

    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->bringToFront()V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->bringToFront()V

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;->bringToFront()V

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 61
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    return-void
.end method
