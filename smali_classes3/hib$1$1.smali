.class final Lhib$1$1;
.super Ljava/lang/Object;
.source "HpmDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhib$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhjc;

.field final synthetic b:Lhib$1;


# direct methods
.method constructor <init>(Lhib$1;Lhjc;)V
    .locals 0
    .param p1, "this$1"    # Lhib$1;

    .prologue
    .line 158
    iput-object p1, p0, Lhib$1$1;->b:Lhib$1;

    iput-object p2, p0, Lhib$1$1;->a:Lhjc;

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
    .line 161
    iget-object v0, p0, Lhib$1$1;->b:Lhib$1;

    iget-object v0, v0, Lhib$1;->b:Lhib;

    iget-object v1, p0, Lhib$1$1;->a:Lhjc;

    iget-object v2, p0, Lhib$1$1;->b:Lhib$1;

    iget-boolean v2, v2, Lhib$1;->a:Z

    invoke-static {v0, v1, v2}, Lhib;->a(Lhib;Lhjc;Z)V

    .line 162
    return-void
.end method
