.class final Lgtz$1;
.super Ljava/lang/Object;
.source "OrgHomePageHolder.java"

# interfaces
.implements Lgue$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgtz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgtz;


# direct methods
.method constructor <init>(Lgtz;)V
    .locals 0
    .param p1, "this$0"    # Lgtz;

    .prologue
    .line 148
    iput-object p1, p0, Lgtz$1;->a:Lgtz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3
    .param p1, "progress"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 151
    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, p1

    add-float v0, v2, v1

    .line 152
    .local v0, "scale":F
    iget-object v1, p0, Lgtz$1;->a:Lgtz;

    iget-object v1, v1, Lgtz;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 153
    iget-object v1, p0, Lgtz$1;->a:Lgtz;

    iget-object v1, v1, Lgtz;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 154
    iget-object v1, p0, Lgtz$1;->a:Lgtz;

    invoke-static {v1}, Lgtz;->a(Lgtz;)Lgtz$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lgtz$1;->a:Lgtz;

    invoke-static {v1}, Lgtz;->a(Lgtz;)Lgtz$a;

    move-result-object v1

    invoke-interface {v1, p1}, Lgtz$a;->a(F)V

    .line 156
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lgtz$1;->a:Lgtz;

    invoke-static {v1}, Lgtz;->a(Lgtz;)Lgtz$a;

    move-result-object v1

    invoke-interface {v1}, Lgtz$a;->a()V

    .line 160
    :cond_0
    return-void
.end method
