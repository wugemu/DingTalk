.class final Lewv$3$3;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv$3;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv$3;


# direct methods
.method constructor <init>(Lewv$3;)V
    .locals 0
    .param p1, "this$1"    # Lewv$3;

    .prologue
    .line 275
    iput-object p1, p0, Lewv$3$3;->a:Lewv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lewv$3$3;->a:Lewv$3;

    iget-object v0, v0, Lewv$3;->a:Lewv;

    invoke-static {v0}, Lewv;->c(Lewv;)V

    .line 279
    return-void
.end method
