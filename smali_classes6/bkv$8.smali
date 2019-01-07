.class final Lbkv$8;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lbkv$8;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 645
    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lbkv$8;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 649
    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbkv$8;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
