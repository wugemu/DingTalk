.class final Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;
.super Ljava/lang/Object;
.source "LabelColorSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->c:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    iput p2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->a:I

    iput p3, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->b:I

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
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->c:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;)I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->a:I

    if-ne v0, v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->c:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->b(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;)Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->c:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->b(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;)Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->b:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;->a(I)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->c:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    iget v1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;I)I

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;->c:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->notifyDataSetChanged()V

    goto :goto_0
.end method
