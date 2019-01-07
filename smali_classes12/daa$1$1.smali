.class final Ldaa$1$1;
.super Ljava/lang/Object;
.source "UserTextViewHolder.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaa$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldaa$1;


# direct methods
.method constructor <init>(Ldaa$1;)V
    .locals 0
    .param p1, "this$1"    # Ldaa$1;

    .prologue
    .line 120
    iput-object p1, p0, Ldaa$1$1;->a:Ldaa$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    .line 1123
    iget-object v0, p0, Ldaa$1$1;->a:Ldaa$1;

    iget-object v0, v0, Ldaa$1;->a:Ldaa;

    invoke-static {v0}, Ldaa;->a(Ldaa;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    return-void
.end method
