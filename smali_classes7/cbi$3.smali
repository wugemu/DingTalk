.class final Lcbi$3;
.super Ljava/lang/Object;
.source "UnSendRedPacketsMessageManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcbi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcbi$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbi;


# direct methods
.method constructor <init>(Lcbi;)V
    .locals 0
    .param p1, "this$0"    # Lcbi;

    .prologue
    .line 114
    iput-object p1, p0, Lcbi$3;->a:Lcbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    check-cast p1, Lcbi$a;

    check-cast p2, Lcbi$a;

    .line 1117
    iget-wide v0, p2, Lcbi$a;->c:J

    iget-wide v2, p1, Lcbi$a;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 114
    return v0
.end method
