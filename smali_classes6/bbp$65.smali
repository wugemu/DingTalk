.class final Lbbp$65;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbp;


# direct methods
.method constructor <init>(Lbbp;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 536
    iput-object p1, p0, Lbbp$65;->a:Lbbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lbbp$65;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    invoke-virtual {v0}, Lbbo;->d()V

    .line 540
    return-void
.end method
