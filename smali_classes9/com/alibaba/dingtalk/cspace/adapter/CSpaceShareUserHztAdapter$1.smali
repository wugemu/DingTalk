.class final Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;
.super Ljava/lang/Object;
.source "CSpaceShareUserHztAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;->a:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    iput p3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;)Lgae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;)Lgae;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;->a:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-interface {v0, v1}, Lgae;->a(Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;)V

    .line 69
    :cond_0
    return-void
.end method
