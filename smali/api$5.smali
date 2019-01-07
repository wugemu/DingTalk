.class final Lapi$5;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Laoy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 102
    iput-object p1, p0, Lapi$5;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lapi$5;->a:Lapi;

    .line 1051
    iget-object v0, v0, Lapi;->e:Larm;

    .line 105
    invoke-interface {v0, p1, p2}, Larm;->c(J)Z

    move-result v0

    return v0
.end method
