.class final Lejp$3;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejp;


# direct methods
.method constructor <init>(Lejp;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 347
    iput-object p1, p0, Lejp$3;->a:Lejp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    iget-object v0, p0, Lejp$3;->a:Lejp;

    iget-object v1, p0, Lejp$3;->a:Lejp;

    .line 1048
    iget-object v1, v1, Lejp;->i:Landroid/view/View;

    .line 350
    new-instance v2, Lejp$3$1;

    invoke-direct {v2, p0}, Lejp$3$1;-><init>(Lejp$3;)V

    invoke-static {v0, v1, v2}, Lejp;->a(Lejp;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    return-void
.end method
