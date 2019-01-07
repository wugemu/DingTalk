.class public final Lbbp$63;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 518
    iput-object p1, p0, Lbbp$63;->a:Lbbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lbbp$63;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    invoke-virtual {v0}, Lbbo;->b()V

    .line 522
    return-void
.end method
