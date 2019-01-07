.class final Ldvv$1;
.super Ljava/lang/Object;
.source "OneBoxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvv;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Ldvv;


# direct methods
.method constructor <init>(Ldvv;Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Ldvv;

    .prologue
    .line 188
    .local p0, "this":Ldvv$1;, "Ldvv$1;"
    iput-object p1, p0, Ldvv$1;->d:Ldvv;

    iput-object p2, p0, Ldvv$1;->a:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;

    iput-object p3, p0, Ldvv$1;->b:Ljava/lang/Object;

    iput p4, p0, Ldvv$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    .local p0, "this":Ldvv$1;, "Ldvv$1;"
    iget-object v0, p0, Ldvv$1;->a:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;

    iget-object v1, p0, Ldvv$1;->b:Ljava/lang/Object;

    iget v2, p0, Ldvv$1;->c:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 192
    return-void
.end method
