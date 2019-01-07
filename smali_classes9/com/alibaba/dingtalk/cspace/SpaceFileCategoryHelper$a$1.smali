.class final Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;
.super Ljava/lang/Object;
.source "SpaceFileCategoryHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;->b:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;

    iput p2, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;->b:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->b(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;)Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;->b:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;)[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;->a:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;->a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;)V

    .line 198
    return-void
.end method
