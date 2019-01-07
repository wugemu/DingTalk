.class public final Llhu;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llhu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Llgv;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Llgv;ZI)V
    .locals 0
    .param p1, "scheduler"    # Llgv;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I

    .prologue
    .line 59
    .local p0, "this":Llhu;, "Llhu<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Llhu;->a:Llgv;

    .line 61
    iput-boolean p2, p0, Llhu;->b:Z

    .line 62
    if-lez p3, :cond_0

    .end local p3    # "bufferSize":I
    :goto_0
    iput p3, p0, Llhu;->c:I

    .line 63
    return-void

    .line 62
    .restart local p3    # "bufferSize":I
    :cond_0
    sget p3, Llin;->b:I

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 40
    .local p0, "this":Llhu;, "Llhu<TT;>;"
    check-cast p1, Llgy;

    .line 1067
    iget-object v0, p0, Llhu;->a:Llgv;

    instance-of v0, v0, Llic;

    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-object p1

    .line 1070
    :cond_1
    iget-object v0, p0, Llhu;->a:Llgv;

    instance-of v0, v0, Llih;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Llhu$a;

    iget-object v1, p0, Llhu;->a:Llgv;

    iget-boolean v2, p0, Llhu;->b:Z

    iget v3, p0, Llhu;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Llhu$a;-><init>(Llgv;Llgy;ZI)V

    .line 1137
    iget-object v1, v0, Llhu$a;->a:Llgy;

    .line 1139
    new-instance v2, Llhu$a$1;

    invoke-direct {v2, v0}, Llhu$a$1;-><init>(Llhu$a;)V

    invoke-virtual {v1, v2}, Llgy;->a(Llgu;)V

    .line 1150
    iget-object v2, v0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v1, v2}, Llgy;->a(Llgz;)V

    .line 1151
    invoke-virtual {v1, v0}, Llgy;->a(Llgz;)V

    move-object p1, v0

    .line 40
    goto :goto_0
.end method
