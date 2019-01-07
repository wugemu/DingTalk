.class final Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;
.super Ljava/lang/Object;
.source "LinearListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->a:I

    .line 148
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->c(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->a:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    .line 154
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->c(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    .line 153
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;->a(I)V

    .line 156
    :cond_0
    return-void
.end method
