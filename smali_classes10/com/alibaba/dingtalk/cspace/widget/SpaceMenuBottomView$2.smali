.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$2;
.super Ljava/lang/Object;
.source "SpaceMenuBottomView.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgqm;)V
    .locals 1
    .param p1, "menuObject"    # Lgqm;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$2;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqj;

    move-result-object v0

    invoke-interface {v0, p1}, Lgqj;->a(Lgqm;)V

    .line 370
    :cond_0
    return-void
.end method
