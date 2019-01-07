.class public final Latf$30;
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
    .line 584
    iput-object p1, p0, Latf$30;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 587
    iget-object v0, p0, Latf$30;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    .line 2141
    invoke-static {}, Lare;->a()Lare;

    move-result-object v0

    .line 2351
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Lare$7;

    invoke-direct {v2, v0}, Lare$7;-><init>(Lare;)V

    invoke-virtual {v1, v2}, Latf;->b(Ljava/lang/Runnable;)V

    .line 588
    return-void
.end method
