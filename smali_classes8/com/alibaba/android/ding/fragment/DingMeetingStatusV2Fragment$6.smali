.class final Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$6;
.super Ljava/lang/Object;
.source "DingMeetingStatusV2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(I)V

    .line 357
    return-void
.end method
