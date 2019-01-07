.class final Lgsw$4$2$2;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsw$4$2;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgsw$4$2;


# direct methods
.method constructor <init>(Lgsw$4$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lgsw$4$2;

    .prologue
    .line 451
    iput-object p1, p0, Lgsw$4$2$2;->c:Lgsw$4$2;

    iput-object p2, p0, Lgsw$4$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lgsw$4$2$2;->b:Ljava/lang/String;

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
    .line 454
    iget-object v0, p0, Lgsw$4$2$2;->c:Lgsw$4$2;

    iget-object v0, v0, Lgsw$4$2;->c:Lgsw$4;

    iget-object v0, v0, Lgsw$4;->f:Lgsw;

    .line 1048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 454
    invoke-interface {v0}, Lgsv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecordPresenter"

    const-string/jumbo v2, "view finish, startRecord fail ignore callback"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lgsw$4$2$2;->c:Lgsw$4$2;

    iget-object v0, v0, Lgsw$4$2;->c:Lgsw$4;

    iget-object v0, v0, Lgsw$4;->f:Lgsw;

    .line 2048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 459
    iget-object v1, p0, Lgsw$4$2$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lgsw$4$2$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgsv$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
