.class final Leli$3;
.super Ljava/lang/Object;
.source "AsyncTaskLauncher.java"

# interfaces
.implements Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leli;


# direct methods
.method constructor <init>(Leli;)V
    .locals 0
    .param p1, "this$0"    # Leli;

    .prologue
    .line 88
    iput-object p1, p0, Leli$3;->a:Leli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Leli$3;->a:Leli;

    .line 1033
    iget-boolean v0, v0, Leli;->a:Z

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Leli$3;->a:Leli;

    .line 2033
    invoke-virtual {v0}, Leli;->b()V

    .line 94
    :cond_0
    return-void
.end method
