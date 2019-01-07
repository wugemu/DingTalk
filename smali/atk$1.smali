.class final Latk$1;
.super Lbzd;
.source "SystemCalendarEventProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latk;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Latk;


# direct methods
.method constructor <init>(Latk;JJ)V
    .locals 0
    .param p1, "this$0"    # Latk;

    .prologue
    .line 68
    iput-object p1, p0, Latk$1;->c:Latk;

    iput-wide p2, p0, Latk$1;->a:J

    iput-wide p4, p0, Latk$1;->b:J

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Latk$1;->c:Latk;

    iget-wide v2, p0, Latk$1;->a:J

    iget-wide v4, p0, Latk$1;->b:J

    .line 1035
    invoke-virtual {v0, v2, v3, v4, v5}, Latk;->b(JJ)V

    .line 72
    return-void
.end method
