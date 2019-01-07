.class final Lfex$2;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfex;


# direct methods
.method constructor <init>(Lfex;)V
    .locals 0
    .param p1, "this$0"    # Lfex;

    .prologue
    .line 114
    iput-object p1, p0, Lfex$2;->a:Lfex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lfex$2;->a:Lfex;

    iget-object v0, v0, Lfex;->c:Lfet;

    invoke-interface {v0}, Lfet;->a()V

    .line 118
    return-void
.end method
