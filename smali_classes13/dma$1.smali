.class public final Ldma$1;
.super Ljava/lang/Object;
.source "MarkdownReplyUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlz;


# direct methods
.method public constructor <init>(Ldlz;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Ldma$1;->a:Ldlz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Ldma$1;->a:Ldlz;

    .line 1035
    iget-object v1, v0, Ldlz;->h:Ldlz$a;

    if-eqz v1, :cond_0

    .line 1036
    iget-object v0, v0, Ldlz;->h:Ldlz$a;

    invoke-interface {v0}, Ldlz$a;->a()V

    .line 181
    :cond_0
    return-void
.end method
