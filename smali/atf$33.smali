.class public final Latf$33;
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
    .line 603
    iput-object p1, p0, Latf$33;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 606
    iget-object v0, p0, Latf$33;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    .line 2150
    invoke-static {}, Lare;->a()Lare;

    move-result-object v0

    .line 2376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lare;->b(Lcom/alibaba/wukong/Callback;)V

    .line 607
    return-void
.end method
