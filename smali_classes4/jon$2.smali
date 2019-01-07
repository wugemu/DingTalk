.class final Ljon$2;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljon;


# direct methods
.method constructor <init>(Ljon;)V
    .locals 0
    .param p1, "this$0"    # Ljon;

    .prologue
    .line 132
    iput-object p1, p0, Ljon$2;->a:Ljon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Ljon$2;->a:Ljon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljon;->a(Z)V

    .line 136
    return-void
.end method
