.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4$1;
.super Ljava/lang/Object;
.source "SpaceShareBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 332
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 333
    return-void
.end method
