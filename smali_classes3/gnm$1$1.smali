.class final Lgnm$1$1;
.super Ljava/lang/Object;
.source "SpaceMenuSaveToPhoneHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgnm$1;


# direct methods
.method constructor <init>(Lgnm$1;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lgnm$1;

    .prologue
    .line 101
    iput-object p1, p0, Lgnm$1$1;->c:Lgnm$1;

    iput-boolean p2, p0, Lgnm$1$1;->a:Z

    iput-object p3, p0, Lgnm$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 104
    iget-boolean v0, p0, Lgnm$1$1;->a:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnm$1$1;->c:Lgnm$1;

    iget-object v1, v1, Lgnm$1;->a:Landroid/content/Context;

    sget v2, Lfzs$h;->pic_save_success:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnm$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lgnm$1$1;->c:Lgnm$1;

    iget-object v0, v0, Lgnm$1;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_save_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
