.class final Larl$3$1;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Larl$3;


# direct methods
.method constructor <init>(Larl$3;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Larl$3;

    .prologue
    .line 404
    iput-object p1, p0, Larl$3$1;->b:Larl$3;

    iput-object p2, p0, Larl$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 408
    const-string/jumbo v0, "pref_key_calendar_current_language"

    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Larl$3$1;->b:Larl$3;

    iget-object v0, v0, Larl$3;->b:Larl;

    iget-object v1, p0, Larl$3$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Larl;->a(Larl;Ljava/util/List;)V

    .line 410
    iget-object v0, p0, Larl$3$1;->b:Larl$3;

    iget-object v0, v0, Larl$3;->b:Larl;

    iget-object v1, p0, Larl$3$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Larl;->b(Larl;Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Larl$3$1;->b:Larl$3;

    iget-object v0, v0, Larl$3;->b:Larl;

    iget-object v1, p0, Larl$3$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Larl;->c(Larl;Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Larl$3$1;->b:Larl$3;

    iget-object v0, v0, Larl$3;->b:Larl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Larl;->a(Larl;Z)Z

    .line 414
    iget-object v0, p0, Larl$3$1;->b:Larl$3;

    iget-object v0, v0, Larl$3;->b:Larl;

    invoke-static {v0}, Larl;->a(Larl;)V

    .line 415
    iget-object v0, p0, Larl$3$1;->b:Larl$3;

    iget-object v0, v0, Larl$3;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Larl$3$1;->b:Larl$3;

    iget-object v1, v1, Larl$3;->b:Larl;

    invoke-static {v1}, Larl;->e(Larl;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 416
    return-void
.end method
