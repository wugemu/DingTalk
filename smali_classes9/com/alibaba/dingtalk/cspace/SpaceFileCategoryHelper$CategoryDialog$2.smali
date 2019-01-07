.class final Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$2;
.super Ljava/lang/Object;
.source "SpaceFileCategoryHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$2;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$2;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->dismiss()V

    .line 321
    return-void
.end method
