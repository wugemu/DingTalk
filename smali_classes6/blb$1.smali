.class public final Lblb$1;
.super Ljava/lang/Object;
.source "SingleSelectViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lblb;


# direct methods
.method public constructor <init>(Lblb;)V
    .locals 0
    .param p1, "this$0"    # Lblb;

    .prologue
    .line 58
    iput-object p1, p0, Lblb$1;->a:Lblb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 61
    iget-object v1, p0, Lblb$1;->a:Lblb;

    .line 1023
    iget-object v1, v1, Lblb;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .line 61
    if-eqz v1, :cond_1

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "data":Ljava/io/Serializable;
    iget-object v1, p0, Lblb$1;->a:Lblb;

    .line 2023
    iget-object v1, v1, Lblb;->h:Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    .line 63
    if-eqz v1, :cond_0

    iget-object v1, p0, Lblb$1;->a:Lblb;

    .line 3023
    iget-object v1, v1, Lblb;->h:Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    .line 3109
    iget-object v1, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 63
    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lblb$1;->a:Lblb;

    .line 4023
    iget-object v1, v1, Lblb;->h:Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    .line 4109
    iget-object v0, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 66
    :cond_0
    iget-object v1, p0, Lblb$1;->a:Lblb;

    .line 5023
    iget-object v1, v1, Lblb;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .line 66
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a(Ljava/io/Serializable;)V

    .line 68
    .end local v0    # "data":Ljava/io/Serializable;
    :cond_1
    return-void
.end method
