.class public final Lfle$1;
.super Ljava/lang/Object;
.source "CustomEntryConfigDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfle;


# direct methods
.method public constructor <init>(Lfle;)V
    .locals 0
    .param p1, "this$0"    # Lfle;

    .prologue
    .line 63
    iput-object p1, p0, Lfle$1;->a:Lfle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lfle$1;->a:Lfle;

    invoke-static {v0}, Lfle;->a(Lfle;)V

    .line 68
    return-void
.end method
