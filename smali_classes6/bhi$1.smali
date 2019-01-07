.class final Lbhi$1;
.super Ljava/lang/Object;
.source "DingMeetingMinutesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lbhi;


# direct methods
.method constructor <init>(Lbhi;JJ)V
    .locals 0
    .param p1, "this$0"    # Lbhi;

    .prologue
    .line 55
    iput-object p1, p0, Lbhi$1;->c:Lbhi;

    iput-wide p2, p0, Lbhi$1;->a:J

    iput-wide p4, p0, Lbhi$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lbhi$1;->c:Lbhi;

    invoke-static {v0}, Lbhi;->a(Lbhi;)Lbgz;

    move-result-object v0

    iget-wide v2, p0, Lbhi$1;->a:J

    iget-wide v4, p0, Lbhi$1;->b:J

    invoke-interface {v0, v2, v3, v4, v5}, Lbgz;->a(JJ)Z

    .line 59
    iget-object v0, p0, Lbhi$1;->c:Lbhi;

    iget-object v1, p0, Lbhi$1;->c:Lbhi;

    invoke-static {v1}, Lbhi;->a(Lbhi;)Lbgz;

    move-result-object v1

    iget-wide v2, p0, Lbhi$1;->a:J

    invoke-interface {v1, v2, v3}, Lbgz;->a(J)Lbfv;

    move-result-object v1

    invoke-static {v0, v1}, Lbhi;->a(Lbhi;Lbfv;)V

    .line 60
    return-void
.end method
