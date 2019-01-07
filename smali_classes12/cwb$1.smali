.class final Lcwb$1;
.super Ljava/lang/Object;
.source "GroupRingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

.field final synthetic b:Lcwb;


# direct methods
.method constructor <init>(Lcwb;Lcom/alibaba/android/dingtalkim/models/GroupRingObject;)V
    .locals 0
    .param p1, "this$0"    # Lcwb;

    .prologue
    .line 73
    iput-object p1, p0, Lcwb$1;->b:Lcwb;

    iput-object p2, p0, Lcwb$1;->a:Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcwb$1;->b:Lcwb;

    invoke-static {v0}, Lcwb;->a(Lcwb;)Lear;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcwb$1;->b:Lcwb;

    invoke-static {v0}, Lcwb;->a(Lcwb;)Lear;

    move-result-object v0

    iget-object v1, p0, Lcwb$1;->a:Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    invoke-interface {v0, v1}, Lear;->a(Lcom/alibaba/android/dingtalkim/models/GroupRingObject;)V

    .line 79
    :cond_0
    return-void
.end method
