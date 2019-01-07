.class final Licb$2$1;
.super Ljava/lang/Object;
.source "MessageViewTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Licb$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Licb$2;


# direct methods
.method constructor <init>(Licb$2;)V
    .locals 0
    .param p1, "this$1"    # Licb$2;

    .prologue
    .line 89
    iput-object p1, p0, Licb$2$1;->a:Licb$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Licb$2$1;->a:Licb$2;

    iget-object v0, v0, Licb$2;->a:Licb;

    invoke-virtual {v0}, Licb;->b()V

    .line 93
    return-void
.end method
