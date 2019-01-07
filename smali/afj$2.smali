.class public final Lafj$2;
.super Ljava/lang/Object;
.source "DragControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafj;


# direct methods
.method public constructor <init>(Lafj;)V
    .locals 0
    .param p1, "this$0"    # Lafj;

    .prologue
    .line 136
    iput-object p1, p0, Lafj$2;->a:Lafj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 139
    iget-object v1, p0, Lafj$2;->a:Lafj;

    invoke-static {v1}, Lafj;->c(Lafj;)Lcom/alibaba/alimei/mail/widget/DragContainer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lafj$2;->a:Lafj;

    invoke-static {v1}, Lafj;->d(Lafj;)V

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lafj$2;->a:Lafj;

    invoke-static {v1}, Lafj;->c(Lafj;)Lcom/alibaba/alimei/mail/widget/DragContainer;

    move-result-object v1

    invoke-static {}, Lafj;->a()Lafj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/DragContainer;->setDispatchTouchEventListener(Lafj;)V

    .line 144
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 145
    .local v0, "location":[I
    iget-object v1, p0, Lafj$2;->a:Lafj;

    invoke-static {v1}, Lafj;->c(Lafj;)Lcom/alibaba/alimei/mail/widget/DragContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/DragContainer;->getLocationOnScreen([I)V

    .line 146
    iget-object v1, p0, Lafj$2;->a:Lafj;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lafj;->a(Lafj;F)F

    .line 147
    iget-object v1, p0, Lafj$2;->a:Lafj;

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lafj;->b(Lafj;F)F

    goto :goto_0
.end method
