.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$3;
.super Ljava/lang/Object;
.source "SpaceMenuBottomView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lgqm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 682
    check-cast p1, Lgqm;

    check-cast p2, Lgqm;

    .line 1685
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1686
    iget v0, p1, Lgqm;->a:I

    iget v1, p2, Lgqm;->a:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 1688
    :cond_0
    const/4 v0, 0x0

    .line 682
    goto :goto_0
.end method
