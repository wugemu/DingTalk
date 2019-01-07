.class final Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$1;
.super Ljava/lang/Object;
.source "MineGroupConversationFragmentV2.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$1;->a:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method
