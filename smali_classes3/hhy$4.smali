.class public final Lhhy$4;
.super Ljava/lang/Object;
.source "HpmAccessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhy;


# direct methods
.method public constructor <init>(Lhhy;)V
    .locals 0
    .param p1, "this$0"    # Lhhy;

    .prologue
    .line 327
    iput-object p1, p0, Lhhy$4;->a:Lhhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lhhy$4;->a:Lhhy;

    invoke-static {v0}, Lhhy;->a(Lhhy;)V

    .line 338
    return-void
.end method
