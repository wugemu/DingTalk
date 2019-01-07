.class final Lcxd$1$1;
.super Ljava/lang/Object;
.source "RobotMarkdownViewHolder.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcxd$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcxd$1;


# direct methods
.method constructor <init>(Lcxd$1;)V
    .locals 0
    .param p1, "this$1"    # Lcxd$1;

    .prologue
    .line 126
    iput-object p1, p0, Lcxd$1$1;->a:Lcxd$1;

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
    .line 126
    .line 1129
    iget-object v0, p0, Lcxd$1$1;->a:Lcxd$1;

    iget-object v0, v0, Lcxd$1;->a:Lcxd;

    invoke-static {v0}, Lcxd;->a(Lcxd;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    return-void
.end method
