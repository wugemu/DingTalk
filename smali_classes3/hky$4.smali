.class final Lhky$4;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhky;->a(Lhjq;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhjq;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lhky;


# direct methods
.method constructor <init>(Lhky;Lhjq;JI)V
    .locals 1
    .param p1, "this$0"    # Lhky;

    .prologue
    .line 729
    iput-object p1, p0, Lhky$4;->d:Lhky;

    iput-object p2, p0, Lhky$4;->a:Lhjq;

    iput-wide p3, p0, Lhky$4;->b:J

    iput p5, p0, Lhky$4;->c:I

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
    .line 732
    iget-object v0, p0, Lhky$4;->d:Lhky;

    iget-object v1, p0, Lhky$4;->a:Lhjq;

    invoke-static {v0, v1}, Lhky;->a(Lhky;Lhjq;)Lhjq;

    .line 733
    invoke-static {}, Lhqr;->a()Lhqr;

    move-result-object v0

    iget-object v1, p0, Lhky$4;->a:Lhjq;

    new-instance v2, Lhky$4$1;

    invoke-direct {v2, p0}, Lhky$4$1;-><init>(Lhky$4;)V

    invoke-virtual {v0, v1, v2}, Lhqr;->a(Lhjq;Lcma;)V

    .line 816
    return-void
.end method
