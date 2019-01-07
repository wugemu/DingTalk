.class final Lcom/alibaba/dingtalk/share/share/view/ShareActionList$1;
.super Ljava/lang/Object;
.source "ShareActionList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/view/ShareActionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 167
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    invoke-static {v1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->a(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 168
    .local v0, "viewItem":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    invoke-static {v1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->b(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 169
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->dismiss()V

    .line 170
    return-void
.end method
