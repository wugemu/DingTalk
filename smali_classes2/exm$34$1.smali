.class final Lexm$34$1;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lexm$34;


# direct methods
.method constructor <init>(Lexm$34;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lexm$34;

    .prologue
    .line 2349
    iput-object p1, p0, Lexm$34$1;->b:Lexm$34;

    iput-object p2, p0, Lexm$34$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2352
    iget-object v0, p0, Lexm$34$1;->b:Lexm$34;

    iget-object v0, v0, Lexm$34;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexm$34$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Ljava/util/List;)V

    .line 2353
    return-void
.end method
