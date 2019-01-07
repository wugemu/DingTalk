.class final Lcom/alibaba/android/user/widget/OrgPageIndicator$1;
.super Ljava/lang/Object;
.source "OrgPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/widget/OrgPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/OrgPageIndicator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/widget/OrgPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/OrgPageIndicator;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;->a:Lcom/alibaba/android/user/widget/OrgPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    move-object v2, p1

    check-cast v2, Lcom/alibaba/android/user/widget/OrgPageIndicator$b;

    .line 53
    .local v2, "tabView":Lcom/alibaba/android/user/widget/OrgPageIndicator$b;
    iget-object v3, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;->a:Lcom/alibaba/android/user/widget/OrgPageIndicator;

    invoke-static {v3}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->a(Lcom/alibaba/android/user/widget/OrgPageIndicator;)I

    move-result v1

    .line 1254
    .local v1, "oldSelected":I
    const/4 v0, 0x0

    .line 55
    .local v0, "newSelected":I
    iget-object v3, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;->a:Lcom/alibaba/android/user/widget/OrgPageIndicator;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->setCurrentItem(I)V

    .line 56
    iget-object v3, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;->a:Lcom/alibaba/android/user/widget/OrgPageIndicator;

    invoke-static {v3, v0}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->a(Lcom/alibaba/android/user/widget/OrgPageIndicator;I)I

    .line 57
    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;->a:Lcom/alibaba/android/user/widget/OrgPageIndicator;

    invoke-static {v3}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->b(Lcom/alibaba/android/user/widget/OrgPageIndicator;)Lcom/alibaba/android/user/widget/OrgPageIndicator$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/alibaba/android/user/widget/OrgPageIndicator$1;->a:Lcom/alibaba/android/user/widget/OrgPageIndicator;

    invoke-static {v3}, Lcom/alibaba/android/user/widget/OrgPageIndicator;->b(Lcom/alibaba/android/user/widget/OrgPageIndicator;)Lcom/alibaba/android/user/widget/OrgPageIndicator$a;

    .line 60
    :cond_0
    return-void
.end method
