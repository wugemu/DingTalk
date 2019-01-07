.class final Lhlq$2;
.super Ljava/lang/Object;
.source "MiniAppTaskManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlq;


# direct methods
.method constructor <init>(Lhlq;)V
    .locals 0
    .param p1, "this$0"    # Lhlq;

    .prologue
    .line 443
    iput-object p1, p0, Lhlq$2;->a:Lhlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lhlq$2;->a:Lhlq;

    invoke-static {v0}, Lhlq;->a(Lhlq;)V

    .line 448
    return-void
.end method

.method public final onEnterForeground()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lhlq$2;->a:Lhlq;

    invoke-static {v0}, Lhlq;->a(Lhlq;)V

    .line 454
    return-void
.end method
