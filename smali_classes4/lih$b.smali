.class final Llih$b;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Llih$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Llhf;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method constructor <init>(Llhf;Ljava/lang/Long;I)V
    .locals 0
    .param p1, "action"    # Llhf;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Llih$b;->a:Llhf;

    .line 109
    iput-object p2, p0, Llih$b;->b:Ljava/lang/Long;

    .line 110
    iput p3, p0, Llih$b;->c:I

    .line 111
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    check-cast p1, Llih$b;

    .line 1115
    iget-object v0, p0, Llih$b;->b:Ljava/lang/Long;

    iget-object v1, p1, Llih$b;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 1116
    if-nez v0, :cond_0

    .line 1117
    iget v0, p0, Llih$b;->c:I

    iget v1, p1, Llih$b;->c:I

    invoke-static {v0, v1}, Llih;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method
