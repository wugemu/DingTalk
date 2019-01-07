.class final Lham$1;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lham;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lham;


# direct methods
.method constructor <init>(Lham;)V
    .locals 0
    .param p1, "this$0"    # Lham;

    .prologue
    .line 45
    iput-object p1, p0, Lham$1;->a:Lham;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lham$1;->a:Lham;

    invoke-static {v0}, Lham;->a(Lham;)V

    .line 49
    return-void
.end method
