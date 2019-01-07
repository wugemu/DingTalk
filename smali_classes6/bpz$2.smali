.class final Lbpz$2;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbpz;


# direct methods
.method constructor <init>(Lbpz;)V
    .locals 0
    .param p1, "this$0"    # Lbpz;

    .prologue
    .line 114
    iput-object p1, p0, Lbpz$2;->a:Lbpz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbpz$2;->a:Lbpz;

    iget-object v0, v0, Lbpz;->c:Lbpv;

    invoke-interface {v0}, Lbpv;->a()V

    .line 118
    return-void
.end method
