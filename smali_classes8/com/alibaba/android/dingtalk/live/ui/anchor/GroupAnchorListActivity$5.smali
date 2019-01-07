.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$5;
.super Ljava/lang/Object;
.source "GroupAnchorListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$5;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$5;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$5;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;J)V

    .line 312
    return-void
.end method
