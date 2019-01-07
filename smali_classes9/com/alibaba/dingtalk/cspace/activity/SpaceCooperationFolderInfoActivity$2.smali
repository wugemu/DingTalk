.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$2;
.super Ljava/lang/Object;
.source "SpaceCooperationFolderInfoActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V

    .line 281
    :cond_0
    return-void
.end method
