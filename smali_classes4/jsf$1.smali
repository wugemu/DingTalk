.class final Ljsf$1;
.super Ljava/lang/Object;
.source "WXAppInstance.java"

# interfaces
.implements Ljpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljsf;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljsf;


# direct methods
.method constructor <init>(Ljsf;)V
    .locals 0
    .param p1, "this$0"    # Ljsf;

    .prologue
    .line 71
    iput-object p1, p0, Ljsf$1;->a:Ljsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 75
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljsf$1;->a:Ljsf;

    invoke-static {v0}, Ljsf;->a(Ljsf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljsf$1;->a:Ljsf;

    invoke-static {v0}, Ljsf;->a(Ljsf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Ljsf$1;->a:Ljsf;

    invoke-static {v0}, Ljsf;->a(Ljsf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpm;

    invoke-virtual {v0, p2}, Ljpm;->a(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
