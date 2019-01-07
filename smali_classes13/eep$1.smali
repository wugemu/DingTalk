.class public final Leep$1;
.super Ljava/lang/Object;
.source "OAExpandHeaderDelegate.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leep;


# direct methods
.method public constructor <init>(Leep;)V
    .locals 0
    .param p1, "this$0"    # Leep;

    .prologue
    .line 109
    iput-object p1, p0, Leep$1;->a:Leep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v1, p0, Leep$1;->a:Leep;

    invoke-static {v1}, Leep;->a(Leep;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Leep$1;->a:Leep;

    invoke-static {v1}, Leep;->a(Leep;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Leep$1;->a:Leep;

    invoke-static {v1}, Leep;->a(Leep;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Ledz$e;->dot_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Leep$1;->a:Leep;

    invoke-static {v1}, Leep;->a(Leep;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 117
    iget-object v1, p0, Leep$1;->a:Leep;

    invoke-static {v1}, Leep;->a(Leep;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Ledz$e;->dot_focused:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
