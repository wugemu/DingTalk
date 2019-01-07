.class final Lfzu$50;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcma;


# direct methods
.method constructor <init>(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 3570
    iput-object p1, p0, Lfzu$50;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lfzu$50;->b:J

    iput-object p4, p0, Lfzu$50;->c:Ljava/lang/String;

    iput-object p5, p0, Lfzu$50;->d:Ljava/lang/String;

    iput-object p6, p0, Lfzu$50;->e:Lcma;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3573
    iget-object v1, p0, Lfzu$50;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lfzu$50;->b:J

    iget-object v4, p0, Lfzu$50;->c:Ljava/lang/String;

    iget-object v5, p0, Lfzu$50;->d:Ljava/lang/String;

    iget-object v6, p0, Lfzu$50;->e:Lcma;

    invoke-static/range {v1 .. v6}, Lfzu;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V

    .line 3574
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3570
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$50;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3582
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 3578
    return-void
.end method
