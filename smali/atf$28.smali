.class public final Latf$28;
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Latf;


# direct methods
.method public constructor <init>(Latf;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 565
    iput-object p1, p0, Latf$28;->b:Latf;

    iput-object p2, p0, Latf$28;->a:Lcom/alibaba/wukong/Callback;

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
    .line 568
    iget-object v0, p0, Latf$28;->b:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    iget-object v0, p0, Latf$28;->a:Lcom/alibaba/wukong/Callback;

    .line 2125
    invoke-static {}, Lare;->a()Lare;

    move-result-object v1

    invoke-virtual {v1, v0}, Lare;->a(Lcom/alibaba/wukong/Callback;)V

    .line 569
    return-void
.end method
