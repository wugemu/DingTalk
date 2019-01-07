.class public final Litl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Litk;


# direct methods
.method public constructor <init>(Litk;)V
    .locals 0

    iput-object p1, p0, Litl;->a:Litk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Litl;->a:Litk;

    .line 1000
    invoke-virtual {v0}, Litk;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Litm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
