.class final Lead$1$1;
.super Ljava/lang/Object;
.source "RecruitmentHrHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lead$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lead$1;


# direct methods
.method constructor <init>(Lead$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lead$1;

    .prologue
    .line 80
    iput-object p1, p0, Lead$1$1;->b:Lead$1;

    iput-object p2, p0, Lead$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lead$1$1;->b:Lead$1;

    iget-object v0, v0, Lead$1;->a:Lead;

    iget-object v0, v0, Lead;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lead$1$1;->b:Lead$1;

    iget-object v0, v0, Lead$1;->a:Lead;

    iget-object v1, p0, Lead$1$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lead;->b(Lead;Ljava/util/List;)V

    .line 86
    :cond_0
    return-void
.end method
