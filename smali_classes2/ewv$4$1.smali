.class final Lewv$4$1;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv$4;->a(Lied$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv$4;


# direct methods
.method constructor <init>(Lewv$4;)V
    .locals 0
    .param p1, "this$1"    # Lewv$4;

    .prologue
    .line 328
    iput-object p1, p0, Lewv$4$1;->a:Lewv$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lewv$4$1;->a:Lewv$4;

    iget-object v0, v0, Lewv$4;->a:Lewv;

    invoke-static {v0}, Lewv;->c(Lewv;)V

    .line 332
    return-void
.end method
