.class final Ldgj$3$1;
.super Ljava/lang/Object;
.source "ChatListDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgj$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldgj$3;


# direct methods
.method constructor <init>(Ldgj$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ldgj$3;

    .prologue
    .line 167
    iput-object p1, p0, Ldgj$3$1;->c:Ldgj$3;

    iput-object p2, p0, Ldgj$3$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldgj$3$1;->b:Ljava/lang/String;

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
    .line 170
    iget-object v0, p0, Ldgj$3$1;->c:Ldgj$3;

    iget-object v0, v0, Ldgj$3;->b:Ldgj;

    .line 1050
    iget-object v0, v0, Ldgj;->b:Ldgi$b;

    .line 170
    invoke-interface {v0}, Ldgi$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Ldgj$3$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Ldgj$3$1;->c:Ldgj$3;

    iget-object v0, v0, Ldgj$3;->b:Ldgj;

    iget-object v1, p0, Ldgj$3$1;->a:Ljava/lang/String;

    .line 2050
    iput-object v1, v0, Ldgj;->d:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Ldgj$3$1;->c:Ldgj$3;

    iget-object v0, v0, Ldgj$3;->b:Ldgj;

    .line 3050
    iget-object v0, v0, Ldgj;->b:Ldgi$b;

    .line 175
    iget-object v1, p0, Ldgj$3$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldgi$b;->a(Ljava/lang/String;)V

    .line 179
    :goto_1
    iget-object v0, p0, Ldgj$3$1;->c:Ldgj$3;

    iget-object v0, v0, Ldgj$3;->b:Ldgj;

    .line 4050
    iget-object v0, v0, Ldgj;->b:Ldgi$b;

    .line 179
    invoke-interface {v0}, Ldgi$b;->H_()V

    goto :goto_0

    .line 177
    :cond_1
    sget v0, Lctk$i;->dt_save_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1
.end method
