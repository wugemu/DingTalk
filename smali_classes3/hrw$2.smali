.class public final Lhrw$2;
.super Ljava/lang/Object;
.source "PopupDropListManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhrw$b;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lhrw;


# direct methods
.method public constructor <init>(Lhrw;Lhrw$b;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lhrw;

    .prologue
    .line 80
    iput-object p1, p0, Lhrw$2;->c:Lhrw;

    iput-object p2, p0, Lhrw$2;->a:Lhrw$b;

    iput-object p3, p0, Lhrw$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    .line 84
    sget v2, Lhdn$h;->drop_item_checked:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "temp":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .end local v1    # "temp":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lhrw$2;->c:Lhrw;

    invoke-static {v2}, Lhrw;->a(Lhrw;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lhrw$2;->c:Lhrw;

    invoke-static {v2}, Lhrw;->a(Lhrw;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 94
    :cond_1
    iget-object v2, p0, Lhrw$2;->a:Lhrw$b;

    if-nez v2, :cond_2

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v2, p0, Lhrw$2;->b:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrv;

    .line 99
    .local v0, "item":Lhrv;
    iget-object v2, p0, Lhrw$2;->a:Lhrw$b;

    invoke-interface {v2, v0}, Lhrw$b;->a(Lhrv;)V

    goto :goto_0
.end method
