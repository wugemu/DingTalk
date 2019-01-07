.class final Lbhi$2;
.super Ljava/lang/Object;
.source "DingMeetingMinutesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi;->a(Lbfv;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfv;

.field final synthetic b:Z

.field final synthetic c:Lbhi;


# direct methods
.method constructor <init>(Lbhi;Lbfv;Z)V
    .locals 0
    .param p1, "this$0"    # Lbhi;

    .prologue
    .line 75
    iput-object p1, p0, Lbhi$2;->c:Lbhi;

    iput-object p2, p0, Lbhi$2;->a:Lbfv;

    iput-boolean p3, p0, Lbhi$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lbhi$2;->c:Lbhi;

    invoke-static {v0}, Lbhi;->a(Lbhi;)Lbgz;

    move-result-object v0

    iget-object v1, p0, Lbhi$2;->a:Lbfv;

    invoke-interface {v0, v1}, Lbgz;->a(Lbfv;)Z

    .line 80
    iget-boolean v0, p0, Lbhi$2;->b:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lbhi$2;->c:Lbhi;

    iget-object v1, p0, Lbhi$2;->a:Lbfv;

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Lbfv;)V

    .line 83
    :cond_0
    return-void
.end method
