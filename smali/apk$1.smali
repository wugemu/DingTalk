.class final Lapk$1;
.super Ljava/lang/Object;
.source "CalendarShareReceiverDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapk;->a(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapk;


# direct methods
.method constructor <init>(Lapk;)V
    .locals 0
    .param p1, "this$0"    # Lapk;

    .prologue
    .line 108
    iput-object p1, p0, Lapk$1;->a:Lapk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lapk$1;->a:Lapk;

    .line 1034
    iget-object v0, v0, Lapk;->a:Lapj$b;

    .line 111
    invoke-interface {v0}, Lapj$b;->b()V

    .line 112
    return-void
.end method
