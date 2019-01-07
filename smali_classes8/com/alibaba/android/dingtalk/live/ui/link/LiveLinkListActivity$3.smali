.class final Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$3;
.super Ljava/lang/Object;
.source "LiveLinkListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$3;->b:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$3;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$3;->b:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$3;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 196
    return-void
.end method
