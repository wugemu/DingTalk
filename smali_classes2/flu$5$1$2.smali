.class final Lflu$5$1$2;
.super Ljava/lang/Object;
.source "LocalOrgEmployeeCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflu$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflu$5$1;


# direct methods
.method constructor <init>(Lflu$5$1;)V
    .locals 0
    .param p1, "this$1"    # Lflu$5$1;

    .prologue
    .line 384
    iput-object p1, p0, Lflu$5$1$2;->a:Lflu$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-static {v0}, Lflu;->a(Z)Z

    .line 388
    return-void
.end method
