.class final Lapi$6;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Laox$a;


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
    .line 109
    iput-object p1, p0, Lapi$6;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "selectedDateMillis"    # J

    .prologue
    .line 112
    iget-object v0, p0, Lapi$6;->a:Lapi;

    .line 1051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 112
    invoke-interface {v0, p1, p2}, Laph$b;->a(J)V

    .line 113
    return-void
.end method
