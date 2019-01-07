.class final Lapu$2;
.super Lbzd;
.source "SystemEventDetailActivityPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapu;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapu;


# direct methods
.method constructor <init>(Lapu;)V
    .locals 0
    .param p1, "this$0"    # Lapu;

    .prologue
    .line 139
    iput-object p1, p0, Lapu$2;->a:Lapu;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lapu$2;->a:Lapu;

    invoke-static {v0}, Lapu;->d(Lapu;)Lcom/alibaba/android/calendar/data/object/SystemEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lapu$2;->a:Lapu;

    iget-object v1, p0, Lapu$2;->a:Lapu;

    invoke-static {v1}, Lapu;->b(Lapu;)Lapt$b;

    move-result-object v1

    invoke-interface {v1}, Lapt$b;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lapu$2;->a:Lapu;

    invoke-static {v2}, Lapu;->d(Lapu;)Lcom/alibaba/android/calendar/data/object/SystemEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEventId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lapu;->a(Lapu;Landroid/app/Activity;J)V

    .line 147
    invoke-static {}, Lavw;->a()V

    goto :goto_0
.end method
