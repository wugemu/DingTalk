.class public final Latf$26;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Latf;


# direct methods
.method public constructor <init>(Latf;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 547
    iput-object p1, p0, Latf$26;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Latf$26;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    .line 2112
    iget-object v0, v0, Lapw;->a:Latu;

    invoke-interface {v0}, Latu;->a()V

    .line 551
    return-void
.end method
