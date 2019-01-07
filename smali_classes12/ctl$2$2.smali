.class final Lctl$2$2;
.super Ljava/lang/Object;
.source "RobotConfigPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lctl$2;->onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lctl$2;


# direct methods
.method constructor <init>(Lctl$2;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lctl$2;

    .prologue
    .line 158
    iput-object p1, p0, Lctl$2$2;->c:Lctl$2;

    iput p2, p0, Lctl$2$2;->a:I

    iput-object p3, p0, Lctl$2$2;->b:Ljava/lang/String;

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
    .line 162
    iget v0, p0, Lctl$2$2;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lctl$2$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lctl$2$2;->c:Lctl$2;

    iget-object v0, v0, Lctl$2;->a:Lctl;

    invoke-static {v0}, Lctl;->b(Lctl;)Lctl$a;

    move-result-object v0

    invoke-interface {v0}, Lctl$a;->b()V

    .line 164
    return-void
.end method
