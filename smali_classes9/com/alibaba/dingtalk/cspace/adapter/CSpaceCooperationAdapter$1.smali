.class final Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$1;
.super Ljava/lang/Object;
.source "CSpaceCooperationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgit;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;Lgit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$1;->a:Lgit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$1;->a:Lgit;

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;->a(Lgit;)V

    .line 116
    return-void
.end method
