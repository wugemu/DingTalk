.class final Lalu$1;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalu;


# direct methods
.method constructor <init>(Lalu;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lalu$1;->a:Lalu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lalu$1;->a:Lalu;

    invoke-virtual {v0}, Lalu;->d()V

    .line 39
    return-void
.end method
