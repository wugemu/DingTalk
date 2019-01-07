.class final Lake$1;
.super Ljava/lang/Object;
.source "UTDefaultConfMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lake;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lake;


# direct methods
.method constructor <init>(Lake;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lake$1;->a:Lake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lake$1;->a:Lake;

    invoke-virtual {v0}, Lake;->a()V

    .line 17
    iget-object v0, p0, Lake$1;->a:Lake;

    invoke-virtual {v0}, Lake;->b()V

    .line 18
    const-string/jumbo v0, "0"

    invoke-static {v0}, Laka;->b(Ljava/lang/String;)V

    .line 19
    return-void
.end method
