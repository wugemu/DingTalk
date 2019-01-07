.class final Leab$3;
.super Ljava/lang/Object;
.source "PushTaskListHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leab;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leab;


# direct methods
.method constructor <init>(Leab;)V
    .locals 0
    .param p1, "this$0"    # Leab;

    .prologue
    .line 184
    iput-object p1, p0, Leab$3;->a:Leab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v3, p0, Leab$3;->a:Leab;

    iget-object v3, v3, Leab;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v3, p0, Leab$3;->a:Leab;

    invoke-static {v3}, Leab;->a(Leab;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 191
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 193
    .local v2, "lines":I
    if-lez v2, :cond_0

    .line 194
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 196
    .local v0, "ellipsisCount":I
    if-lez v0, :cond_0

    .line 197
    iget-object v3, p0, Leab$3;->a:Leab;

    invoke-static {v3}, Leab;->b(Leab;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
