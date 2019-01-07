.class public final Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;
.super Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
.source "CsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;-><init>(Landroid/view/View;)V

    .line 46
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;->a:I

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewType"    # I

    .prologue
    .line 40
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;-><init>(Landroid/view/View;I)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CsRecyclerViewAdapter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ATTENTION !!! NullViewHolder with viewType: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;->a:I

    .line 52
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 51
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
