.class final Lckv$a;
.super Ljava/lang/Object;
.source "LunarFestivalInfoPreloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lckv;


# direct methods
.method private constructor <init>(Lckv;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lckv$a;->a:Lckv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lckv;B)V
    .locals 0
    .param p1, "x0"    # Lckv;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lckv$a;-><init>(Lckv;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    iget-object v2, p0, Lckv$a;->a:Lckv;

    invoke-static {v2}, Lckv;->b(Lckv;)I

    move-result v1

    .line 65
    .local v1, "year":I
    iget-object v2, p0, Lckv$a;->a:Lckv;

    invoke-static {v2}, Lckv;->c(Lckv;)I

    move-result v0

    .line 66
    .local v0, "month":I
    invoke-static {}, Lckv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lckv$a$1;

    invoke-direct {v3, p0, v1, v0}, Lckv$a$1;-><init>(Lckv$a;II)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method
