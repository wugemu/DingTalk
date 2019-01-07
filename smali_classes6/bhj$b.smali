.class final Lbhj$b;
.super Ljava/lang/Object;
.source "DingPegDraftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lbhj;


# direct methods
.method private constructor <init>(Lbhj;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lbhj$b;->a:Lbhj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbhj;B)V
    .locals 0
    .param p1, "x0"    # Lbhj;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lbhj$b;-><init>(Lbhj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 125
    invoke-static {}, Lbhj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lbhj$b$1;

    invoke-direct {v1, p0}, Lbhj$b$1;-><init>(Lbhj$b;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method
