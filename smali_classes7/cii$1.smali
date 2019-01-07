.class final Lcii$1;
.super Ljava/lang/Object;
.source "SkiDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcii;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcii;


# direct methods
.method constructor <init>(Lcii;)V
    .locals 0
    .param p1, "this$0"    # Lcii;

    .prologue
    .line 114
    iput-object p1, p0, Lcii$1;->a:Lcii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcii$1;->a:Lcii;

    invoke-virtual {v0}, Lcii;->runMethodOnCreate()V

    .line 118
    iget-object v0, p0, Lcii$1;->a:Lcii;

    invoke-static {v0}, Lcii;->access$000(Lcii;)Lcih;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcii$1;->a:Lcii;

    invoke-static {v0}, Lcii;->access$000(Lcii;)Lcih;

    move-result-object v0

    invoke-interface {v0}, Lcih;->applicationRunMethodDone()V

    .line 120
    iget-object v0, p0, Lcii$1;->a:Lcii;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcii;->access$002(Lcii;Lcih;)Lcih;

    .line 122
    :cond_0
    iget-object v0, p0, Lcii$1;->a:Lcii;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcii;->access$102(Lcii;Z)Z

    .line 123
    return-void
.end method
