.class final Lfgq$4;
.super Ljava/lang/Object;
.source "OrgContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lfgq;


# direct methods
.method constructor <init>(Lfgq;ILandroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lfgq;

    .prologue
    .line 328
    iput-object p1, p0, Lfgq$4;->c:Lfgq;

    iput p2, p0, Lfgq$4;->a:I

    iput-object p3, p0, Lfgq$4;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 331
    iget-object v1, p0, Lfgq$4;->c:Lfgq;

    iget v2, p0, Lfgq$4;->a:I

    iget-object v3, p0, Lfgq$4;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lfgq$4;->c:Lfgq;

    invoke-static {v0}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lfgq$4;->a:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v1, v2, v3, v0}, Lfgq;->a(Lfgq;ILandroid/widget/CheckBox;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 332
    return-void
.end method
