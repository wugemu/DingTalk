.class final Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$1;
.super Ljava/lang/Object;
.source "SpaceFileCategoryHelper.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;


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
    .line 305
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$1;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;)V
    .locals 1
    .param p1, "category"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$1;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->dismiss()V

    .line 309
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$1;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;)Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$1;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;)Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;->a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;)V

    .line 312
    :cond_0
    return-void
.end method
