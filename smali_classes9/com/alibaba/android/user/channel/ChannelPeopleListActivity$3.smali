.class final Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$3;
.super Ljava/lang/Object;
.source "ChannelPeopleListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->f(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->f(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)V

    .line 130
    return-void
.end method
